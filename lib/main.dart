import 'package:flutter/material.dart';
import 'package:rodinasales/screens/sales/sales_screen_view.dart';
import 'package:rodinasales/style/theme.dart';

import 'layout/homeLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RodinaKids',
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: HomeLayoutScreen.routeName,
      routes: {
        HomeLayoutScreen.routeName: (context) => HomeLayoutScreen(),
        SalesScreenView.routeName: (context) => const SalesScreenView(),
      },
    );
  }
}
