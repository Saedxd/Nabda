// GENERATED CODE - DO NOT MODIFY BY HAND

part of PostsModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsModel> _$postsModelSerializer = new _$PostsModelSerializer();

class _$PostsModelSerializer implements StructuredSerializer<PostsModel> {
  @override
  final Iterable<Type> types = const [PostsModel, _$PostsModel];
  @override
  final String wireName = 'PostsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created_at;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updated_at;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PostsModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PostsModel extends PostsModel {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? note;
  @override
  final String? date;
  @override
  final String? photo;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  factory _$PostsModel([void Function(PostsModelBuilder)? updates]) =>
      (new PostsModelBuilder()..update(updates))._build();

  _$PostsModel._(
      {this.id,
      this.title,
      this.note,
      this.date,
      this.photo,
      this.created_at,
      this.updated_at})
      : super._();

  @override
  PostsModel rebuild(void Function(PostsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsModelBuilder toBuilder() => new PostsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsModel &&
        id == other.id &&
        title == other.title &&
        note == other.note &&
        date == other.date &&
        photo == other.photo &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), title.hashCode),
                        note.hashCode),
                    date.hashCode),
                photo.hashCode),
            created_at.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsModel')
          ..add('id', id)
          ..add('title', title)
          ..add('note', note)
          ..add('date', date)
          ..add('photo', photo)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class PostsModelBuilder implements Builder<PostsModel, PostsModelBuilder> {
  _$PostsModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  PostsModelBuilder();

  PostsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _note = $v.note;
      _date = $v.date;
      _photo = $v.photo;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsModel;
  }

  @override
  void update(void Function(PostsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsModel build() => _build();

  _$PostsModel _build() {
    final _$result = _$v ??
        new _$PostsModel._(
            id: id,
            title: title,
            note: note,
            date: date,
            photo: photo,
            created_at: created_at,
            updated_at: updated_at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
