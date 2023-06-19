import 'package:flutter/material.dart';
import 'package:unsplasnapi/widget/button.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(215, 231, 255, 0.694),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, spreadRadius: 1, blurRadius: 2)
                  ]),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Forget password",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "email@email.com",
                        enabledBorder: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(text: "send mail", onPressed: () {}),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("remember password ?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "back",
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
