import 'package:flutter/material.dart';
import 'package:task_flutter/models/catgories_models.dart';
import 'package:task_flutter/utiles/text_styles.dart';

import '../utiles/navigator.dart';



Widget buildProductsView(BuildContext context, Categories categories) {
  return InkWell(
    onTap: () {},
    child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(

            child: Container(
              width: constraints.maxWidth * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.2)
              ),
              child: Column(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.60,
                          child: Image.asset(categories.urlImage)),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),

                    ],
                  ),
              ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                    categories.name,
                    style: normalStyle
                ),
              ),
            ),
          ),
        ],
      );
  }
  )
  );
}