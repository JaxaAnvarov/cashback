import 'dart:convert';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:http/http.dart' as http;
class UsersData {
  static Future<List<Users>> _getUsersFromApi() async {
    var response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');
    debugPrint(response.data);
    return ((response.data as List).map(
      (e) => Users.fromJson(e),
    )).toList();
  }

  static Future<List<Users>> get getUsers => _getUsersFromApi();

  static Future<List<Users>> _getUsers() async{
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List).map((e) => Users.fromJson(e)).toList();
    } else {
      throw Exception('Error Has Data');
    }
  }

  static Future<List<Users>> get getUser => _getUsers();
}
