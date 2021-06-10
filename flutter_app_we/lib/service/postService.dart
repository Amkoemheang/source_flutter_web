import 'package:flutter_app_we/api/api.dart';
import 'package:flutter_app_we/locator.dart';
import 'package:flutter_app_we/model/model_post.dart';

class PostService{
  PostApi postApi = locator<PostApi>();
  Future<List<PostModel>> getPost(int _page, int limit) async{
    return postApi.getDataTesting(_page, limit);
  }
}
class UpdateService{
  UpdateApi updatePost = locator<UpdateApi>();
  Future<PostModel> updatePostOne(int userId, int id, String title, String body) async{
    return await updatePost.updatePostApi(userId, id, title, body);
 }
}
class DeleteService{
  DeleteApi deleteApi = locator<DeleteApi>();
  Future<PostModel> delete(int id) async{
    return await deleteApi.deletePostApi(id);
  }
}
