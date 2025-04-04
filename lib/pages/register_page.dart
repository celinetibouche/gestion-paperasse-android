import 'package:flutter/material.dart'; // Interface graphique
import 'package:http/http.dart' as http; // Pour envoyer les données vers PHP
import 'package:gestionpaprasse/pages/accueil.dart';  // Redirection après l'inscription

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String message = ''; // Message de retour (succès ou erreur)

  // Fonction appelée quand l'utilisateur clique sur "S'inscrire"
  Future<void> register() async {
    final url = Uri.parse('http://monapp.x10.mx/register.php');


    final response = await http.post(
      url,
      body: {
        'username': _usernameController.text,
        'password': _passwordController.text,
      },
    );
    print('Réponse du serveur : ${response.body}'); //

    setState(() {
      message = response.body; // Affiche la réponse de PHP
    });

    // Si inscription réussie → redirection vers Accueil
    if (response.body.contains("Inscription réussie")) {
      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AccueilPage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Créer un compte"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Nom d’utilisateur',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: register,
              child: const Text("S’inscrire"),
            ),
            const SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(
                color: message.contains("réussie") ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
