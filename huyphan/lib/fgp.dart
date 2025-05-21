import 'package:flutter/material.dart';
import 'package:huyphan/main.dart';

class fgp extends StatefulWidget {
  const fgp({super.key});

  @override
  State<fgp> createState() => _fgpState();
}

class _fgpState extends State<fgp> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewPassword(),
          ),
        );
      },
      child: Text(
        'Forgot password?',
        style: TextStyle(
          color: color1,
          fontSize: 15,
        ),
      ),
    );
  }
}
