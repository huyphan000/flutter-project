import 'package:flutter/material.dart';

import 'package:huyphan/main.dart';

class Signsing extends StatefulWidget {
  const Signsing({super.key});

  @override
  State<Signsing> createState() => _SignsingState();
}

class _SignsingState extends State<Signsing> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NewPassword(),
          ),
        );
      },
      child: Text(
        'Sign up',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color1,
          fontSize: 10,
        ),
      ),
    );
  }
}
