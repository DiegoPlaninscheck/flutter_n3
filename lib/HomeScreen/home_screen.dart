import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_n3/LoginGoogle/google_auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseServices().googleSignOut();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Center(
        child: user == null
            ? const Text('Nenhum usuário autenticado.')
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(user.photoURL ?? ''),
                  ),
                  const SizedBox(height: 20),
                  Text('Nome: ${user.displayName ?? ''}'),
                  Text('Email: ${user.email ?? ''}'),
                ],
              ),
      ),
    );
  }
}
