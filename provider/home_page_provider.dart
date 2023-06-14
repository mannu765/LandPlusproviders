import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier {
  int? _pos;
  int? get pos => _pos;

  void setPos(int val) {
    _pos = val;
    notifyListeners();
  }
}
