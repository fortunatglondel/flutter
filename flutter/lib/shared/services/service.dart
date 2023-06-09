import 'package:dio/dio.dart';
import 'package:flutter_gestion/shared/services/service_api.dart';


import '../../pages/cours/etudiant_page.dart';



class EtudiantService
{

  //cours

  Future<List<Etudiant>> getAllEtudiant() async
  {
   Response response=await ApiService.getData("Etudiant") ;

    if(response.statusCode==200)
    {
      List<dynamic> results=response.data;
      List<Etudiant> coursList=[];

      for(dynamic element in results)
      {
        Etudiant cat=Etudiant(nom: nom, prenom: prenom, matricule: matricule, email: email, password: password, classe: classe, tuteur: tuteur);
        coursList.add(cat);
      }

      return coursList;

    }else
    {
      return throw response;
    }
  }

}