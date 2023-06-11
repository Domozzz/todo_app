import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FizzBuzz', () {
    test('When input 3 should be return Fizz', () {
      int input = 3;
      final actual = fizzBuzz(input);
      expect(actual, "Fizz");
    });
  });
  test('When input 5 should be return Buzz', () {
    int input = 5;
    final actual = fizzBuzz(input);
    expect(actual, "Buzz");
  });
  test('When input 15 should be return Buzz', () {
    int input = 15;
    final actual = fizzBuzz(input);
    expect(actual, "FizzBuzz");
  });
  test('When input 1 should be return Buzz', () {
    int input = 1;
    final actual = fizzBuzz(input);
    expect(actual, "Tid Lop");
  });
  test('When input -1 should be return Buzz', () {
    int input = -1;
    final actual = fizzBuzz(input);
    expect(actual, "Tid Lop");
  });

  // test('When input 3 and 5 should be return FizzBuzz', () {
  //   int input = 15;
  //   final actual = fizzBuzz(input);
  //   expect(actual, "FizzBuzz");
  // });
}

String fizzBuzz(int input) {
  String result = "";
  if (input % 3 == 0 && input % 5 == 0) return "${result}FizzBuzz";
  if (input % 3 == 0) return "${result}Fizz";
  if (input % 5 == 0) return "${result}Buzz";
  if (input > 0) return "";
  if (input <= 1) return "";
  return result;
}
