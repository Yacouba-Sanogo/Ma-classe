import 'package:flutter_test/flutter_test.dart';
import 'package:mon_assistant_prof/domain/grading.dart';

ScoredEntry g(double s, double max, double c) => ScoredEntry(
    score: s, maxScore: max, coefficient: c, status: GradeStatus.graded);

void main() {
  test('moyenne trimestrielle pondérée avec barèmes libres', () {
    // 15/20 coef 2 -> 15 ; 8/10 coef 1 -> 16 ; (30 + 16) / 3
    final avg = termAverage([g(15, 20, 2), g(8, 10, 1)])!;
    expect(avg, closeTo(15.3333, 0.001));
  });

  test('notes en attente et dispenses ignorées, absence != 0', () {
    final avg = termAverage([
      g(10, 20, 1),
      const ScoredEntry(
          score: null, maxScore: 20, coefficient: 1, status: GradeStatus.pending),
      const ScoredEntry(
          score: null, maxScore: 20, coefficient: 1, status: GradeStatus.exempt),
    ])!;
    expect(avg, 10);
  });

  test('aucune note évaluable -> null', () {
    expect(termAverage([]), isNull);
  });

  test('moyenne annuelle incomplète tant que 3 trimestres manquent', () {
    final partial = yearAverage([12, 14, null]);
    expect(partial.value, 13);
    expect(partial.isComplete, isFalse);
    final full = yearAverage([12, 14, 16]);
    expect(full.value, 14);
    expect(full.isComplete, isTrue);
  });

  test('validation des notes', () {
    expect(() => validateScore(score: 21, maxScore: 20, coefficient: 1),
        throwsA(isA<GradingException>()));
    expect(() => validateScore(score: 5, maxScore: 0, coefficient: 1),
        throwsA(isA<GradingException>()));
    expect(() => validateScore(score: 5, maxScore: 10, coefficient: 0),
        throwsA(isA<GradingException>()));
    validateScore(score: 10, maxScore: 10, coefficient: 1.5);
  });
}
