import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';

void main() {
  test('initial value is 0', () {
    final counter = Counter();
    expect(counter.value, 0);
  });

  test('value is incremented on invoking increment function', () {
    final counter = Counter();
    counter.increment();
    expect(counter.value, 1);
  });

  test('value is decremented on invoking decrement function', () {
    final counter = Counter();
    counter.decrement();
    expect(counter.value, 1);
  });
}
