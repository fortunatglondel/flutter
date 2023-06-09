import 'package:flutter/material.dart';

class Etudiant {
  final String nom;
  final String prenom;
  final String matricule;
  final String tuteur;
  final String  classe;
  final String email;
  final String password;

  Etudiant(
      {required this.nom, required this.prenom, required this.matricule,
      required this.email,
      required this.password,
      required this.classe,
      required this.tuteur});
}

class StudentListPage extends StatelessWidget {
  final List<Etudiant> students = [
    Etudiant(
      nom: 'John Smith',
      classe: '2021001',
      prenom: 'ht',
        tuteur: '2021001',
      email: 'ht',
        matricule: 'ht',
         password: 'ht',
    ),
    Etudiant(
      nom: 'John Smith',
      classe: '2021001',
      prenom: 'ht',
      tuteur: '2021001',
      email: 'ht',
      matricule: 'ht',
      password: 'ht',
    ),
    Etudiant(
      nom: 'John Smith',
      classe: '2021001',
      prenom: 'ht',
      tuteur: '2021001',
      email: 'ht',
      matricule: 'ht',
      password: 'ht',
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
              student.nom,
              width: 50,
              height: 50,
            ),
            title: Text(student.nom),
            subtitle: Text('ID étudiant: ${student.nom}'),
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
