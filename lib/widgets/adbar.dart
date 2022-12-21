import 'package:flutter/material.dart';

import '../utiles/colors.dart';
import '../utiles/media_query.dart';
import '../utiles/text_styles.dart';

adBar(context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: height(context) * 0.21,
      width: width(context) * 0.9,
      decoration: BoxDecoration(
        color: lightPurple,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 2),
            child: Text('Upload Prescription', style: boldTitleStyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, right: 12, left: 12, bottom: 2),
            child: Text('Upload a Prescription and Tell Us what you Need. We do the Rest.!', style: normalStyle,),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 2, right: 12, left: 12, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Flat 25% off \non Medicines*', style: smallBoldStyle,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: height(context) * 0.055,
                      width: width(context) * 0.26,
                      decoration: BoxDecoration(
                        color: darkPurple,
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const Center(child: Text('ORDER NOW', style: TextStyle(color: Colors.white),)), ),
                  )
                ],
              )
          ),
        ],
      ),
    ),
  );
}

