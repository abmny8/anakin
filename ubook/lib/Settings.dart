//import 'package:firebase_storage/firebase_storage.dart';
//import 'dart:collection';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
//import 'package:provider/provider.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:path/path.dart';

//import 'dart:io';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.lightGreen[200],
    ));
    /*  ThemeDataProvider themeDataProvider = Provider.of(context);

    // Pull the theme data from the provider and make a few modification
    // The modifications are for illustration only.  Not required.
    final ThemeData currentTheme = themeDataProvider.themeData.copyWith(
      scaffoldBackgroundColor: themeDataProvider.isDarkTheme
          ? Colors.yellow[700]
          : Colors.yellow[300],
      appBarTheme: themeDataProvider.themeData.appBarTheme,
      cardTheme: themeDataProvider.themeData.cardTheme,
    );
    return MaterialApp(
      color: Colors.yellow[100],
      title: 'MyApp',
      theme: currentTheme, //set your theme
      initialRoute: setupRoute,
      onGenerateRoute: Router.generateRoute,
    );
  }*/
  }

/*class ThemeDataProvider with ChangeNotifier {
  bool _useDarkTheme;
  SharedPreferences _prefs;
  ThemeDataProvider() {
    _useDarkTheme = false;
    _loadPrefs();
  }

  ThemeData get themeData =>
      _useDarkTheme ? myThemeDark : myThemeLight; //MyTheme... is defined by you

  bool get isDarkTheme => _useDarkTheme;

  void toggleTheme() {
    _useDarkTheme = !_useDarkTheme;
    _savePrefs();
    notifyListeners();
  }

//The reset is just incase you want to save the selected theme for the next time your app is run.
  _initPrefs() async {
    if (_prefs == null) {
      _prefs = await SharedPreferences.getInstance();
    }
  }

  _loadPrefs() async {
    await _initPrefs();
    _useDarkTheme = _prefs.getBool("useDarkMode") ?? true;
    notifyListeners();
  }

  _savePrefs() async {
    await _initPrefs();
    await _prefs.setBool("useDarkMode", _useDarkTheme);
  }*/
}
