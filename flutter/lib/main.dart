import 'package:flutter/material.dart';
import 'package:flutter_gestion/pages/cours/etudiant_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
   
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        //la route initiale
        initialRoute: "/",
        // toutes routes de l'application
          routes: {
          //la page homme est associe a la route pricipale
          "/": (context) => StudentListPage(),
         
        }


     
    );
  }
}




