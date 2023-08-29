import 'package:flutter/material.dart';
class CountProvider with ChangeNotifier{
  int _count = 50;
  int get count=>_count ;
  void setCount(){
  _count++;
    notifyListeners();
  }
}

//    double _value=1.0; 
//   double get value => _value ;
//   void setValue(double newValue){
// _value=newValue;
//   }
//   }
