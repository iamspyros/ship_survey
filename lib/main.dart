import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart'; // Import the Firebase Core package
import 'package:ship_survey/Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    // Firebase messagin is disabled for protecting the token
    //  _firebaseMessaging.requestPermission();
    // _firebaseMessaging.getToken().then((token) {
    //   print('FCM Token: $token');
    // });
  await Firebase.initializeApp(); // Initialize Firebase
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      

    );
  }
}