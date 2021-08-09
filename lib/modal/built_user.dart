library built_user;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializer.dart';

part 'built_user.g.dart';

abstract class BuiltUser implements Built<BuiltUser, BuiltUserBuilder> {
  BuiltUser._();

  int get userId;

  int get id;

  String get title;
  String get body;
  BuiltList<int> get values;
  BuiltList<int> get list2;

  factory BuiltUser([updates(BuiltUserBuilder b)]) = _$BuiltUser;

  String toJson() {
    return json.encode(serializers.serializeWith(BuiltUser.serializer, this));
  }

  static BuiltUser? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltUser.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltUser> get serializer => _$builtUserSerializer;
}
