import 'dart:io';

import 'package:flutter/material.dart';

import '../category/categoryData.dart';
import '../compomante/categoryItems.dart';
import '../generated/assets.dart';
import '../screens/sales/sales_screen_view.dart';
import '../style/colors.dart';

class HomeLayoutScreen extends StatelessWidget {
  static const String routeName = 'HomeLayoutScreen';

  @override
  Widget build(BuildContext context) {
    var category = CategoryData.getCategoryData();
    return Stack(
      children: [
        const Image(
          image: AssetImage(Assets.imagesBackground),
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          floatingActionButton: SizedBox(
            width: Platform.isWindows
                ? MediaQuery.of(context).size.width * .12
                : MediaQuery.of(context).size.width * .2,
            child: FloatingActionButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add,
                    size: Platform.isWindows
                        ? MediaQuery.of(context).size.width * .03
                        : MediaQuery.of(context).size.width * .08,
                    color: Shadowcont,
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Platform.isWindows ? 8 : 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          hoverColor: Selected,
                          splashColor: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                          mouseCursor: MouseCursor.uncontrolled,
                          onTap: () {
                            Navigator.pushNamed(
                                context, SalesScreenView.routeName);
                          },
                          child: CategoryItems(category[index], index));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
