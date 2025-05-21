import 'package:flutter/material.dart';
import 'package:huyphan/main1.dart';
import 'package:huyphan/main3.dart';
import 'package:huyphan/text.dart';
import 'package:huyphan/text2.dart';
import 'main6.dart';
import 'main7.dart';
import 'signin.dart';
import 'fgp.dart';
import 'sizebox.dart';
import 'main4.dart';

void validateEmail(String value) {
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    email = "Email không hợp lệ";
  } else {
    email = null;
  }
}

void validatePassword(String value) {
  if (value.length < 6) {
    password = "Mật khẩu tối thiểu 6 ký tự";
  } else {
    password = null;
  }
}
