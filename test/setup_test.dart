import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = 'KEKW';

  setUp(() {
    data = 'KEKW';
  });

  group('Test String', () {
    test('String first', () {
      data = '$data kekw';
      expect(data, equals('KEKW kekw'));
    });

    test('String second', () {
      data = '$data hehe';
      expect(data, equals('KEKW hehe'));
    });
  });
}
