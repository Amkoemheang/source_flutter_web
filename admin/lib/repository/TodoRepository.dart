import 'package:getx/services/models/todoModel.dart';

abstract class TodoRepository{
  Future<List<TodoModel>> getTodo();

}