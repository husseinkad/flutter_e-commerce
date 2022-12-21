import 'package:flutter/material.dart';

import '../utiles/text_styles.dart';

seeAll(onPressed){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Popular Categories', style: boldTitleStyle,),
        TextButton(onPressed: onPressed, child: Text('SEE ALL -->', style: smallBoldStyle,),),

      ],
    ),
  );
}