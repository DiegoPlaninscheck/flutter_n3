import 'package:flutter/material.dart';
import 'package:flutter_n3/HomeScreen/home_screen.dart';
import 'package:flutter_n3/LoginGoogle/google_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/google_logo.png',
                width: 100), // Adicione o logo na pasta assets
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await FirebaseServices().signInWithGoogle();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ));
              },
              child: const Text('Login com Google'),
            ),
          ],
        ),
      ),
    );
  }
}
