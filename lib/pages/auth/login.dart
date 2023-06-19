import 'package:flutter/material.dart';
import 'package:unsplasnapi/pages/auth/forget.dart';
import 'package:unsplasnapi/pages/auth/signup.dart';
import 'package:unsplasnapi/widget/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController uname= TextEditingController();
  TextEditingController pass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text("Login",style: TextStyle(
              color: Colors.black,
              fontSize: 35
            ),),
            const SizedBox(height: 40),
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
            CustomButton(text: "login", onPressed: (){
              print("click");
            }),
            const SizedBox(height: 20),
            //don't rem pass
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("don't have account ?"),
                TextButton(onPressed: (){
                  print("go");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupScreen()),
                  );
                },
                    child: const Text("sign up",style: TextStyle(color: Colors.blue),))
              ],),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("don't remember password ?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPasswordScreen()));
                }, child: const Text("Forget",style: TextStyle(color: Colors.blue),))
              ],),
            const SizedBox(height: 20,)
          ],
        ),
      ),

    );
  }
}
