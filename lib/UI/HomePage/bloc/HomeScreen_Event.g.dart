// GENERATED CODE - DO NOT MODIFY BY HAND

part of HomeScreen_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPosts extends GetPosts {
  factory _$GetPosts([void Function(GetPostsBuilder)? updates]) =>
      (new GetPostsBuilder()..update(updates))._build();

  _$GetPosts._() : super._();

  @override
  GetPosts rebuild(void Function(GetPostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPostsBuilder toBuilder() => new GetPostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPosts;
  }

  @override
  int get hashCode {
    return 621146292;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetPosts').toString();
  }
}

class GetPostsBuilder implements Builder<GetPosts, GetPostsBuilder> {
  _$GetPosts? _$v;

  GetPostsBuilder();

  @override
  void replace(GetPosts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPosts;
  }

  @override
  void update(void Function(GetPostsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPosts build() => _build();

  _$GetPosts _build() {
    final _$result = _$v ?? new _$GetPosts._();
    replace(_$result);
    return _$result;
  }
}

class _$GetAdmins extends GetAdmins {
  factory _$GetAdmins([void Function(GetAdminsBuilder)? updates]) =>
      (new GetAdminsBuilder()..update(updates))._build();

  _$GetAdmins._() : super._();

  @override
  GetAdmins rebuild(void Function(GetAdminsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAdminsBuilder toBuilder() => new GetAdminsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAdmins;
  }

  @override
  int get hashCode {
    return 481583866;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAdmins').toString();
  }
}

class GetAdminsBuilder implements Builder<GetAdmins, GetAdminsBuilder> {
  _$GetAdmins? _$v;

  GetAdminsBuilder();

  @override
  void replace(GetAdmins other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAdmins;
  }

  @override
  void update(void Function(GetAdminsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAdmins build() => _build();

  _$GetAdmins _build() {
    final _$result = _$v ?? new _$GetAdmins._();
    replace(_$result);
    return _$result;
  }
}

class _$GetUrls extends GetUrls {
  factory _$GetUrls([void Function(GetUrlsBuilder)? updates]) =>
      (new GetUrlsBuilder()..update(updates))._build();

  _$GetUrls._() : super._();

  @override
  GetUrls rebuild(void Function(GetUrlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUrlsBuilder toBuilder() => new GetUrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUrls;
  }

  @override
  int get hashCode {
    return 209493350;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetUrls').toString();
  }
}

class GetUrlsBuilder implements Builder<GetUrls, GetUrlsBuilder> {
  _$GetUrls? _$v;

  GetUrlsBuilder();

  @override
  void replace(GetUrls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUrls;
  }

  @override
  void update(void Function(GetUrlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUrls build() => _build();

  _$GetUrls _build() {
    final _$result = _$v ?? new _$GetUrls._();
    replace(_$result);
    return _$result;
  }
}

class _$SendMessage extends SendMessage {
  @override
  final String? name;
  @override
  final String? Email;
  @override
  final String? title;
  @override
  final String? body;

  factory _$SendMessage([void Function(SendMessageBuilder)? updates]) =>
      (new SendMessageBuilder()..update(updates))._build();

  _$SendMessage._({this.name, this.Email, this.title, this.body}) : super._();

  @override
  SendMessage rebuild(void Function(SendMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendMessageBuilder toBuilder() => new SendMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendMessage &&
        name == other.name &&
        Email == other.Email &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), Email.hashCode), title.hashCode),
        body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendMessage')
          ..add('name', name)
          ..add('Email', Email)
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class SendMessageBuilder implements Builder<SendMessage, SendMessageBuilder> {
  _$SendMessage? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  SendMessageBuilder();

  SendMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _Email = $v.Email;
      _title = $v.title;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendMessage;
  }

  @override
  void update(void Function(SendMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendMessage build() => _build();

  _$SendMessage _build() {
    final _$result = _$v ??
        new _$SendMessage._(name: name, Email: Email, title: title, body: body);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeState extends ChangeState {
  factory _$ChangeState([void Function(ChangeStateBuilder)? updates]) =>
      (new ChangeStateBuilder()..update(updates))._build();

  _$ChangeState._() : super._();

  @override
  ChangeState rebuild(void Function(ChangeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeStateBuilder toBuilder() => new ChangeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeState;
  }

  @override
  int get hashCode {
    return 404821806;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ChangeState').toString();
  }
}

class ChangeStateBuilder implements Builder<ChangeState, ChangeStateBuilder> {
  _$ChangeState? _$v;

  ChangeStateBuilder();

  @override
  void replace(ChangeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeState;
  }

  @override
  void update(void Function(ChangeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeState build() => _build();

  _$ChangeState _build() {
    final _$result = _$v ?? new _$ChangeState._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
