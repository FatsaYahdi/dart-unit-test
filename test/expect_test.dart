import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

void main() {
  test("Test sayHello()", () {
    var response = sayHello('dart');
    expect(response, 'Hello dart');
  });
}
