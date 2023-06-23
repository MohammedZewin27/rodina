import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rodinasales/generated/assets.dart';

import '../style/colors.dart';

class CategoryData{
  String id;
  String name;
  String image;
  Color color;

  CategoryData({ this.id='',required this.name,required this.image,required this.color});

static List<CategoryData>getCategoryData(){
  return [
  CategoryData(name: 'المبيعات', image: Assets.imagesSales, color:category1),
  CategoryData(name: 'المشتريات', image: Assets.imagesBuy, color: category2),
  CategoryData(name: 'الخزنة', image:  Assets.imagesTreasury, color: category3),
  CategoryData(name: 'الاصناف', image: Assets.imagesProducts, color: category4),
  CategoryData(name: 'الموردين', image: Assets.imagesSuppliers, color: category5),
  CategoryData(name: 'العملاء', image: Assets.imagesClients, color: category6),
  CategoryData(name: 'التقارير', image:  Assets.imagesReports, color: category7),
  CategoryData(name: 'الاعدادات', image:  Assets.imagesSetting, color: category8),

  ];
}

}