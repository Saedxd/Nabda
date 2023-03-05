// GENERATED CODE - DO NOT MODIFY BY HAND

part of ContributeScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContributeScreenState extends ContributeScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final AddVolModel? AddVol;

  factory _$ContributeScreenState(
          [void Function(ContributeScreenStateBuilder)? updates]) =>
      (new ContributeScreenStateBuilder()..update(updates))._build();

  _$ContributeScreenState._(
      {this.error, this.isLoading, this.success, this.AddVol})
      : super._();

  @override
  ContributeScreenState rebuild(
          void Function(ContributeScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContributeScreenStateBuilder toBuilder() =>
      new ContributeScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContributeScreenState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        AddVol == other.AddVol;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode), success.hashCode),
        AddVol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContributeScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('AddVol', AddVol))
        .toString();
  }
}

class ContributeScreenStateBuilder
    implements Builder<ContributeScreenState, ContributeScreenStateBuilder> {
  _$ContributeScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  AddVolModelBuilder? _AddVol;
  AddVolModelBuilder get AddVol => _$this._AddVol ??= new AddVolModelBuilder();
  set AddVol(AddVolModelBuilder? AddVol) => _$this._AddVol = AddVol;

  ContributeScreenStateBuilder();

  ContributeScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _AddVol = $v.AddVol?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContributeScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContributeScreenState;
  }

  @override
  void update(void Function(ContributeScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContributeScreenState build() => _build();

  _$ContributeScreenState _build() {
    _$ContributeScreenState _$result;
    try {
      _$result = _$v ??
          new _$ContributeScreenState._(
              error: error,
              isLoading: isLoading,
              success: success,
              AddVol: _AddVol?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'AddVol';
        _AddVol?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ContributeScreenState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
