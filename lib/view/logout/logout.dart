import 'package:flutter/material.dart';
import 'package:signin_uidesign/view/signin/signin.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signin(),
                  ));
            },
            child: Text("Log out")),
      ),
    );
  }
}
