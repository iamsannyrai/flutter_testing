import 'package:flutter_test/flutter_test.dart';
import 'package:testing/maths_util.dart';

void main() {
  group('Math Util', () {
    test('addition of two number', () {
      // arrange
      const int a = 10;
      const int b = 10;

      // act
      final result = add(a, b);

      //assert
      expect(result, 20);
    });

    test('subtraction of two number', () {
      // arrange
      const int a = 10;
      const int b = 10;

      // act
      final result = sub(a, b);

      //assert
      expect(result, 0);
    });

    test('multiplication of two number', () {
      // arrange
      const int a = 10;
      const int b = 10;

      // act
      final result = mul(a, b);

      //assert
      expect(result, 100);
    });

    test('division of two number', () {
      // arrange
      const int a = 10;
      const int b = 10;

      // act
      final result = div(a, b);

      //assert
      expect(result, 1);
    });
  });
}
