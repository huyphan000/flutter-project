import 'package:flutter/material.dart';
import 'main2.dart'; // File chứa SuccessfullPage
import 'sizebox.dart';
import 'main.dart'; // File chứa color1, color2
import 'main6.dart'; // File chứa Newbutton đã được sửa
import 'sizebox.dart'; // File chứa Avatar

class text2 extends StatefulWidget {
  const text2({super.key});

  @override
  State<text2> createState() => _text2State();
}

class _text2State extends State<text2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 8.0),
      child: Text(
        password!,
        style: TextStyle(
          color: Colors.red,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
