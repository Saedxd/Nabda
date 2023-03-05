// GENERATED CODE - DO NOT MODIFY BY HAND

part of GetUrlDataModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetUrlDataModel> _$getUrlDataModelSerializer =
    new _$GetUrlDataModelSerializer();

class _$GetUrlDataModelSerializer
    implements StructuredSerializer<GetUrlDataModel> {
  @override
  final Iterable<Type> types = const [GetUrlDataModel, _$GetUrlDataModel];
  @override
  final String wireName = 'GetUrlDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, GetUrlDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.links;
    if (value != null) {
      result
        ..add('links')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GetUrlsModel)])));
    }
    return result;
  }

  @override
  GetUrlDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetUrlDataModelBuilder();

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
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GetUrlsModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GetUrlDataModel extends GetUrlDataModel {
  @override
  final int? status;
  @override
  final BuiltList<GetUrlsModel>? links;

  factory _$GetUrlDataModel([void Function(GetUrlDataModelBuilder)? updates]) =>
      (new GetUrlDataModelBuilder()..update(updates))._build();

  _$GetUrlDataModel._({this.status, this.links}) : super._();

  @override
  GetUrlDataModel rebuild(void Function(GetUrlDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUrlDataModelBuilder toBuilder() =>
      new GetUrlDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUrlDataModel &&
        status == other.status &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetUrlDataModel')
          ..add('status', status)
          ..add('links', links))
        .toString();
  }
}

class GetUrlDataModelBuilder
    implements Builder<GetUrlDataModel, GetUrlDataModelBuilder> {
  _$GetUrlDataModel? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  ListBuilder<GetUrlsModel>? _links;
  ListBuilder<GetUrlsModel> get links =>
      _$this._links ??= new ListBuilder<GetUrlsModel>();
  set links(ListBuilder<GetUrlsModel>? links) => _$this._links = links;

  GetUrlDataModelBuilder();

  GetUrlDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUrlDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUrlDataModel;
  }

  @override
  void update(void Function(GetUrlDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUrlDataModel build() => _build();

  _$GetUrlDataModel _build() {
    _$GetUrlDataModel _$result;
    try {
      _$result = _$v ??
          new _$GetUrlDataModel._(status: status, links: _links?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetUrlDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
