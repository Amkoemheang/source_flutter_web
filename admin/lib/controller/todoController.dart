import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx/services/models/model_post.dart';
import 'package:getx/services/service.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  var isLoading = true.obs;
  var postModel = List<PostModel>().obs;
  List<PostModel> newArray = List<PostModel>().obs;
  var searchPost = List<PostModel>().obs;
  String id;
  String userId;
  String title = "";
  String body = "";
  int page = 1;
  int limit = 10;


  @override
  void onInit() {
    super.onInit();
  }
  refreshTodo() async {
    isLoading(false);
    try {
      fetchFinalTodoTesting();
    } catch (e) {}
  }
  updatePageAndLimit(int page) async{
    var resData = await DataServices.getDataTesting(page, limit);
    // ignore: deprecated_member_use, invalid_use_of_protected_member
    postModel.value = resData;
    return resData;
  }
  fetchFinalTodoTesting() async {
    isLoading(false);
    try {
      var todo = await DataServices.getDataTesting(page,limit);
      if (todo != null) {
        // ignore: deprecated_member_use, invalid_use_of_protected_member
        postModel.value = todo;
        newArray.addAll(todo);
        print("information  todo $todo");
      } else {
        isLoading(true);
      }
    } catch (e) {
      isLoading(false);
    }
    print("Information newArray $newArray");
  }

  Future<PostModel> updatePost(int userId, int id, String title, String body) async {
    PostModel _postModel;
    try {
      _postModel = await UpdateDataTodo.updateInfo(userId, id, title, body);
    } catch (e) {
    }
    return _postModel;
  }

  editTodo() {
    isLoading(false);
    try {} catch (e) {}
  }

  deleteTodoTesting(int id) async {
    PostModel postModelDeleted;
    try {
      postModelDeleted = await DeleteDataTodo.deleteInfo(id);
    } catch (e) {
      print("Information e $e");
      return postModelDeleted;
    }
  }

  Future<PostModel> insertTodoTesting(int userId, int id, String title, String body) async {
    PostModel postModelInsert;
    try {
      postModelInsert = await InsertSData.insertInfo(id, userId, title, body);
    } catch (e) {
      print("Information e ====================== $e");
    }
    return postModelInsert;
  }

  @override
  void onReady() {
    // called after the widget is rendered on screen
    super.onReady();
  }

  @override
  void onClose() {
    // called just before the Controller is deleted from memory
    super.onClose();
  }
}
