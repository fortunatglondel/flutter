import 'package:flutter/material.dart';

class Classe {
  final String libelle;
  final String filiere;
  final String niveau;

  Classe(
      {required this.libelle, required this.filiere, required this.niveau});
}

class ClasseListPage extends StatelessWidget {
  final List<Classe> students = [
    Classe(
      libelle: 'GLRS 3',
      filiere: 'GLRS',
      niveau: 'L3',
    ),
    Classe(
      libelle: 'IAGE 3',
      filiere: 'IAGE',
      niveau: 'L3',
    ),
    Classe(
      libelle: 'TTL 3',
      filiere: 'TTL',
      niveau: 'L3',
    ),
    // Ajoutez plus d'étudiants ici...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des étudiants'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            leading: Image.network(
              student.niveau,
              width: 50,
              height: 50,
            ),
            title: Text(student.libelle),
            subtitle: Text('ID étudiant: ${student.filiere}'),
            onTap: () {
              // Gérer le tap sur un étudiant
              // Vous pouvez naviguer vers une page de détails de l'étudiant, par exemple
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => StudentDetailPage(student: student),
              //   ),
              // );
            },
          );
        },
      ),
    );
  }
}
