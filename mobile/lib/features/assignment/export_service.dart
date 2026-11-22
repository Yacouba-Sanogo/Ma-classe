import 'dart:io';
import 'dart:typed_data';

import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/ui.dart';
import '../../data/repository.dart';

String _yearCell(ResultRow r) => r.year.value == null
    ? '—'
    : '${fmtNum(r.year.value)}${r.year.isComplete ? '' : ' (incomplète)'}';

double? _classAvg(Iterable<double?> v) {
  final x = v.whereType<double>().toList();
  return x.isEmpty ? null : x.reduce((a, b) => a + b) / x.length;
}

class ExportService {
  static List<List<String>> _table(List<ResultRow> rows) => [
        for (final r in rows)
          [
            '${r.student.lastName} ${r.student.firstName}',
            for (final t in r.termAverages) fmtNum(t),
            _yearCell(r),
          ],
        [
          'Moyenne de la classe',
          for (var i = 0; i < 3; i++) fmtNum(_classAvg(rows.map((r) => r.termAverages[i]))),
          fmtNum(_classAvg(rows.map((r) => r.year.value))),
        ],
      ];

  static const _headers = ['Élève', 'Trimestre 1', 'Trimestre 2', 'Trimestre 3', 'Moyenne annuelle'];

  static Future<Uint8List> buildPdf(AssignmentRow a, String yearLabel, List<ResultRow> rows) async {
    final doc = pw.Document();
    doc.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.all(32),
      build: (ctx) => [
        pw.Text('Résultats - ${a.subject.name}',
            style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 4),
        pw.Text('Classe : ${a.classroom.name}   |   Année : $yearLabel'),
        pw.Text('Moyennes sur 20 - édité le ${fmtDate(DateTime.now())}'),
        pw.SizedBox(height: 16),
        pw.TableHelper.fromTextArray(
          headers: _headers,
          data: _table(rows),
          headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
          headerDecoration: const pw.BoxDecoration(color: PdfColors.grey300),
          cellAlignments: {
            for (var i = 1; i < 5; i++) i: pw.Alignment.center,
          },
        ),
      ],
    ));
    return doc.save();
  }

  static Future<void> sharePdf(AssignmentRow a, String yearLabel, List<ResultRow> rows) async {
    final bytes = await buildPdf(a, yearLabel, rows);
    await Printing.sharePdf(
        bytes: bytes, filename: 'resultats_${_slug(a.classroom.name)}_${_slug(a.subject.name)}.pdf');
  }

  static List<int> buildExcel(AssignmentRow a, List<ResultRow> rows) {
    final excel = Excel.createExcel();
    final defaultSheet = excel.getDefaultSheet()!;
    excel.rename(defaultSheet, 'Résultats');
    final sheet = excel['Résultats'];
    sheet.appendRow([TextCellValue('${a.classroom.name} - ${a.subject.name}')]);
    sheet.appendRow([for (final h in _headers) TextCellValue(h)]);
    CellValue? num(double? v) => v == null ? null : DoubleCellValue(double.parse(v.toStringAsFixed(2)));
    for (final r in rows) {
      sheet.appendRow([
        TextCellValue('${r.student.lastName} ${r.student.firstName}'),
        for (final t in r.termAverages) num(t),
        num(r.year.value),
      ]);
    }
    sheet.appendRow([
      TextCellValue('Moyenne de la classe'),
      for (var i = 0; i < 3; i++) num(_classAvg(rows.map((r) => r.termAverages[i]))),
      num(_classAvg(rows.map((r) => r.year.value))),
    ]);
    return excel.encode()!;
  }

  static Future<void> shareExcel(AssignmentRow a, List<ResultRow> rows) async {
    final bytes = buildExcel(a, rows);
    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/resultats_${_slug(a.classroom.name)}_${_slug(a.subject.name)}.xlsx');
    await file.writeAsBytes(bytes, flush: true);
    await SharePlus.instance.share(ShareParams(files: [XFile(file.path)]));
  }

  static String _slug(String s) =>
      s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]+'), '_');
}
