import 'dart:convert';
import 'dart:io';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:never/modal/user.dart';
import 'modal/built_user.dart';

class CodeRunner {
  BuiltUser runCode() {
    BuiltUser user1 = BuiltUser((b) => b
      ..userId = 11
      ..body = 'hello'
      ..title = 'Hey'
      ..id = 1
      ..values.addAll([1, 2, 3, 4, 5])
      ..list2.addAll([11, 12, 13, 14, 15, 16, 17]));

    BuiltUser user2 = BuiltUser((b) => b
      ..userId = 222211
      ..body = 'hello'
      ..title = 'Hey'
      ..id = 1
      ..values.addAll([1, 2, 3, 4, 5])
      ..list2.addAll([11, 12, 13, 14, 15, 16, 17]));
    BuiltUser user3 = BuiltUser((b) => b
      ..userId = 111111
      ..body = 'hello'
      ..title = 'Hey'
      ..id = 1
      ..values.addAll([1, 2, 3, 4, 5])
      ..list2.addAll([11, 12, 13, 14, 15, 16, 17]));

//builtlist
    BuiltList<BuiltUser> details = BuiltList<BuiltUser>([user1, user2, user3]);
    details =
        details.rebuild((a) => a[2] = a[2].rebuild((a) => a..userId = 1234567));

    print(details.elementAt(2));

//BuiltMap
    BuiltMap<String, BuiltUser> n = new BuiltMap<String, BuiltUser>(
        {'first': user1, 'second': user2, 'third': user3});
    n = n.rebuild(
        (m) => m['first'] = m['first']!.rebuild((m) => m..userId = 900000));

    print(n['first']);

    //BuiltSet

    BuiltSet<BuiltUser> nSet = BuiltSet({user1, user2, user3});
    nSet = nSet.rebuild((m) => m.map((m) => m = m.rebuild((m) => m
      ..body = 'Hello there!'
      ..id = 29)));
    print(nSet);

    return user1;
  }
}
