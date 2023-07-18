import 'package:flutter/material.dart';

import '../../../../UI Style/button_decoration.dart';
import '../../../../UI Style/input_decoration.dart';
import '../../../../services/firebase_service.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: formKey,
      child: Column(
        children: [
          TextFormField(
              controller: userController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ingrese un correo';
                }
                return null;
              },
              decoration: InputsDecoration.inputPrimaryStyle(
                  context: context,
                  hintText: 'user@tryffer.comR',
                  labelText: 'Email')),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
              controller: passwordController,
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ingrese una contraseña';
                }
                return null;
              },
              decoration: InputsDecoration.inputPrimaryStyle(
                  context: context, hintText: '****', labelText: 'Contraseña')),
          TextButton(
              onPressed: () {},
              child: Text(
                "Olvidé mi contraseña",
                style: TextStyle(
                  color: Colors.grey[700],
                  decoration: TextDecoration.underline,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ButtonsDecoration.buttonPrimaryStyle(
                  context: context, elevation: 3),
              onPressed: () async {},
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: const Text("Iniciar sesión"))),
          const SizedBox(
            height: 15,
          ),
          Text(
            "o inicia sesión con: ",
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () async {
                  print("Google");
                  FirebaseService.signInWithGoogle();
                  // final loginResponse = await userProvider.signInWithGoogle();
                  // if (loginResponse['status']) {
                  //   Navigator.pushNamedAndRemoveUntil(
                  //       context, 'homePage', (route) => false);
                  // } else {
                  //   ComponentService.showErrorSnackBar(
                  //       context, loginResponse['message']);
                  // }
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text(
                    "G+",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'registerPage');
              },
              child: const Text("¿No tienes cuenta? Regístrate")),
        ],
      ),
    );
  }
}
