import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Back!'),
      ),
      body: Center(
        child: Column(
          children: const [
            Card(
              child:  TextField(
                decoration: InputDecoration(
                  hintText: 'Email address',
                ),
              ),
            )
          ],
          )
      ),
    );
  }
}
