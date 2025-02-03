
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}


class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build( BuildContext context)
  {


    return Scaffold(
      appBar: AppBar(title:
      Text("Login Form")),
      body: Padding(
        padding:
        EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration:
              InputDecoration(
                labelText:"Email",
                hintText:"Enter your name",
                border:
                OutlineInputBorder(),
                prefixIcon:Icon(Icons.email),
              ),
            ),
            SizedBox(height:16.0),

            TextField(
              controller:passwordController,
              obscureText: true,
              decoration:
              InputDecoration(
                labelText: "password",
                hintText: "Enter your password",
                border:
                OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height:16.0),
            ElevatedButton(
              onPressed:() {
                String email = emailController.text;
                String password = passwordController.text;
                print("Email:$email, password:$password");
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}







































