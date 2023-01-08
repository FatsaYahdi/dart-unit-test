import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test("Test sayHello() with matcher", () {
    expect(sayHello('name'), endsWith('name'));
    expect(sayHello('name'), startsWith('Hello'));
    expect(sayHello('name'), equalsIgnoringCase('hello name'));
    expect(sayHello('name'), isA<String>());
  });

  test('Test Sum', () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(10));
  });
}
