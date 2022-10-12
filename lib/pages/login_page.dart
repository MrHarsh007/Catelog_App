import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Catelog_App/pages/home_page.dart';
import 'package:Catelog_App/pages/productPage.dart';
import 'package:Catelog_App/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(children: [
              Image.asset(
                "assets/images/loginimg.jpg",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Welcome $name",
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      initialValue: "admin",
                      decoration: const InputDecoration(
                        hintText: "Enter your UserName",
                        labelText: "UserName",
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Username Can not be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      initialValue: "admin123",
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Can not be empty";
                        } else if (value.length < 6) {
                          return "Minimum Password length should be 6";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),

              // InkWell(
              //   onTap: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   child: Container(
              //     height: 30,
              //     width: 100,
              //     alignment: Alignment.center,

              //     decoration: BoxDecoration(
              //         color: Colors.purpleAccent,
              //         borderRadius: BorderRadius.circular(8)),
              //     // ignore: prefer_const_constructors
              //     child: Text(
              //       "Login",
              //       // ignore: prefer_const_constructors
              //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              ElevatedButton(
                  onPressed: () => moveToHome(context),
                  child: changeButton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text("Login",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                  style: TextButton.styleFrom(
                      minimumSize: const Size(100, 40),
                      backgroundColor:
                          const Color.fromARGB(255, 86, 160, 221))),
            ]),
          ),
        ),
      ),
    );
  }
}
