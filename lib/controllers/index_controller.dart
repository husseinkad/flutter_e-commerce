

import 'package:flutter/material.dart';


class Index extends ChangeNotifier{

  var selectedIndex = 0;


  void updateIndex(index){
    selectedIndex = index;
    notifyListeners();
  }

}