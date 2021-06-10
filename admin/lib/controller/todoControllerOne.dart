import 'package:get/get.dart';
import 'package:getx/repository/TodoRepository.dart';
import 'package:getx/services/models/todoModel.dart';

class TodoControllerOne extends GetxController {
  TodoRepository _todoRepository;
  // ignore: non_constant_identifier_names
  TodoListControllerOne() {
    getTodoList();
  }

  RxList<TodoModel> todoList;
  RxBool isLoading = false.obs;
  getTodoList() async {
    final result = await _todoRepository.getTodo();
    hideLoading();
    if (result != null) {
      todoList = result.obs;
    }else{
      print("Get Todo Failed");
    }
  }

  showLoading() {
    isLoading.toggle();
  }

  hideLoading() {
    isLoading.toggle();
  }
}
