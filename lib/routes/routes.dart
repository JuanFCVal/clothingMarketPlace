import 'package:flutter/material.dart';

import '../screens/auth/login/login.dart';
import '../screens/auth/loginOrRegister/login_or_register.dart';
import '../screens/auth/register/register.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'loginOrRegister': (context) => const LoginOrRegisterPage(),
    'login': (context) => const LoginPage(),
    'register': (context) => const RegisterPage(),
  };
}
