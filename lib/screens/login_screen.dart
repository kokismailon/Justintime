import 'package:flutter/material.dart';
import 'package:justintime/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: SingleChildScrollView(
      child: Column(
        children: [const SizedBox(height: 280), CardContainer()],
      ),
    )));
  }
}
