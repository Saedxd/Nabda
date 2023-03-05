// GENERATED CODE - DO NOT MODIFY BY HAND

part of AddVolModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddVolModel> _$addVolModelSerializer = new _$AddVolModelSerializer();

class _$AddVolModelSerializer implements StructuredSerializer<AddVolModel> {
  @override
  final Iterable<Type> types = const [AddVolModel, _$AddVolModel];
  @override
  final String wireName = 'AddVolModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddVolModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.msg;
    if (value != null) {
      result
        ..add('msg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddVolModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddVolModelBuilder();

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
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AddVolModel extends AddVolModel {
  @override
  final int? status;
  @override
  final String? msg;

  factory _$AddVolModel([void Function(AddVolModelBuilder)? updates]) =>
      (new AddVolModelBuilder()..update(updates))._build();

  _$AddVolModel._({this.status, this.msg}) : super._();

  @override
  AddVolModel rebuild(void Function(AddVolModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddVolModelBuilder toBuilder() => new AddVolModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddVolModel && status == other.status && msg == other.msg;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), msg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddVolModel')
          ..add('status', status)
          ..add('msg', msg))
        .toString();
  }
}

class AddVolModelBuilder implements Builder<AddVolModel, AddVolModelBuilder> {
  _$AddVolModel? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  AddVolModelBuilder();

  AddVolModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddVolModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddVolModel;
  }

  @override
  void update(void Function(AddVolModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddVolModel build() => _build();

  _$AddVolModel _build() {
    final _$result = _$v ?? new _$AddVolModel._(status: status, msg: msg);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
