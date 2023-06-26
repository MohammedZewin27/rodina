import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      //  visualDensity: VisualDensity.adaptivePlatformDensity,
      // colorScheme: ColorScheme.fromSeed(
      //     background: Colors.white70, seedColor: Colors.white,
      // ),
      iconTheme: const IconThemeData(color: Colors.black),
      // useMaterial3: true,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent,
        ),
        color: MASTERCOLOR,
        centerTitle: true,
        titleTextStyle:
            TextStyle(color:MASTERCOLOR3, fontSize: 35,fontFamily: 'master2' ),
      ),

      textTheme: const TextTheme(
        bodyLarge: TextStyle( fontSize: 35,fontFamily: 'master'),
        bodyMedium: TextStyle(fontSize: 25, fontFamily: 'master2',fontWeight: FontWeight.bold),
       headlineLarge: TextStyle(fontSize: 15, fontFamily: 'master2'),
        bodySmall: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'master2'),
        titleSmall: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'master2')
      ),
);

  static ThemeData darkTheme = ThemeData();
}
