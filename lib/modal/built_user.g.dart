// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltUser> _$builtUserSerializer = new _$BuiltUserSerializer();

class _$BuiltUserSerializer implements StructuredSerializer<BuiltUser> {
  @override
  final Iterable<Type> types = const [BuiltUser, _$BuiltUser];
  @override
  final String wireName = 'BuiltUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'values',
      serializers.serialize(object.values,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'list2',
      serializers.serialize(object.list2,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];

    return result;
  }

  @override
  BuiltUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'values':
          result.values.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'list2':
          result.list2.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltUser extends BuiltUser {
  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final BuiltList<int> values;
  @override
  final BuiltList<int> list2;

  factory _$BuiltUser([void Function(BuiltUserBuilder)? updates]) =>
      (new BuiltUserBuilder()..update(updates)).build();

  _$BuiltUser._(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body,
      required this.values,
      required this.list2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, 'BuiltUser', 'userId');
    BuiltValueNullFieldError.checkNotNull(id, 'BuiltUser', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'BuiltUser', 'title');
    BuiltValueNullFieldError.checkNotNull(body, 'BuiltUser', 'body');
    BuiltValueNullFieldError.checkNotNull(values, 'BuiltUser', 'values');
    BuiltValueNullFieldError.checkNotNull(list2, 'BuiltUser', 'list2');
  }

  @override
  BuiltUser rebuild(void Function(BuiltUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltUserBuilder toBuilder() => new BuiltUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltUser &&
        userId == other.userId &&
        id == other.id &&
        title == other.title &&
        body == other.body &&
        values == other.values &&
        list2 == other.list2;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, userId.hashCode), id.hashCode), title.hashCode),
                body.hashCode),
            values.hashCode),
        list2.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltUser')
          ..add('userId', userId)
          ..add('id', id)
          ..add('title', title)
          ..add('body', body)
          ..add('values', values)
          ..add('list2', list2))
        .toString();
  }
}

class BuiltUserBuilder implements Builder<BuiltUser, BuiltUserBuilder> {
  _$BuiltUser? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  ListBuilder<int>? _values;
  ListBuilder<int> get values => _$this._values ??= new ListBuilder<int>();
  set values(ListBuilder<int>? values) => _$this._values = values;

  ListBuilder<int>? _list2;
  ListBuilder<int> get list2 => _$this._list2 ??= new ListBuilder<int>();
  set list2(ListBuilder<int>? list2) => _$this._list2 = list2;

  BuiltUserBuilder();

  BuiltUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _id = $v.id;
      _title = $v.title;
      _body = $v.body;
      _values = $v.values.toBuilder();
      _list2 = $v.list2.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltUser;
  }

  @override
  void update(void Function(BuiltUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltUser build() {
    _$BuiltUser _$result;
    try {
      _$result = _$v ??
          new _$BuiltUser._(
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, 'BuiltUser', 'userId'),
              id: BuiltValueNullFieldError.checkNotNull(id, 'BuiltUser', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'BuiltUser', 'title'),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, 'BuiltUser', 'body'),
              values: values.build(),
              list2: list2.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
        _$failedField = 'list2';
        list2.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
