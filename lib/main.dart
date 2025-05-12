import 'package:flutter/material.dart';
import 'package:huyphan/main1.dart';
import 'package:huyphan/main2.dart';
import 'package:huyphan/main3.dart';
import 'package:dio/dio.dart';
import 'main6.dart';
import 'main7.dart';
import 'signin.dart';
import 'fgp.dart';
import 'sizebox.dart';

Color color1 = Colors.blue;
Color color2 = Colors.white;
String email = '';
String password = '';
double size = 10;
int count = 0;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(home: LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final RegExp _email = RegExp(
      r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");
  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  final RegExp _password = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //trục dọc
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //trục ngang
            children: [
              Container(
                height: 550,
                margin: EdgeInsets.only(left: 200, right: 200),
                width: 100,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //trục dọc
                  crossAxisAlignment: CrossAxisAlignment.center, //trục ngang
                  children: [
                    Avatar(),
                    SizedBox(height: 20.0),
                    Signin(),
                    SizedBox(height: 30),
                    sizebox(
                      myController1: myController1,
                      myController2: myController2,
                    ),
                    SizedBox(height: 3),
                    Container(
                      margin: EdgeInsets.only(left: 200),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: color1,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    fgp(),
                    SizedBox(height: 5),
                    Newbutton(
                      onPressed: () {
                        setState(() {
                          // Kiểm tra email

                          if (!_email.hasMatch(myController1.text)) {
                            email = 'Incorrect email';
                          }

                          if (!_password.hasMatch(myController2.text)) {
                            password = 'Incorrect password';
                          }
                          if (myController1.text.isEmpty) {
                            email = 'Email cannot be empty';
                          }
                          if (myController2.text.isEmpty) {
                            password = 'Password cannot be empty';
                          }
                        });

                        // Nếu không có lỗi, chuyển đến trang tiếp theo
                        if (_email.hasMatch(myController1.text) &&
                            _password.hasMatch(myController2.text)) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Success(),
                            ),
                          );
                        }
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Newpassword extends StatefulWidget {
  const Newpassword({super.key});

  @override
  State<Newpassword> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Newpassword> {
  @override
  Widget build(BuildContext context) {
    return NewPasswordPage();
  }
}

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _Success();
}

class _Success extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return const SuccessfullPage();
  }
}

class Buttonnew extends StatefulWidget {
  const Buttonnew({super.key});

  @override
  State<Buttonnew> createState() => _ButtonnewState();
}

class _ButtonnewState extends State<Buttonnew> {
  @override
  Widget build(BuildContext context) {
    return Newbutton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Success(),
        ),
      );
    });
  }
}
