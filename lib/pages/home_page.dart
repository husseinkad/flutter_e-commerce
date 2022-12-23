import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_flutter/pages/popular_categories_page.dart';
import 'package:task_flutter/pages/search_page.dart';
import 'package:task_flutter/utiles/navigator.dart';

import '../controllers/search_controller.dart';
import '../utiles/media_query.dart';
import '../widgets/adbar.dart';
import '../widgets/adscrollbar.dart';
import '../widgets/categories.dart';
import '../widgets/searchbar.dart';
import '../widgets/seeall.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          searchBar(context, () {
            push(context, const SearchPage());
          }),
          adBar(context),
          adScrollBar(context),
          seeAll(() {
            push(context, const PopularCategories());
          }),
          categories(),
        ],
      ),
    );
  }
}
