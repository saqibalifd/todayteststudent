import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup Screen')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          TextFormField(decoration: InputDecoration(hintText: 'Name')),
          TextFormField(decoration: InputDecoration(hintText: 'Email')),
          TextFormField(decoration: InputDecoration(hintText: 'Password')),

          SizedBox(height: 40),
          TextButton(
            onPressed: () {},
            child: Text('Already have an account ? login'),
          ),
        ],
      ),
    );
  }
}
