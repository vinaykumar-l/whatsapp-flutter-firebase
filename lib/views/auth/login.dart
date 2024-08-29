import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: 130,
        ),
        Image.asset(
          "assets/banner.png",
          height: 100,
        ),
        Text(
          "Crée ton compte avec ton\nadresse e-mail",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        Container(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _entryFeild('Enter email'),
              _entryFeild('Enter password'),
              Container(
                height: MediaQuery.of(context).size.height / 10,
              ),
            ],
          ),
        )
      ])),
    );
  }

  Widget _entryFeild(
    String hint,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0.0),
          labelText: hint,
          hintText: hint,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
          prefixIcon: Icon(
            Icons.supervised_user_circle,
            color: Colors.white,
            size: 18,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 163, 163, 163), width: 1.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          floatingLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(255, 61, 61, 61), width: 1.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
