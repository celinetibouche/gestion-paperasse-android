import 'package:flutter/material.dart'; // Importation du framework Flutter

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold permet de créer une structure de page avec une barre en haut et un corps
      appBar: AppBar(title: Text("Accueil")), // Barre d’application avec un titre
      body: Center( // Centre le contenu sur l’écran
        child: Column( // Utilisation d'une colonne pour aligner les boutons verticalement
          mainAxisAlignment: MainAxisAlignment.center, // Centre les boutons verticalement
          children: [
            ElevatedButton( // Premier bouton : Voir les documents
              onPressed: () {
                Navigator.pushNamed(context, '/liste-documents'); // Change de page vers la liste des documents
              },
              child: Text("Voir les documents"), // Texte affiché sur le bouton
            ),
            SizedBox(height: 20), // Espacement entre les boutons
            ElevatedButton( // Deuxième bouton : Ajouter un document
              onPressed: () {
                Navigator.pushNamed(context, '/ajouter-document'); // Change de page vers l’ajout de document
              },
              child: Text("Ajouter un document"), // Texte affiché sur le bouton
            ),
          ],
        ),
      ),
    );
  }
}
