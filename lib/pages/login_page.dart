import 'package:flutter/material.dart';

class Mylogin extends StatelessWidget {
  const Mylogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Text('Login Page',
        style: TextStyle(fontSize: 27,color: Colors.blue),

      )),
    );
  }
}
