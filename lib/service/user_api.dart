import 'dart:convert';
import 'dart:html';

import 'package:never/code_runner.dart';
import 'package:never/modal/built_user.dart';
import 'package:never/modal/user.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<List<User>> getAllUser() async {
    final getuser =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final List responseBody = jsonDecode(getuser.body);
    return responseBody.map((e) => User.fromJson(e)).toList();
  }

  Future<BuiltUser> getUser() async {
    final getUser = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    BuiltUser user = BuiltUser.fromJson(getUser.body)!;
    return user;
  }

  Future<http.Response> deleteUser() async {
    final http.Response response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    return response;
  }

  Future<http.Response> postData() async {
    BuiltUser body = CodeRunner().runCode();
    http.Response post =
        await http.post(Uri.parse('https://jsonplaceholder.typicode.com/posts'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(
              <String, String>{
                'title': body.title,
                'body': body.body,
                'id': body.id.toString(),
                'userId': body.userId.toString(),
                'values': body.values.toString(),
                'list2': body.list2.toString()
              },
            ));
    return post;
  }

  Future<http.Response> updatedata() async {
    BuiltUser body = CodeRunner().runCode();
    BuiltUser user = await getUser();
    user.rebuild((b) => b
      ..title = 'Apple'
      ..values.map((s) => s * 10));

    http.Response put = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: (jsonEncode(
        <String, String>{
          'title': body.title,
          'values': body.values.toString(),
          'list2': body.list2.toString()
        },
      )),
    );
    return put;
  }
}
