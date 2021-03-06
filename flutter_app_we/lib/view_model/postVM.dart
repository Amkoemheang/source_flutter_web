import 'package:flutter/cupertino.dart';
import 'package:flutter_app_we/locator.dart';
import 'package:flutter_app_we/model/base_model.dart';
import 'package:flutter_app_we/model/model_post.dart';
import 'package:flutter_app_we/navigation/navigationService.dart';
import 'package:flutter_app_we/route/route.dart';
import 'package:flutter_app_we/service/postService.dart';
import 'package:flutter_app_we/user/update_info.dart';

class PostVM extends BaseModel{
  PostService postService = locator<PostService>();
  UpdateService updateService = locator<UpdateService>();
  NavigationService navigationService = locator<NavigationService>();
  DeleteService deleteService = locator<DeleteService>();

  TextEditingController textControllerId = new TextEditingController();
  TextEditingController textControllerTitle = new TextEditingController();
  TextEditingController textControllerComplete = new TextEditingController();
  TextEditingController textControllerUserId = new TextEditingController();

  passData(int userId , int id, String title, String body){
    textControllerTitle.text = title;
    textControllerId.text = id.toString();
    textControllerComplete.text = body;
    textControllerUserId.text = userId.toString();
  }

  String id = '';
  String userId = '';
  String title = "";
  String body = "";
  int page = 1;
  int limit = 10;
  bool isLoading = true;
  bool isError = false;
  List<PostModel> newArray = [];
  late List<PostModel> postModel = [];


  Future<void>fetchFinalTodoTesting() async {
    try {
      var todo = await postService.getPost(page, limit);
      // ignore: unnecessary_null_comparison
      if (todo != null) {
        postModel = todo;
        isLoading = false;
        notifyListeners();
      } else {
          isLoading = true;
      }
    } catch (e) {
      isLoading = false;
    }
  }
  Future updatePageAndLimit(int page) async{
    var resData = await postService.getPost(page, limit);
    postModel = resData;
    notifyListeners();
    return resData;
  }
  Future<PostModel> updateInfo(int userId, int id, String title,String body) async {
    PostModel postModel;
    postModel = await updateService.updatePostOne(userId,id,title,body);
    notifyListeners();
    return postModel;
  }
  Future<PostModel> delete(int id) async{
    try{
     postModel = await deleteService.delete(id) as List<PostModel>;
      notifyListeners();
    }catch(e){
      
    }
    return postModel as PostModel;
  }
  navigateToUpdate(UpdateTodoBody body) {
    navigationService.navigateTo(RouteName.UPDATE);
   
  }

  navigateToPage(String routeName,model,int index, Function(PostModel model) onComplete){
    try{
       navigationService.navigateToPage(routeName,model,index, (_model) {
         onComplete(_model);
       });
       isLoading = false;
       notifyListeners();
    }catch(e){
      isLoading = true;
    }
  }
  navigateToCreateUser() {
    navigationService.navigateTo(RouteName.CREATE_USER);
  }
}