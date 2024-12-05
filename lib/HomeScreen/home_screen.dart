import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_n3/LoginGoogle/google_auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: Colors.blue[50], // Fundo consistente com a tela de login
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Espaçamento ao redor
          child: user == null
              ? const Text(
                  'Nenhum usuário autenticado.',
                  style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  textAlign: TextAlign.center,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(user.photoURL ?? ''),
                      backgroundColor: Colors.grey[300],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      user.displayName ?? 'Usuário',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      user.email ?? 'Email não disponível',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey[600],
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 24,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () async {
                        await FirebaseServices().googleSignOut();
                        Navigator.of(context).pushReplacementNamed("/");
                      },
                      child: const Text(
                        'Sair',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
