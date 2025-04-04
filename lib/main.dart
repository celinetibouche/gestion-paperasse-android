import 'package:flutter/material.dart'; // Import du framework Flutter
import 'pages/accueil.dart'; // Page d'accueil principale
import 'pages/liste_documents.dart'; // Page qui affiche la liste des documents
import 'pages/details_document.dart'; // Page pour voir les détails d'un document
import 'pages/ajouter_document.dart'; // Page pour ajouter un document
import 'pages/register_page.dart'; // Page d'inscription utilisateur

void main() {
  runApp(MyApp()); // Point d'entrée de l'application
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Masque le bandeau "DEBUG"
      title: 'Gestion de Documents', // Nom de l'application
      theme: ThemeData(
        primarySwatch: Colors.blue, // Thème de couleur bleu
      ),
      // On démarre directement sur la page d'inscription
      home: RegisterPage(),
    );
  }
}
