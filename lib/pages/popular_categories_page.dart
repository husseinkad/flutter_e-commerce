import 'package:flutter/material.dart';
import 'package:task_flutter/models/catgories_models.dart';
import 'package:task_flutter/utiles/colors.dart';

import '../utiles/text_styles.dart';
import '../widgets/build_categories_view.dart';


class PopularCategories extends StatefulWidget {
  const PopularCategories({Key? key}) : super(key: key);

  @override
  State<PopularCategories> createState() => _PopularCategoriesState();
}

class _PopularCategoriesState extends State<PopularCategories> {
  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      leading: BackButton(color: customBlack,),
      title: Text('Popular Categories', style: boldTitleStyle,),
    );

    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: GridView.builder(
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: category.length,
                itemBuilder: (BuildContext context, index) {
                  return buildProductsView(context, category[index]);
                }
            )
        ),
      ),
    );
  }
}
