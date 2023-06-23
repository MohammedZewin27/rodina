import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSeed(
          background: MASTERCOLOR, seedColor: MASTERCOLOR2,


      ),
      iconTheme: const IconThemeData(color: LABLECOLOR),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: MASTERCOLOR3,
          statusBarColor: MASTERCOLOR3,
        ),
        color: MASTERCOLOR,
        centerTitle: true,
        titleTextStyle:
            TextStyle(color:MASTERCOLOR3, fontSize: 35,fontFamily: 'master2' ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: BUTTONCOLOR3, fontSize: 35,fontFamily: 'master'),
        bodyMedium: TextStyle(fontSize: 30, color: BUTTONCOLOR3,fontFamily: 'master2'),
       headlineLarge: TextStyle(fontSize: 20, color: BUTTONCOLOR3,fontFamily: 'master2'),
        bodySmall: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'master2'),
      ),
);

  static ThemeData darkTheme = ThemeData();
}
