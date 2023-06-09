import 'package:dio/dio.dart';

import 'api.dart';


class ApiService
{
  static final dio=Dio();
  //GET
  static Future<Response> getData(String path)
  async {
    String url=ApiUrl.baseUrl+ path;
    
    final response=await dio.get(url);
    if(response.statusCode==200)
    {
      return response;
    }else
    {
      return throw response;
    }

  }  }