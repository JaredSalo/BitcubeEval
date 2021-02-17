import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Settings with ChangeNotifier, DiagnosticableTreeMixin {
  bool _selectionMade = false;
  int _index = -2;
  Map _dataMap = Map();
  String _display = "";

  Map get dataMap => _dataMap;
  String get display => _display;
  int get index => _index;

  void newDataMap(Map value) {
    _dataMap = value;
    notifyListeners();
  }

  void newDisplay(String value) {
    _display = value;
    notifyListeners();
  }

  void newIndex(int value) {
    _index = value;
    notifyListeners();
  }
}
