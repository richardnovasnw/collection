import 'package:flutter/material.dart';
import 'package:never/code_runner.dart';
import 'package:never/modal/user.dart';
import 'package:never/service/user_api.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Text('Update'),
            onPressed: () async {
              http.Response result = await UserApi().updatedata();
              if (result.statusCode == 200) {
                print('success');
              } else {
                print(result.statusCode);
                print(result.reasonPhrase);
              }
            },
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            child: Icon(Icons.delete),
            onPressed: () async {
              http.Response result = await UserApi().deleteUser();
              if (result.statusCode == 200) {
                print('success');
              } else {
                print(result.statusCode);
                print(result.reasonPhrase);
              }
            },
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () async {
              http.Response result = await UserApi().postData();
              if (result.statusCode == 200) {
                print('success');
              } else {
                print(result.statusCode);
                print(result.reasonPhrase);
              }
            },
          ),
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                CodeRunner().runCode();
              }),
        ],
      ),
      body: FutureBuilder<List<User>>(
        future: UserApi().getAllUser(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final users = snapshot.data;

          return ListView.builder(
            itemCount: users!.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text(user.title),
                  subtitle: Text(user.body),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
