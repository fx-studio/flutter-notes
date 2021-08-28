import 'package:flutter/material.dart';
import 'package:hello_flutter/detail_page.dart';
import 'package:hello_flutter/menu_item.dart';

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final menus = MenuItem.dummyData;

  refresh() {
    setState(() {});
  }

  Widget buildRow(MenuItem menu) {
    return Card(
        elevation: 2.0,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(menu.thumbnail),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Text(
                      menu.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Spacer(),
                    Text('count: ${menu.count}',
                        style: TextStyle(fontSize: 20.0))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
        ),
        body: ListView.builder(
            itemCount: menus.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(item: menus[index], callback: refresh);
                  }));
                },
                child: buildRow(menus[index]),
              );
            }));
  }
}
