import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(hintText: "Name"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                registerUser();
              },
              child: const Text("Register"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // Text color
              ),
            )
          ],
        ),
      ),
    );
  }

  void registerUser() async {
    var url = "add post url";
    var data = {
      "name": nameController.text,
      "email": emailController.text,
      "picture": "add image url",
      "password": passwordController.text,
    };
    var bodyy = json.encode(data);
    var urlParse = Uri.parse(url);
    http.Response response = await http.post(
      urlParse,
      body: bodyy,
      headers: {
        "Content-Type": "application/json"
      },
    );
    var dataa = jsonDecode(response.body);
    print(dataa);
  }
}

