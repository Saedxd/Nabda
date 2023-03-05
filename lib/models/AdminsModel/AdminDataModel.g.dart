// GENERATED CODE - DO NOT MODIFY BY HAND

part of AdminDataModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdminDataModel> _$adminDataModelSerializer =
    new _$AdminDataModelSerializer();

class _$AdminDataModelSerializer
    implements StructuredSerializer<AdminDataModel> {
  @override
  final Iterable<Type> types = const [AdminDataModel, _$AdminDataModel];
  @override
  final String wireName = 'AdminDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AdminDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.admins;
    if (value != null) {
      result
        ..add('admins')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AdminModel)])));
    }
    return result;
  }

  @override
  AdminDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdminDataModelBuilder();

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
        case 'admins':
          result.admins.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AdminModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AdminDataModel extends AdminDataModel {
  @override
  final int? status;
  @override
  final BuiltList<AdminModel>? admins;

  factory _$AdminDataModel([void Function(AdminDataModelBuilder)? updates]) =>
      (new AdminDataModelBuilder()..update(updates))._build();

  _$AdminDataModel._({this.status, this.admins}) : super._();

  @override
  AdminDataModel rebuild(void Function(AdminDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminDataModelBuilder toBuilder() =>
      new AdminDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminDataModel &&
        status == other.status &&
        admins == other.admins;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), admins.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminDataModel')
          ..add('status', status)
          ..add('admins', admins))
        .toString();
  }
}

class AdminDataModelBuilder
    implements Builder<AdminDataModel, AdminDataModelBuilder> {
  _$AdminDataModel? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  ListBuilder<AdminModel>? _admins;
  ListBuilder<AdminModel> get admins =>
      _$this._admins ??= new ListBuilder<AdminModel>();
  set admins(ListBuilder<AdminModel>? admins) => _$this._admins = admins;

  AdminDataModelBuilder();

  AdminDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _admins = $v.admins?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminDataModel;
  }

  @override
  void update(void Function(AdminDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminDataModel build() => _build();

  _$AdminDataModel _build() {
    _$AdminDataModel _$result;
    try {
      _$result = _$v ??
          new _$AdminDataModel._(status: status, admins: _admins?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'admins';
        _admins?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdminDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
