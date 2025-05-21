import 'package:flutter/material.dart';
import 'main2.dart'; // File chứa SuccessfullPage
import 'sizebox.dart';
import 'main.dart'; // File chứa color1, color2
import 'main6.dart'; // File chứa Newbutton đã được sửa
import 'sizebox.dart'; // File chứa Avatar

class text1 extends StatefulWidget {
  const text1({super.key});

  @override
  State<text1> createState() => _textState();
}

class _textState extends State<text1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 8.0),
      child: Text(
        email!,
        style: TextStyle(
          color: Colors.red,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
