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
          const Image(image: AssetImage('images/path_logo.png')),
          const Text('Beautiful, Private Sharing'),
          ElevatedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFFE62F16),
                side: const BorderSide(
                  color: Color(0xFFE62F16),
                ),
              ),
              onPressed: () {},
              child: const Text("Sign up")),
          const Text('Already have a path account?'),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                side: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              onPressed: () {},
              child: const Text("Log in")),
          const Text(
              'By using Path, you agree to Path`s Terms of User and Privacy Policy'),
        ])
      ]),
    ));
  }
}
