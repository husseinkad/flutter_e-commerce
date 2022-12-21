import 'package:flutter/material.dart';

import '../utiles/colors.dart';
import '../utiles/media_query.dart';

searchBar(context, onTap){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: height(context) * 0.07,
        width: width(context) * 0.9,
        decoration: BoxDecoration(
          color: lightGrey,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Search Medicine & Health Products'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
        ),
      ),
    ),
  );
}

