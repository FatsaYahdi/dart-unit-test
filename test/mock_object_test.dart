import 'package:dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  group('BookService', () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test('save new book must success', () {
      bookService.save('1', 'tutor', 10000);
      verify(bookRepository.save(Book("1", 'tutor', 10000))).called(1);
    });

    test('Find book by id', () {
      when(bookRepository.findById("1")).thenReturn(Book("1", "tutor", 10000));

      var book = bookService.find("1");
      expect(book, equals(Book("1", "tutor", 10000)));

      verify(bookRepository.findById("1")).called(1);
    });

    test('Find book by id khn46', () {
      when(bookRepository.findById(argThat(startsWith('khn')))).thenReturn(Book("khn46", "tutor", 10000));

      var book = bookService.find("khn46");
      expect(book, equals(Book("khn46", "tutor", 10000)));

      verify(bookRepository.findById(any)).called(1);
    });
  });
}
