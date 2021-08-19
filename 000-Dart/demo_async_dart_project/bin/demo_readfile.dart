import 'dart:io';

Future<void> main() async {
  final file = File('assets/demo.txt');
  final content = await file.readAsString();
  print(content);
}
