import 'package:flutter/material.dart';
import 'package:huyphan/main1.dart';
import 'package:huyphan/main2.dart';
import 'package:huyphan/main3.dart';
import 'main6.dart'; // Newbutton đã được sửa
import 'main7.dart';
import 'signin.dart';
import 'fgp.dart';
import 'sizebox.dart';

Color color1 = Colors.blue;
Color color2 = Colors.white;
String? email;
String? password;
double size = 10.0;

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
  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 550,
                margin: const EdgeInsets.symmetric(horizontal: 200),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Avatar(),
                    const SizedBox(height: 20.0),
                    Signin(),
                    const SizedBox(height: 30),
                    sizebox(
                      myController1: myController1,
                      myController2: myController2,
                    ),
                    const SizedBox(height: 3),
                    Container(
                      margin: const EdgeInsets.only(left: 200),
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
                    const SizedBox(height: 5.0),
                    fgp(),
                    const SizedBox(height: 5),
                    Newbutton(
                      myController1: myController1,
                      myController2: myController2,
                    ),
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
