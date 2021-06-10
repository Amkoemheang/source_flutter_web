import 'dart:io';

import 'package:getx/application_exception/application_exception.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class BaseServiceHelper{
  final String _baseUrl = "https://newsapi.org";
  dynamic _returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        var jsonResponse = json.decode(response.body.toString());
        return jsonResponse;
      case 400:
        throw BadRequestException(response.body.toString());
        break;
      case 401:
        throw UnauthorisedException(response.body.toString());
      case 500:
        throw FetchDataException(response.body.toString());
      default:
        throw FetchDataException("Error occurred while communication with Server with StatusCode: ${response.statusCode}");
    }
  }
}