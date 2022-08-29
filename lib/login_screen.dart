import 'package:belajar_flutter/sign_up_screen.dart';
import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Spacer(flex: 3,),
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
                String fullName = emailController.text.toString();
                String password = passwordController.text.toString();

                print("fullName => $fullName");
                print("password => $password");
                
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) {
                //       return HomeScreen();
                //     })
                // );
              },
              child: const Text("Log in"),
            ),
            SizedBox(height: 16,),
            new InkWell(
              onTap: () {
                print("forgot password");
              },
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
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
                )
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
              onTap: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    })
                );
              },
              child: const Text(
                "Don't have account? Sign Up",
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
