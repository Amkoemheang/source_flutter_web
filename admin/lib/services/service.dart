import 'dart:convert';
import 'dart:io';
import 'package:getx/services/constants/base_constants.dart';
import 'package:http/http.dart' as http;
import 'models/model_post.dart';

class DataServices {
  static var client = http.Client();
  static Future<List<PostModel>> getDataTesting(int _page, int limit) async {
    print("information page in service $_page");
    var response =  await client.get(Uri.parse("${ConstantApi.baseUrlOne}?_page=$_page&_limit=$limit"));
    print("Request Url ${Uri.parse("${ConstantApi.baseUrlOne}?_page=$_page&_limit=$limit")}");
    if (response.statusCode == 200) {
      var data = response.body;
      print("Posts Response === $data");
      return postFromJson(data);
    } else {
      return null;
    }
  }
}

class Search{
  static var client = http.Client();
  static Future<List<PostModel>> searchPost(String query)async{
    var responseSearch = await client.get(Uri.parse(ConstantApi.baseUrl));
    if(responseSearch.statusCode == 200){
      var dataSearch = responseSearch.body;
      return postFromJson(dataSearch);
    }else{
      return null;
    }
  }
}
class UpdateDataTodo{
  static var client = http.Client();
  static Future<PostModel> updateInfo(int userId, int id, String title,String body) async{
    final bodyOne = <String,dynamic>{
      'userId':userId,
      'id':id,
      'title':title,
      'body':body,
    };
    var responseUpdate = await client.put(Uri.parse("${ConstantApi.baseUrl}/$id"),
        headers:{'Content-Type': ConstantApi.jsonContentType},body: jsonEncode(bodyOne)
    );
    var parsed = json.decode(responseUpdate.body);
    if(responseUpdate.statusCode >= 400){
      throw HttpException(responseUpdate.body);
    }
    PostModel postModel = PostModel.fromJson(parsed);
    return postModel;
  }
}
class InsertSData{
  static var client  = http.Client();
  static Future<PostModel> insertInfo(int userId, int id,String title,String body) async{
    final bodyOne = <String,dynamic>{
      'userId':userId,
      'id':id,
      'title':title,
      'body':body,
    };
    var responseInsert = await client.post(Uri.parse(ConstantApi.baseUrl),
      headers: {'Content-Type': ConstantApi.jsonContentType},body: jsonEncode(bodyOne));
    print("Status Code ${responseInsert.statusCode}");
    var parsed = json.decode(responseInsert.body);
    if(responseInsert.statusCode >= 400){
      throw HttpException(responseInsert.body);
    }
    PostModel postModel = PostModel.fromJson(parsed);
    return postModel;
  }
}
class DeleteDataTodo{
  static var client = http.Client();
  static Future<PostModel> deleteInfo(int id) async{
    var responseDelete = await client.delete(Uri.parse("${ConstantApi.baseUrl}/$id"));
    print("Hello responseDelete: ${responseDelete.statusCode}");
    var parsedOne = json.decode(responseDelete.body);
    if(responseDelete.statusCode >= 400){
      throw HttpException(responseDelete.body);
    }
    PostModel postModel = PostModel.fromJson(parsedOne);
    return postModel;
  }
}