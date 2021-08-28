import 'package:flutter/material.dart';
import 'package:hello_flutter/menu_item.dart';

class DetailPage extends StatefulWidget {

  final MenuItem item;
  final Function callback;

  const DetailPage({Key? key, required this.item, required this.callback}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(widget.item.name),
        ),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image(image: AssetImage(widget.item.thumbnail)),
                )),
            const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Order", style: TextStyle(fontSize: 20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new FloatingActionButton(
                      heroTag: Text("btn1"),
                      onPressed: () {
                        setState(() {
                          widget.item.count += 1;
                        });
                        widget.callback();
                      },
                      child: new Icon(Icons.add, color: Colors.black,),
                      backgroundColor: Colors.white,),
                    new Text('${widget.item.count}', style: new TextStyle(fontSize: 60.0)),
                    new FloatingActionButton(
                      heroTag: Text("btn2"),
                      onPressed: () {
                        setState(() {
                          if (widget.item.count > 0) {
                            widget.item.count -= 1;
                          }
                          widget.callback();
                        });
                      },
                      child: new Icon(Icons.remove, color: Colors.black,),
                      backgroundColor: Colors.white,),
                  ],
                ),
              ],
            )
          ],
        )
    );
  }
}