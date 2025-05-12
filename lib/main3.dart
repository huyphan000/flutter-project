import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPage createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  Color color1 = Color.fromARGB(255, 66, 169, 218);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            height: 500,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildInputField(
                  label: 'Nhập họ của bạn',
                  hint: 'Họ của bạn',
                ),
                SizedBox(height: 30),
                buildInputField(
                  label: 'Nhập tên của bạn',
                  hint: 'Tên của bạn',
                ),
                SizedBox(height: 30),
                buildInputField(
                  label: 'Nhập email của bạn',
                  hint: 'Email của bạn',
                ),
                SizedBox(height: 30),
                buildInputField(
                  label: 'Nhập mật khẩu của bạn',
                  hint: 'Mật khẩu của bạn',
                  obscureText: true,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    print('Đăng ký thành công');
                  },
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(fontSize: 18, color: color1),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField({
    required String label,
    required String hint,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
      ),
    );
  }
}
