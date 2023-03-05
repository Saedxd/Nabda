// GENERATED CODE - DO NOT MODIFY BY HAND

part of GetUrlsModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetUrlsModel> _$getUrlsModelSerializer =
    new _$GetUrlsModelSerializer();

class _$GetUrlsModelSerializer implements StructuredSerializer<GetUrlsModel> {
  @override
  final Iterable<Type> types = const [GetUrlsModel, _$GetUrlsModel];
  @override
  final String wireName = 'GetUrlsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, GetUrlsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
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
  GetUrlsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetUrlsModelBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
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

class _$GetUrlsModel extends GetUrlsModel {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  factory _$GetUrlsModel([void Function(GetUrlsModelBuilder)? updates]) =>
      (new GetUrlsModelBuilder()..update(updates))._build();

  _$GetUrlsModel._(
      {this.id, this.name, this.url, this.created_at, this.updated_at})
      : super._();

  @override
  GetUrlsModel rebuild(void Function(GetUrlsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUrlsModelBuilder toBuilder() => new GetUrlsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUrlsModel &&
        id == other.id &&
        name == other.name &&
        url == other.url &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), url.hashCode),
            created_at.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetUrlsModel')
          ..add('id', id)
          ..add('name', name)
          ..add('url', url)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class GetUrlsModelBuilder
    implements Builder<GetUrlsModel, GetUrlsModelBuilder> {
  _$GetUrlsModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  GetUrlsModelBuilder();

  GetUrlsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _url = $v.url;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUrlsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUrlsModel;
  }

  @override
  void update(void Function(GetUrlsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUrlsModel build() => _build();

  _$GetUrlsModel _build() {
    final _$result = _$v ??
        new _$GetUrlsModel._(
            id: id,
            name: name,
            url: url,
            created_at: created_at,
            updated_at: updated_at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
