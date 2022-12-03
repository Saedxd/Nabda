// GENERATED CODE - DO NOT MODIFY BY HAND

part of LoginScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginScreenState extends LoginScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final UserDataModel? UserData;

  factory _$LoginScreenState(
          [void Function(LoginScreenStateBuilder)? updates]) =>
      (new LoginScreenStateBuilder()..update(updates))._build();

  _$LoginScreenState._(
      {this.error, this.isLoading, this.success, this.UserData})
      : super._();

  @override
  LoginScreenState rebuild(void Function(LoginScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginScreenStateBuilder toBuilder() =>
      new LoginScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginScreenState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        UserData == other.UserData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode), success.hashCode),
        UserData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('UserData', UserData))
        .toString();
  }
}

class LoginScreenStateBuilder
    implements Builder<LoginScreenState, LoginScreenStateBuilder> {
  _$LoginScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  UserDataModelBuilder? _UserData;
  UserDataModelBuilder get UserData =>
      _$this._UserData ??= new UserDataModelBuilder();
  set UserData(UserDataModelBuilder? UserData) => _$this._UserData = UserData;

  LoginScreenStateBuilder();

  LoginScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _UserData = $v.UserData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginScreenState;
  }

  @override
  void update(void Function(LoginScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginScreenState build() => _build();

  _$LoginScreenState _build() {
    _$LoginScreenState _$result;
    try {
      _$result = _$v ??
          new _$LoginScreenState._(
              error: error,
              isLoading: isLoading,
              success: success,
              UserData: _UserData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'UserData';
        _UserData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginScreenState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
