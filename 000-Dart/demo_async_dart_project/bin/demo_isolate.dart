import 'dart:isolate';

void main() async {
  print("OK, I'm counting...");
  // // print(waitCounter());

  // final done = await waitCounter2();
  // print(done);

  final receiverPort = ReceivePort();

  final isolate = await Isolate.spawn(waitCounter3, receiverPort.sendPort);

  receiverPort.listen((message) {
    print(message);
    receiverPort.close();
    isolate.kill();
  });

  print('I am waiting.');
}

String waitCounter() {
  var counting = 0;
  for (var i = 1; i <= 10000000000; i++) {
    counting = i;
  }
  return '$counting! Ready or not, here I come!';
}

Future<String> waitCounter2() async {
  var counting = 0;
  await Future(() {
    for (var i = 1; i <= 10000000000; i++) {
      counting = i;
    }
  });
  return '$counting! Ready or not, here I come!';
}

void waitCounter3(SendPort sendPort) {
  var counting = 0;
  for (var i = 1; i <= 1000000000; i++) {
    counting = i;
  }
  sendPort.send('$counting! Ready or not, here I come!');
}
