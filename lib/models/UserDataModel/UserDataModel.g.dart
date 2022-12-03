// GENERATED CODE - DO NOT MODIFY BY HAND

part of UserDataModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserDataModel> _$userDataModelSerializer =
    new _$UserDataModelSerializer();

class _$UserDataModelSerializer implements StructuredSerializer<UserDataModel> {
  @override
  final Iterable<Type> types = const [UserDataModel, _$UserDataModel];
  @override
  final String wireName = 'UserDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  UserDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new UserDataModelBuilder().build();
  }
}

class _$UserDataModel extends UserDataModel {
  factory _$UserDataModel([void Function(UserDataModelBuilder)? updates]) =>
      (new UserDataModelBuilder()..update(updates))._build();

  _$UserDataModel._() : super._();

  @override
  UserDataModel rebuild(void Function(UserDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataModelBuilder toBuilder() => new UserDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataModel;
  }

  @override
  int get hashCode {
    return 453160429;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'UserDataModel').toString();
  }
}

class UserDataModelBuilder
    implements Builder<UserDataModel, UserDataModelBuilder> {
  _$UserDataModel? _$v;

  UserDataModelBuilder();

  @override
  void replace(UserDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDataModel;
  }

  @override
  void update(void Function(UserDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDataModel build() => _build();

  _$UserDataModel _build() {
    final _$result = _$v ?? new _$UserDataModel._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
