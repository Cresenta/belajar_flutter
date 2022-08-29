import 'package:belajar_flutter/login_screen.dart';
import "package:flutter/material.dart";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var _passwordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.only(top: 24, bottom: 24, left: 48, right: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 4,),
            Image.asset("assets/flutter_icon.png", width: 70, height: 70,),
            Spacer(flex: 2,),
            TextFormField(
              controller: fullNameController,
              decoration: const InputDecoration(
                labelText: "Full name",
                fillColor: Color.fromRGBO(211, 211, 211, 0.5),
                filled: true,
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                fillColor: Color.fromRGBO(211, 211, 211, 0.5),
                filled: true,
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              controller: passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                  labelText: "Password",
                  fillColor: Color.fromRGBO(211, 211, 211, 0.5),
                  filled: true,
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                    ),
                    onPressed: _togglePasswordVisibility,
                  )
              ),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(60),
              ),
              onPressed: () async {
                String fullName = fullNameController.text.toString();
                String email = emailController.text.toString();
                String password = passwordController.text.toString();

                print("fullName => $fullName");
                print("email => $email");
                print("password => $password");
              },
              child: const Text("Sign Up"),
            ),
            SizedBox(height: 48,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 24),
                    child: Divider(
                      color: Color.fromRGBO(211, 211, 211, 0.5),
                    ),
                  ),
                ),
                Text("or"),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 24),
                    child: Divider(
                      color: Color.fromRGBO(211, 211, 211, 0.5),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(60),
                  padding: EdgeInsets.all(0),
                ),
                onPressed: () {},
                icon: Image.asset("assets/facebook_icon.png", width: 60, height: 60,),
                label: Row(
                  children: [
                    Spacer(),
                    Text("Sign Up with Facebook"),
                    Spacer(),
                  ],
                )
            ),
            SizedBox(height: 16,),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size.fromHeight(60),
                padding: EdgeInsets.all(0),
                side: BorderSide(width: 1.0, color: Color.fromRGBO(211, 211, 211, 0.5),),
              ),
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color.fromRGBO(211, 211, 211, 0.5),)
                ),
                child: Image.asset("assets/google_icon.png", width: 60, height: 60,),
              ),
              label: Row(
                children: [
                  Spacer(),
                  Text(
                    "Sign Up with Google",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Spacer(),
            new InkWell(
              onTap: () {
                print("ToS");
              },
              child: const Text(
                "By signing up you accept the Terms of Service and Privacy Policy",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Spacer(),
            new InkWell(
              onTap: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    })
                );
              },
              child: const Text(
                "Already have an account? Log in",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
