void main(List<String> arguments) {
  print('Hello world!');

  // Future
  //Future<int> countItems();

  print('Before the future');
  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  )
      .then((value) => print("value: $value"))
      .catchError((error) => print("Error: $error"))
      .whenComplete(() => print("Future is complete"));

  print('After the future');
}
