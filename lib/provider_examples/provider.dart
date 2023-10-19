import 'package:flutter/material.dart';

// provider example 1
class provider_example1 with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  getcount() {
    _count++;
    notifyListeners();
  }
}

// provider example 2
class provider_example2 with ChangeNotifier {
  double _value = 1.0;
  double get slidervalue => _value;

  getslidervalue(double val) {
    _value = val;
    notifyListeners();
  }
}

// provider example 3

class provider_example3 with ChangeNotifier {
  List<int> _mylist = [];
  List get mylist => _mylist;

  getmylist(int Index) {
    _mylist.add(Index);
    notifyListeners();
  }

  removemylist(int index) {
    _mylist.remove(index);
    notifyListeners();
  }
}
