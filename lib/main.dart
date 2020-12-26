import 'package:flutter/material.dart';
import 'package:init_project/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '西原の学び舎',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("西原の学び舎"),
          ),
          body: Consumer<MainModel>(
              builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(model.GoroText,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    RaisedButton(
                      child: Text("ボタン"),
                      onPressed: (){
                        model.changeGoroText();
                      }
                    )

                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}