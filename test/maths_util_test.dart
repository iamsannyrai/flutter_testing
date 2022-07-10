import 'package:flutter_test/flutter_test.dart';
import 'package:testing/maths_util.dart';

void main() {
  test('addition of two number', () {
    // arrange
    const int a = 10;
    const int b = 10;

    // act
    final sum = add(a, b);

    //assert
    expect(sum, 20);
  });
}
