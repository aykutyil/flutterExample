import 'package:flutter/material.dart';

class HeightModel extends ChangeNotifier{
  double mHeight = 0;

  double get mHeightValue => mHeight;

  void setValue(double value){
    mHeight =((-1*(value.toInt()))+25).toDouble();
    notifyListeners();
  }

}