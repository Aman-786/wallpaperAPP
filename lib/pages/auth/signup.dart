import 'package:flutter/material.dart';
import 'package:unsplasnapi/widget/button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController uname= TextEditingController();
  TextEditingController pass= TextEditingController();
  TextEditingController cpass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text("Sign UP",style: TextStyle(
                color: Colors.black,
                fontSize: 35
            ),),
            const SizedBox(height: 40),
            //email
            TextFormField(
                controller: uname,
                decoration: InputDecoration(
                hintText: "Email@email.com",
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
            )),
            const SizedBox(height: 30),
            //password
            TextFormField(
                controller: pass,
                decoration: InputDecoration(
                hintText: "password",
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
            )),
            const SizedBox(height: 30),
            //confirm pass
            TextFormField(
                controller: cpass,
                decoration: InputDecoration(
                hintText: "confirm-password",
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
            )),
            const SizedBox(height: 30),
            //button
            CustomButton(text: "Sign up", onPressed: (){
              print("click");
            }),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("already have acoount ?"),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text("sign in",style: TextStyle(color: Colors.blue),))
              ],),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Created by aman kumar"),
              ],),
            const SizedBox(height: 20,)
          ],
        ),
      ),

    );
  }
}
