import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(53, 97, 11, 22, 10);
  assert(Policy.score(signalcase_1) == 45);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(78, 88, 24, 15, 7);
  assert(Policy.score(signalcase_2) == 71);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(73, 106, 20, 19, 7);
  assert(Policy.score(signalcase_3) == 67);
  assert(Policy.classify(signalcase_3) == 'review');
}
