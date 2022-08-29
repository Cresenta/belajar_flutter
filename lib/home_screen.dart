import 'package:belajar_flutter/login_screen.dart';
import 'package:belajar_flutter/sign_up_screen.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.only(top: 24, bottom: 24, left: 48, right: 48),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 4,),
            Image.asset("assets/flutter_icon.png", width: 70, height: 70,),
            const SizedBox(height: 8,),
            const Text(
              "EVON",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Spacer(),
            const Text(
              "Discover upcoming events near you",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
            Spacer(flex: 3,),
            // const SizedBox(height: 60,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(60),
              ),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                     return SignUpScreen();
                    })
                  );
                },
                child: const Text("Sign Up")
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size.fromHeight(60),
                side: BorderSide(width: 1.0, color: Colors.blue),
              ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      })
                  );
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Colors.blue),
                )
            ),
            SizedBox(height: 48,),
            new InkWell(
              onTap: () {
                print("skip");
              },
              child: const Text(
                "Skip for now",
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
