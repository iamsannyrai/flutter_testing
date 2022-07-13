import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';

void main() {
  group('Counter', () {
    late Counter counter;

    setUp(() {
      counter = Counter();
    });

    test('initial value is 0', () {
      expect(counter.value, 0);
    });

    test('value is incremented on invoking increment function', () {
      counter.increment();
      expect(counter.value, 1);
    });

    test('value is decremented on invoking decrement function', () {
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
