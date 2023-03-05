// GENERATED CODE - DO NOT MODIFY BY HAND

part of PostsData;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsData> _$postsDataSerializer = new _$PostsDataSerializer();

class _$PostsDataSerializer implements StructuredSerializer<PostsData> {
  @override
  final Iterable<Type> types = const [PostsData, _$PostsData];
  @override
  final String wireName = 'PostsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.posts;
    if (value != null) {
      result
        ..add('posts')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(PostsModel)])));
    }
    return result;
  }

  @override
  PostsData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PostsModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PostsData extends PostsData {
  @override
  final int? status;
  @override
  final BuiltList<PostsModel>? posts;

  factory _$PostsData([void Function(PostsDataBuilder)? updates]) =>
      (new PostsDataBuilder()..update(updates))._build();

  _$PostsData._({this.status, this.posts}) : super._();

  @override
  PostsData rebuild(void Function(PostsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsDataBuilder toBuilder() => new PostsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsData && status == other.status && posts == other.posts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), posts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsData')
          ..add('status', status)
          ..add('posts', posts))
        .toString();
  }
}

class PostsDataBuilder implements Builder<PostsData, PostsDataBuilder> {
  _$PostsData? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  ListBuilder<PostsModel>? _posts;
  ListBuilder<PostsModel> get posts =>
      _$this._posts ??= new ListBuilder<PostsModel>();
  set posts(ListBuilder<PostsModel>? posts) => _$this._posts = posts;

  PostsDataBuilder();

  PostsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _posts = $v.posts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsData;
  }

  @override
  void update(void Function(PostsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsData build() => _build();

  _$PostsData _build() {
    _$PostsData _$result;
    try {
      _$result =
          _$v ?? new _$PostsData._(status: status, posts: _posts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'posts';
        _posts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
