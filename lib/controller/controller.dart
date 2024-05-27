import 'package:flutter/material.dart';

class MyController with ChangeNotifier {
  int counter = 0;

  //add
  add() {
    counter++;
    notifyListeners();
  }

  ///remove buttton
  remove() {
    if (counter > 0) {
      counter--;
    }
    notifyListeners();
  }
}

//color provider
class ColorProvider with ChangeNotifier {
  Color colr = Colors.white;
  //update Color
  updateColor(Color newColor) {
    colr = newColor;
    notifyListeners();
  }
}
