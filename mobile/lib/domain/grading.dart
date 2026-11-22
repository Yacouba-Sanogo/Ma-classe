/// Calculs de moyennes (règles RM-013 à RM-021, section 3.4 des spécifications).
/// Code pur Dart : aucune dépendance Flutter ni base de données.
library;

enum GradeStatus { pending, graded, exempt }

/// Une note d'un élève à une évaluation, avec les paramètres de l'évaluation.
class ScoredEntry {
  const ScoredEntry({
    required this.score,
    required this.maxScore,
    required this.coefficient,
    required this.status,
  });

  final double? score;
  final double maxScore;
  final double coefficient;
  final GradeStatus status;

  bool get counts => status == GradeStatus.graded && score != null;

  double get onTwenty => score! / maxScore * 20;
}

class GradingException implements Exception {
  GradingException(this.message);
  final String message;
  @override
  String toString() => message;
}

/// Valide une note selon RM-013, RM-014 et RM-015.
void validateScore({
  required double score,
  required double maxScore,
  required double coefficient,
}) {
  if (maxScore <= 0) throw GradingException('Le barème doit être positif.');
  if (coefficient <= 0) {
    throw GradingException('Le coefficient doit être strictement positif.');
  }
  if (score < 0 || score > maxScore) {
    throw GradingException('La note doit être comprise entre 0 et $maxScore.');
  }
}

/// Moyenne trimestrielle sur 20, ou `null` si aucune note n'est évaluable.
/// Les notes en attente ou dispensées sont ignorées (jamais assimilées à 0).
double? termAverage(Iterable<ScoredEntry> entries) {
  var weighted = 0.0;
  var coefs = 0.0;
  for (final e in entries.where((e) => e.counts)) {
    weighted += e.onTwenty * e.coefficient;
    coefs += e.coefficient;
  }
  if (coefs == 0) return null;
  return weighted / coefs;
}

class YearAverage {
  const YearAverage(this.value, this.isComplete);

  /// Moyenne des trimestres disponibles (null si aucun).
  final double? value;

  /// Vrai seulement si les trois trimestres sont évaluables.
  final bool isComplete;
}

/// Moyenne annuelle par défaut : moyenne des trois moyennes trimestrielles.
/// Le résultat reste « incomplet » tant que les trois ne sont pas évaluables.
YearAverage yearAverage(List<double?> termAverages) {
  final available = termAverages.whereType<double>().toList();
  if (available.isEmpty) return const YearAverage(null, false);
  final avg = available.reduce((a, b) => a + b) / available.length;
  return YearAverage(avg, termAverages.length == 3 && available.length == 3);
}
