import 'package:flutter/material.dart';
import 'package:signin_uidesign/main.dart';

import 'package:signin_uidesign/view/signin/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  TextEditingController passwordconfirmcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Sign up for free",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: ("Your email address"),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 3)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 3)),
                      ),
                      validator: (value) {
                        if (value == null ||
                            !emailcontroller.text.contains("@")) {
                          return "Please enter a valid email address";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: Passwordcontroller,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: ("Your Password"),
                        suffix: Icon(Icons.remove_red_eye),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 3)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 3)),
                      ),
                      validator: (value) {
                        if (Passwordcontroller.text.length < 5) {
                          return "password must contain atleast 5 characters";
                        } else if (value!.isEmpty) {
                          return "enter password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: passwordconfirmcontroller,
                      decoration: InputDecoration(
                        label: Text("Passsword"),
                        hintText: ("Your Confirm Password"),
                        suffix: Icon(Icons.remove_red_eye),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 3)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 3)),
                      ),
                      validator: (value) {
                        if (passwordconfirmcontroller.text.isEmpty) {
                          return "confirm password";
                        } else if (passwordconfirmcontroller.text !=
                            Passwordcontroller.text) {
                          return "password do not match";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      if (_formKey.currentState!.validate()) {
                        email = emailcontroller.text;
                        password = Passwordcontroller.text;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin(),
                            ));
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    child: Text(
                      "sign up",
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
                          style: TextStyle(fontSize: 20)),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "sign in",
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
