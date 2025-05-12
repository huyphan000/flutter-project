import 'package:flutter/material.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  _NewPasswordPage createState() => _NewPasswordPage();
}

class _NewPasswordPage extends State<NewPasswordPage> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  Color color1 = const Color.fromARGB(255, 66, 169, 218);
  Color color2 = Colors.white;
  String passwordMessage = ''; // Thêm biến để lưu thông báo lỗi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: color2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 500,
              margin: EdgeInsets.only(
                  left: 300, right: 300), // Điều chỉnh margin cho hợp lý
              decoration: BoxDecoration(
                color: color1,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: color2,
                    child: Icon(
                      Icons.home,
                      size: 60,
                      color: color1,
                    ),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    controller: newPasswordController,
                    decoration: InputDecoration(
                      labelText: 'Nhập mật khẩu mới',
                      hintText: 'Mật khẩu của bạn',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      labelText: 'Xác nhận mật khẩu',
                      hintText: 'Nhập lại mật khẩu mới',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (newPasswordController.text !=
                            confirmPasswordController.text) {
                          passwordMessage = 'Mật khẩu không khớp';
                        } else {
                          passwordMessage = 'Mật khẩu đã được thay đổi';
                        }
                      });

                      // Xử lý lưu mật khẩu mới
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color2,
                      foregroundColor: color1,
                    ),
                    child: Text('Lưu mật khẩu'),
                  ),
                  Text(
                    passwordMessage, // Dùng biến local để hiển thị thông báo
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ], //children
        ),
      ),
    );
  }
}
