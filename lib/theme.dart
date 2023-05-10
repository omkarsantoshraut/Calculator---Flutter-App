import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(primary: Colors.blue),
    buttonTheme: ButtonThemeData(buttonColor: Colors.blue)
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(primary: Colors.grey),
    buttonTheme: ButtonThemeData(buttonColor: Colors.grey)
  );
}

class MyThemeCupertino {
  static CupertinoThemeData lightTheme = const CupertinoThemeData(
    primaryColor: CupertinoColors.systemBlue,
    scaffoldBackgroundColor: CupertinoColors.white,
    brightness: Brightness.light,
    // textTheme: CupertinoTextThemeData(primaryColor: CupertinoColors.black, textStyle: TextStyle(color: CupertinoColors.black))
  );

  static CupertinoThemeData darkTheme = CupertinoThemeData(
    primaryColor: CupertinoColors.systemGrey,
    scaffoldBackgroundColor: CupertinoColors.black,
    brightness: Brightness.dark,
    textTheme: CupertinoTextThemeData(primaryColor: CupertinoColors.white, textStyle: TextStyle(color: CupertinoColors.white))
    
  );
}