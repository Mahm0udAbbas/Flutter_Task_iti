import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfirstproj/layout/nav.dart';
import 'package:myfirstproj/screens/chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nav(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    final valid = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.phone),
          backgroundColor: Colors.amber,
          title: const Text("Login"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notification_add),
            ),
          ]),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Image(
                  width: 100,
                  image: NetworkImage(
                    "https://lush.com.ph/cdn/shop/articles/sunflower_petal_infusion_1024x1024.jpg?v=1562727399",
                  )),
            ),
            SizedBox(
              height: 80,
            ),
            Form(
              key: valid,
              child: Column(
                children: [
                  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your Email address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Email Adress",
                        // hintText: "",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          if (valid.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Chat()),
                            );
                          }
                        },
                        child: Text("Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
