import 'package:flutter/material.dart';
import 'package:justintime/interfazusuario/input_decorations.dart';
import 'package:justintime/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 280),
          CardContainer(
              child: Column(
            children: [
              const SizedBox(height: 10),
              Text('Login', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 30),
              const _LoginForm()
            ],
          )),
          const SizedBox(height: 50),
          const Text('Crear una nueva cuenta'),
        ],
      ),
    )));
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        //Interfascorreo
        TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecorations.authInputDecoration(
            hintText: 'Ejemplo: correo@gmail.com',
            labelText: 'Correo Electrónico',
            prefixIcon: Icons.email_outlined,
          ),
        ),
        //separador
        const SizedBox(height: 30),
        //Interfascotraseña
        TextFormField(
          autocorrect: false,
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecorations.authInputDecoration(
            hintText: '********',
            labelText: 'Contraseña',
            prefixIcon: Icons.lock_clock_outlined,
            suffixIcon: Icons.remove_red_eye,
          ),
        ),
        //separador
        const SizedBox(height: 30),

        MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.pink,
            elevation: 0,
            color: Colors.greenAccent,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 17),
              child: const Text('Ingresar'),
            ),
            onPressed: () {})
      ],
    ));
  }
}
