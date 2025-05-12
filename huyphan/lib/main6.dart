import 'package:flutter/material.dart';
import 'main2.dart'; // File chứa SuccessfullPage
import 'main.dart'; // File chứa color1, color2

class Newbutton extends StatefulWidget {
  const Newbutton({
    super.key,
    required this.onPressed,
    required this.myController1,
    required this.email,
    required this.password,
    required this.myController2,
  });

  final String email;
  final String password;
  final VoidCallback onPressed;
  final TextEditingController myController1;
  final TextEditingController myController2;

  @override
  State<Newbutton> createState() => _NewbuttonState();
}

class _NewbuttonState extends State<Newbutton> {
  final RegExp _password = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");
  final RegExp _email =
      RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"); // Email regex đơn giản hơn

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (email.isNotEmpty) Text(email, style: TextStyle(color: Colors.red)),
        if (password.isNotEmpty)
          Text(password, style: TextStyle(color: Colors.red)),
        ElevatedButton(
          onPressed: () {
            void onPressed() {
              setState(() {
                email = '';
                password = '';

                if (widget.myController1.text.isEmpty) {
                  email = 'Email cannot be empty';
                } else if (!_email.hasMatch(widget.myController1.text)) {
                  email = 'Incorrect email format';
                }

                if (widget.myController2.text.isEmpty) {
                  password = 'Password cannot be empty';
                } else if (!_password.hasMatch(widget.myController2.text)) {
                  password =
                      'Password must be at least 8 characters with letters and numbers';
                }
              });

              // Nếu không có lỗi
              if (email.isEmpty && password.isEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SuccessfullPage(),
                  ),
                );
              }
              // Xử lý khi nút được nhấn
            }
          },
          child: const Text('Đăng ký'),
        ),
      ],
    );
  }
}
