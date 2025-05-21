import 'package:flutter/material.dart';
import 'package:huyphan/main.dart';
import 'package:huyphan/main6.dart';
import 'package:huyphan/text.dart';

double fontSize = 12.0;

class SizeBox extends StatefulWidget {
  const SizeBox({
    super.key,
    required this.myController1,
    required this.myController2,
    required this.email,
    required this.password,
  });

  final TextEditingController myController1;
  final TextEditingController myController2;
  final String? email;
  final String? password;

  @override
  State<SizeBox> createState() => _SizeBoxState();
}

class _SizeBoxState extends State<SizeBox> {
  void validateEmail(String value) {
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      setState(() {
        email = "Email không hợp lệ";
      });
    } else {
      setState(() {
        email = null;
      });
    }
  }

  void validatePassword(String value) {
    if (value.length < 6) {
      setState(() {
        password = "Mật khẩu tối thiểu 6 ký tự";
      });
    } else {
      setState(() {
        password = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Email Field + Error
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              height: 50,
              child: TextField(
                controller: widget.myController1,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
            
              ),
            ),
            if (email != null)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  email!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
        const SizedBox(height: 10.0),

        // Password Field + Error
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              height: 50,
              child: TextField(
                controller: widget.myController2,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: Newbutton(
                  myController1: widget.myController1,
                  myController2: widget.myController2,
                  email: email,
                  password: password,
                ).validatePassword(),
              ),
            ),
            if (password != null)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  password!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
