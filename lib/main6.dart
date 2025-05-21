import 'package:flutter/material.dart';
import 'main2.dart'; // File chứa SuccessfullPage
import 'main.dart'; // File chứa color1, color2

class Newbutton extends StatefulWidget {
  const Newbutton({
    super.key,
    required this.myController1,
    required this.myController2,
  });

  final TextEditingController myController1;
  final TextEditingController myController2;

  @override
  State<Newbutton> createState() => _NewbuttonState();
}

class _NewbuttonState extends State<Newbutton> {
  final RegExp _password = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");
  final RegExp _email = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");

  void _handleSubmit() {
    final emailText = widget.myController1.text.trim();
    final passwordText = widget.myController2.text;

    setState(() {
      email = null;
      password = null;

      if (emailText.isEmpty) {
        email = 'Email cannot be empty';
      } else if (!_email.hasMatch(emailText)) {
        email = 'Incorrect email format';
      }

      if (passwordText.isEmpty) {
        password = 'Password cannot be empty';
      } else if (!_password.hasMatch(passwordText)) {
        password =
            'Password must be at least 8 characters with letters and numbers';
      }
    });

    if (email == null && password == null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SuccessfullPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (email != null)
          Text(email!, style: const TextStyle(color: Colors.red)),
        if (password != null)
          Text(password!, style: const TextStyle(color: Colors.red)),
        ElevatedButton(
          onPressed: _handleSubmit,
          child: const Text('Đăng ký'),
        ),
      ],
    );
  }
}
