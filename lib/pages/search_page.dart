import 'package:flutter/material.dart';
import 'package:task_flutter/models/catgories_models.dart';

import '../utiles/colors.dart';
import '../utiles/media_query.dart';
import '../utiles/text_styles.dart';
import '../widgets/build_categories_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchString = '';
  List searchFilter = [];
  TextEditingController editingController = TextEditingController();
  List<Categories> _foundCates = [];
  List? searchList;
  @override
  initState() {
    _foundCates = category;
    searchList = category
        .where((cate) =>
        cate.name.toLowerCase().contains(searchString.toLowerCase()))
        .toList();
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Categories> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = category;
    } else {
      results = category
          .where((cate) =>
          cate.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

  }

  @override
  Widget build(BuildContext context) {
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
          icon: Image.asset(
            'assets/cart.png',
            color: Colors.black,
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
                          child: TextFormField(
                            controller: editingController,
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
                            onChanged: (value) {
                              searchString = value;
                            }
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
                      itemCount: 6,
                      itemBuilder: (BuildContext context, index) {
                       // category[index].name.toUpperCase().contains(editingController.text.toUpperCase()) || category[index].name.contains(editingController.text)?  searchFilter.add(category[index]) : searchFilter.clear();
                        return buildProductsView(context, searchList?[index]);
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
