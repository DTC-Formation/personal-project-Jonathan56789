import 'package:elomano/components/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  final Function()? onTap ; 
  const SignupPage({super.key,required this.onTap});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up Page'),
      ),
      body: Center(
        child: GestureDetector(
          child: Text("Login"), 
          onTap: widget.onTap,
        ),
      ),

      bottomNavigationBar: const BottomNavigationBarComponent(),
    );
  }
}