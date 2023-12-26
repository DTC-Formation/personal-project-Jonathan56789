import '../components/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap ; 
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: GestureDetector(
          child: Text("Sign up"), 
          onTap: widget.onTap,
        ),
      ),

      bottomNavigationBar: const BottomNavigationBarComponent(),
    );
  }
}