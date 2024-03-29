import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/index_controller.dart';
import '../utiles/media_query.dart';


adScrollBar(context){
  final provider = Provider.of<Index>(context);
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
              provider.updateIndex(index);
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
                isActive: provider.selectedIndex == index ? true : false
            ))
          ],
        )
      ],
    ),
  );
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



