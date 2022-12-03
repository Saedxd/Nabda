// GENERATED CODE - DO NOT MODIFY BY HAND

part of LoginScreen_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Login extends Login {
  @override
  final String? Email;
  @override
  final String? FcmToken;
  @override
  final String? Password;

  factory _$Login([void Function(LoginBuilder)? updates]) =>
      (new LoginBuilder()..update(updates))._build();

  _$Login._({this.Email, this.FcmToken, this.Password}) : super._();

  @override
  Login rebuild(void Function(LoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginBuilder toBuilder() => new LoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login &&
        Email == other.Email &&
        FcmToken == other.FcmToken &&
        Password == other.Password;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, Email.hashCode), FcmToken.hashCode), Password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Login')
          ..add('Email', Email)
          ..add('FcmToken', FcmToken)
          ..add('Password', Password))
        .toString();
  }
}

class LoginBuilder implements Builder<Login, LoginBuilder> {
  _$Login? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _FcmToken;
  String? get FcmToken => _$this._FcmToken;
  set FcmToken(String? FcmToken) => _$this._FcmToken = FcmToken;

  String? _Password;
  String? get Password => _$this._Password;
  set Password(String? Password) => _$this._Password = Password;

  LoginBuilder();

  LoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _FcmToken = $v.FcmToken;
      _Password = $v.Password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Login;
  }

  @override
  void update(void Function(LoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Login build() => _build();

  _$Login _build() {
    final _$result = _$v ??
        new _$Login._(Email: Email, FcmToken: FcmToken, Password: Password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
