import 'dart:convert';
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

    BuiltList<BuiltUser> details = BuiltList<BuiltUser>([user1, user2, user3]);
    details =
        details.rebuild((a) => a[2] = a[2].rebuild((a) => a..userId = 1234567));
    print(details);
    return user1;
  }
}
