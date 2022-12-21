import 'package:flutter/material.dart';
import 'package:task_flutter/pages/popular_categories_page.dart';
import 'package:task_flutter/pages/search_page.dart';
import 'package:task_flutter/utiles/navigator.dart';

import '../utiles/media_query.dart';
import '../widgets/adbar.dart';
import '../widgets/adscrollbar.dart';
import '../widgets/categories.dart';
import '../widgets/searchbar.dart';
import '../widgets/seeall.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           searchBar(context, () { push( context, const SearchPage()); }),
           adBar(context),
           adScrollBar(),
           seeAll((){ push(context, const PopularCategories() ); }),
           categories(),
        ],
      ),
    );
  }

  adScrollBar(){

    return SizedBox(
      height: height(context) * 0.315,
      child: Column(
        children: [
          SizedBox(
            height: height(context) * 0.28,
            child: PageView.builder(

              itemCount: 4,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index){
                setState((){
                  _selectedIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                      height: height(context) * 0.23,
                      width: width(context) * 0.9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Image.asset('assets/ad.png', fit: BoxFit.fill,)
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(4, (index) => DotsRow(
                  isActive: _selectedIndex == index ? true : false
              ))
            ],
          )
        ],
      ),
    );
  }
}


class DotsRow extends StatelessWidget {
  DotsRow({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: isActive? Colors.black : Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}



