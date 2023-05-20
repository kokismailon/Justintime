import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.black,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _Rectangulobox(),

          //imagen de login
          _Imagenlogin(),

          //espaciodeformulario
          child,
        ],
      ),
    );
  }
}

class _Imagenlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 40),
        child: const Icon(Icons.person_pin, color: Colors.white, size: 100),
      ),
    );
  }
}

class _Rectangulobox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _rectagulobackground(),
      child: Stack(
        children: [
          Positioned(top: 30, left: 20, child: _Circulos()),
          Positioned(bottom: 40, right: 125, child: _Circulos()),
          Positioned(top: 185, right: 300, child: _Circulos()),
          Positioned(top: 20, right: 165, child: _Circulos()),
          Positioned(top: 140, right: 05, child: _Circulos()),
          Positioned(bottom: -30, left: 10, child: _Circulos()),
        ],
      ),
    );
  }

  BoxDecoration _rectagulobackground() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(46, 177, 159, 1),
        Color.fromRGBO(82, 192, 170, 1),
      ]));
}

class _Circulos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.1),
      ),
    );
  }
}
