import 'package:flutter/material.dart';

void main() => runApp(ListViewSample());

class ListViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListState();
  }
}

class ListState extends State<HomeWidget> {
  var listItem = ["one", "two", "three"]; //データ表示用の配列を作成

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Test"),),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black38),
                ),
              ),
              child: ListTile(
                leading: const Icon(Icons.flight_land),
                title: Text('$index'),
                subtitle: Text(listItem[index].toString()),
                onTap: (){
                print("tapped$index");
                },
              ),
            );
          },
      itemCount: listItem.length,),//listItemの数を渡す
    );
  }
}