import 'package:flutter/material.dart';
import 'package:flutter_n3/HomeScreen/home_screen.dart';
import 'package:flutter_n3/LoginGoogle/google_auth.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          'Login with Google',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.blue[50], // Fundo mais amigável
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Espaçamento ao redor
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bem-vindo!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800], // Cor do texto
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Faça login para continuar',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey[600], // Tom mais suave
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Image.asset(
                'images/google_logo.png',
                width: 200,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Fundo branco
                    foregroundColor: Colors.black, // Texto preto
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 3,
                  ),
                  onPressed: () async {
                    await FirebaseServices().signInWithGoogle();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(MdiIcons.google),
                      const SizedBox(width: 10),
                      const Text(
                        'Login com Google',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
