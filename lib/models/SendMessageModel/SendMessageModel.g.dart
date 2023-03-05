// GENERATED CODE - DO NOT MODIFY BY HAND

part of SendMessageModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SendMessageModel> _$sendMessageModelSerializer =
    new _$SendMessageModelSerializer();

class _$SendMessageModelSerializer
    implements StructuredSerializer<SendMessageModel> {
  @override
  final Iterable<Type> types = const [SendMessageModel, _$SendMessageModel];
  @override
  final String wireName = 'SendMessageModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SendMessageModel object,
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
  SendMessageModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SendMessageModelBuilder();

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

class _$SendMessageModel extends SendMessageModel {
  @override
  final int? status;
  @override
  final String? msg;

  factory _$SendMessageModel(
          [void Function(SendMessageModelBuilder)? updates]) =>
      (new SendMessageModelBuilder()..update(updates))._build();

  _$SendMessageModel._({this.status, this.msg}) : super._();

  @override
  SendMessageModel rebuild(void Function(SendMessageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendMessageModelBuilder toBuilder() =>
      new SendMessageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendMessageModel &&
        status == other.status &&
        msg == other.msg;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), msg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendMessageModel')
          ..add('status', status)
          ..add('msg', msg))
        .toString();
  }
}

class SendMessageModelBuilder
    implements Builder<SendMessageModel, SendMessageModelBuilder> {
  _$SendMessageModel? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  SendMessageModelBuilder();

  SendMessageModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendMessageModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendMessageModel;
  }

  @override
  void update(void Function(SendMessageModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendMessageModel build() => _build();

  _$SendMessageModel _build() {
    final _$result = _$v ?? new _$SendMessageModel._(status: status, msg: msg);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
