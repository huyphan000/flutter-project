import 'package:huyphan/main.dart';
import 'package:flutter/material.dart';

class sizebox extends StatefulWidget {
  const sizebox(
      {super.key, required this.myController1, required this.myController2});
  final TextEditingController myController1;
  final TextEditingController myController2;

  @override
  State<sizebox> createState() => _sizeboxState();
}

class _sizeboxState extends State<sizebox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          child: TextField(
            controller: widget.myController1,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Email',
              filled: true,
              fillColor: Colors.white,
              labelStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
            onChanged: (text1) {
              setState(() {
                email = '';
              });
            },
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          email!,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.red,
            fontSize: size,
          ),
        ),
        SizedBox(height: 5.0),
        SizedBox(
          width: 250,
          child: TextField(
            controller: widget.myController2,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Password',
              filled: true,
              fillColor: Colors.white,
              labelStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
            obscureText: true,
            onChanged: (text2) {
              setState(() {
                password = '';
              });
            },
          ),
        ),
        Text(
          password!,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.red,
            fontSize: size,
          ),
        ),
      ],
    );
  }
}
