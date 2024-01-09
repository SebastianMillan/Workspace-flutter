import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xFFE62F16),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Image(image: AssetImage('images/path_logo.png'), width: 200),
          const Padding(
            padding: EdgeInsets.only(bottom: 120),
            child: Text('Beautiful, Private Sharing',
                style: TextStyle(
                    color: Color.fromARGB(255, 250, 125, 109), fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color(0xFFE62F16),
                  fixedSize: const Size(250, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: const BorderSide(color: Color(0xFFE62F16)),
                ),
                onPressed: () {},
                child: const Text("Sign up",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Already have a path account?',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 140, 125), fontSize: 15)),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 140, 125),
                fixedSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                side: const BorderSide(
                  color: Color.fromARGB(255, 255, 140, 125),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Log in",
                style: TextStyle(fontSize: 20),
              )),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              width: 260,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 140, 125)),
                      children: [
                        TextSpan(text: 'By using Path, you agree to Path`s '),
                        TextSpan(
                            text: 'Terms of Use ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decoration: TextDecoration.underline)),
                        TextSpan(text: 'and '),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decoration: TextDecoration.underline))
                      ])),
            ),
          ),
        ])
      ]),
    ));
  }
}
