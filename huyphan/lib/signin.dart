import 'package:flutter/material.dart';
import 'package:huyphan/main.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'SIGN IN',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color1,
        fontSize: 30,
      ),
    );
  }
}
