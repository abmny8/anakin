import 'package:flutter/material.dart';
//import 'Login.dart';
//import 'UserRegister.dart';
import 'Splash.dart';
//import 'UserProfile.dart';
//import 'bottom_navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UBOOK',
      //     home: Home(),
      home: Splash(),
/*         routes: <String, WidgetBuilder>{
        '/task': (BuildContext context) => UserProfile(),
        '/home': (BuildContext context) => Home(),
        '/login': (BuildContext context) => Login(),
        '/register': (BuildContext context) => UserRegister(),
      }*/
    );
  }
}
