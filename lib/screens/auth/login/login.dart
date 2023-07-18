import 'package:flutter/material.dart';

import 'widgets/form_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 30,
              ),
              title(context),
              const SizedBox(
                height: 20,
              ),
              const FormLogin()
            ]),
          ),
        ),
      ),
    );
  }

  title(BuildContext context) {
    return Text(
      "Iniciar sesión",
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.bold),
    );
  }
}
