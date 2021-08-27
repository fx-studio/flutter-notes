import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $count"),
            OutlinedButton(
              onPressed: () {
                print('Received click');
                setState(() {
                  count += 1;
                });
              },
              child: const Text('Click Me'),
            )
          ],
        ));
  }
}
