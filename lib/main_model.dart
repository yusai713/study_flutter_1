import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String GoroText = "1467年応仁の乱";

  void changeGoroText(){
    GoroText = "1650年慶安の御触書";
    //変更を通知するため
    notifyListeners();
  }
}