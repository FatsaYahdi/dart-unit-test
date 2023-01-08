import 'package:test/test.dart';

void main() {
  var data = 'KEKW';

  setUpAll(() {
    print('Start unit test');
  });

  setUp(() {
    data = 'KEKW';
    print(data);
  });

  tearDown(() {
    print(data);
  });

  tearDownAll(() {
    print(data);
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
