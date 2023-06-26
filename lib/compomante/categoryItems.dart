import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rodinasales/category/categoryData.dart';

import '../style/colors.dart';

class CategoryItems extends StatelessWidget {
  final CategoryData categoryData;
  final int index;


  const CategoryItems(this.categoryData, this.index, {super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Shadowcont.withOpacity(0.5),
            // spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: categoryData.color,
        borderRadius: BorderRadius.only(
            topRight: const Radius.circular(25),
            bottomLeft: index != 1 && index != 4 && index != 7 && index != 10
                ? const Radius.circular(25)
                : const Radius.circular(25),
            topLeft: const Radius.circular(25),
            bottomRight: index != 1 && index != 4 && index != 7 && index != 10
                ? const Radius.circular(25)
                : const Radius.circular(25)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Image.asset(
              categoryData.image,
              height: 30,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            categoryData.name,
            style: TextStyle(
                fontSize: Platform.isWindows ? MediaQuery
                    .of(context)
                    .size
                    .width * .012:MediaQuery
                    .of(context)
                    .size
                    .width * .05,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(height: 3,)
        ],
      ),
    );
  }
}
