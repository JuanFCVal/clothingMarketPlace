import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:market_place/routes/routes.dart';
import 'firebase_options.dart';
import 'themes/light.dart';

void main() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    debugPrint(e.toString());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: lightTheme(),
      routes: getApplicationRoutes(),
      initialRoute: 'loginOrRegister',
    );
  }
}
