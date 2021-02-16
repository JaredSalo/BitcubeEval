import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Settings with ChangeNotifier, DiagnosticableTreeMixin {
  bool _selectionMade = false;
  int _index = -2;

  bool get selectionMade => _selectionMade;
  int get index => _index;

  void newSelect(bool value) {
    _selectionMade = value;
    notifyListeners();
  }

  void newIndex(int value) {
    _index = value;
    notifyListeners();
  }
}
