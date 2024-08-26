import 'package:flutter/material.dart';
import 'package:signin_uidesign/view/signin/signin.dart';
import 'package:signin_uidesign/view/signup/signup.dart';

void main(List<String> args) {
  runApp(Myapp());
}

String email = '';
String password = '';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}
