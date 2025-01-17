import '../Model/userModel.dart';
import 'package:http/http.dart' as http;

import 'package:http/http.dart';

class UsersRepo {
  static const usersUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<UsersModel>> getUsers() async {
    Response response = await http.get(Uri.parse(usersUrl));
    return usersModelFromJson(response.body);
  }
}