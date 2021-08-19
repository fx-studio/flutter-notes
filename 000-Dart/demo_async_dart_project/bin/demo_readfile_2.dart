import 'dart:convert';
import 'dart:io';

// void main() async {
//   final file = File('assets/demo_large.txt');
//   final stream = file.openRead();

//   // stream.listen((data) {
//   //   print(data.length);
//   // });
//   await for (var data in stream) {
//     print(data.length);
//   }
// }

void main() async {
  final file = File('assets/demo_large.txt');
  final lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      print('$line');
    }
    print('\n========= File is now closed. =========');
  } catch (e) {
    print('Error: $e');
  }

  var counterStream =
      Stream<int>.periodic(const Duration(seconds: 1), (x) => x).take(15);
  await for (var item in counterStream) {
    print(item);
  }
}
