import 'package:flutter/material.dart';
import 'package:huyphan/main.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AandTState();
}

class _AandTState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: color1,
      child: Icon(
        Icons.lock,
        size: 40,
        color: color2,
      ),
    );
  }
}
