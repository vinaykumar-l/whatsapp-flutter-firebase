import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:threads/routes/route_names.dart';
import 'package:threads/utils/type_def.dart';
import 'package:threads/widgets/auth_input.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController nameController = TextEditingController(text: "");
  final TextEditingController confirmPasswordController =
      TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

// method to submit the form
  void submit() {
    if (_form.currentState!.validate()) {
      print("submitted");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _form,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Register Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text("join the community of threads!!!"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AuthInput(
                  hintText: "Enter your name",
                  label: "Name",
                  controller: nameController,
                  validatorCallback: ValidationBuilder()
                      .required()
                      .minLength(4)
                      .maxLength(30)
                      .build(),
                ),
                const SizedBox(
                  height: 10,
                ),
                AuthInput(
                  hintText: "Enter your email",
                  label: "Email",
                  controller: emailController,
                  validatorCallback:
                      ValidationBuilder().required().email().build(),
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthInput(
                  hintText: "Enter your password",
                  label: "Password",
                  controller: passwordController,
                  isPasswordField: true,
                  validatorCallback: ValidationBuilder()
                      .required()
                      .minLength(8)
                      .maxLength(30)
                      .build(),
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthInput(
                  hintText: "Confirm your password",
                  label: "Confirm Password",
                  controller: confirmPasswordController,
                  isPasswordField: true,
                  validatorCallback: (args) {
                    if (passwordController != args) {
                      return "Password not matched";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: submit,
                    style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all(const Size.fromHeight(40))),
                    child: const Text("Submit")),
                const SizedBox(height: 20),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: " login ",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(RouteNames.login)),
                ], text: "Already have an account ?"))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
