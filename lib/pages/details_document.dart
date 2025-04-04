import 'package:flutter/material.dart'; // Importation du framework Flutter

class DetailsDocumentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Détails du Document")), // Titre de la page
      body: Center(
        child: Text("Informations sur un document spécifique"), // Texte temporaire
      ),
    );
  }
}
