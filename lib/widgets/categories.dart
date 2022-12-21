import 'package:flutter/material.dart';

import '../models/catgories_models.dart';
import 'build_categories_view.dart';


categories(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
        child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: 6,
            itemBuilder: (BuildContext context, index) {
              return buildProductsView(context, category[index]);
            }
        )
    ),
  );
}