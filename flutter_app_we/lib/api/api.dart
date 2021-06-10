import 'dart:io';
import 'package:flutter_app_we/constant/constant.dart';
import 'package:flutter_app_we/model/model_post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class PostApi {
   var client = http.Client();
  Future<List<PostModel>> getDataTesting(int _page, int limit) async {
    var response =  await client.get(Uri.parse("${ConstantApi.baseUrlOne}?_page=$_page&_limit=$limit"));
    if (response.statusCode == 200) {
      var data = response.body;
      return postFromJson(data);
    } else {
      // ignore: null_check_always_fails
      return null!;
    }
  }
}
class UpdateApi{
  var client = http.Client();
  Future<PostModel> updatePostApi(int userId, int id, String title, String body) async{
    final bodyOne = <String,dynamic>{
      'userId': userId,
      'id':id,
      'title':title,
      'body': body
    };
    var responseUpdate = await client.put(Uri.parse("${ConstantApi.baseUrlOne}/$id"),
        headers:{'Content-Type': ConstantApi.jsonContentType},body: jsonEncode(bodyOne)
    );
    var parsed = json.decode(responseUpdate.body);
    if(responseUpdate.statusCode >= 400){
      throw HttpException(responseUpdate.body);
    }
    PostModel updatePostModel = PostModel.fromJson(parsed);
     return updatePostModel;
  }
}
class DeleteApi{
  var client = http.Client();
  Future<PostModel> deletePostApi(int id) async{
    var responseDelete = await client.delete(Uri.parse("${ConstantApi.baseUrlOne}/$id"));
    var parsedOne = json.decode(responseDelete.body);
    if(responseDelete.statusCode >= 400){
      throw HttpException(responseDelete.body);
    }
    PostModel postModel = PostModel.fromJson(parsedOne);
    return postModel;
  }
}