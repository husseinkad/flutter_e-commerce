import 'package:flutter/material.dart';

import '../models/category_models.dart';



class Search extends ChangeNotifier{

  List<Categories> categories = category;
  TextEditingController editingController = TextEditingController();

  var selectedIndex = 0;


  void updateIndex(index){
    selectedIndex = index;
    notifyListeners();
  }

  void searchCate(String value) {
    final suggestions = category.where((cate) {
      final cateTitle = cate.name.toLowerCase();
      final input = value.toLowerCase();
      return cateTitle.contains(input);
    }).toList();
    categories = suggestions;
    notifyListeners();
  }

}