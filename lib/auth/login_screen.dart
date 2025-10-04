import 'package:flutter/material.dart';
import 'package:todayteststudent/auth/forgot_password_screen.dart';
import 'package:todayteststudent/auth/signup_screen.dart';
import 'package:todayteststudent/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          TextFormField(decoration: InputDecoration(hintText: 'Email')),
          TextFormField(decoration: InputDecoration(hintText: 'Password')),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Text('Login'),
          ),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPasswordScreen(),
                  ),
                );
              },
              child: Text('Forgot Passwrod?'),
            ),
          ),
          SizedBox(height: 40),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
            },
            child: Text('Dont have an account ? signup'),
          ),
        ],
      ),
    );
  }
}
