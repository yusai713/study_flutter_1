import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ヘッダー
      appBar: AppBar(
        title: Text("NextPage"),
      ),
      //ボディー
      body: Container(
        color: Colors.green,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
                child: RaisedButton(
                  child: Text("戻る"),
                    onPressed: () {
                      Navigator.pop(context, "こんにちは、西原さん");
                    },
                )
            ),
          ],
        ),
      ),
    );
  }
}