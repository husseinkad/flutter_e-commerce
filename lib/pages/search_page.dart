import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_flutter/controllers/controller.dart';
import 'package:task_flutter/models/category_models.dart';

import '../utiles/colors.dart';
import '../utiles/media_query.dart';
import '../utiles/text_styles.dart';
import '../widgets/build_categories_view.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Search>(context);
    var appBar = AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      title: Text(
        'Search',
        style: boldTitleStyle,
      ),
      leading: BackButton(
        color: customBlack,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Stack(
              children: [
                Image.asset('assets/cart.png', color: Colors.black,),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6),
                    ),

                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ]
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height(context) * 0.07,
                  width: width(context) * 0.9,
                  decoration: BoxDecoration(
                    color: lightGrey,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: width(context) * 0.70,
                          height: 20,
                          child: TextField(
                            controller: provider.editingController,
                            decoration: InputDecoration(
                              hintText: 'search a category',
                              hintStyle: hintGreyStyle,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: const EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                            ),
                            onChanged: provider.searchCate,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 2 / 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemCount: provider.categories.length,
                      itemBuilder: (BuildContext context, index) {
                        final cate = provider.categories[index];
                        // category[index].name.toUpperCase().contains(editingController.text.toUpperCase()) || category[index].name.contains(editingController.text)?  searchFilter.add(category[index]) : searchFilter.clear();
                        return buildProductsView(context, cate);
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
