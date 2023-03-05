// GENERATED CODE - DO NOT MODIFY BY HAND

part of ContributeScreen_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendVol extends SendVol {
  @override
  final String? gender;
  @override
  final String? uni_sp;
  @override
  final String? area;
  @override
  final String? street;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? note;
  @override
  final String? full_name;
  @override
  final String? old;
  @override
  final String? noid;

  factory _$SendVol([void Function(SendVolBuilder)? updates]) =>
      (new SendVolBuilder()..update(updates))._build();

  _$SendVol._(
      {this.gender,
      this.uni_sp,
      this.area,
      this.street,
      this.phone,
      this.email,
      this.note,
      this.full_name,
      this.old,
      this.noid})
      : super._();

  @override
  SendVol rebuild(void Function(SendVolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendVolBuilder toBuilder() => new SendVolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendVol &&
        gender == other.gender &&
        uni_sp == other.uni_sp &&
        area == other.area &&
        street == other.street &&
        phone == other.phone &&
        email == other.email &&
        note == other.note &&
        full_name == other.full_name &&
        old == other.old &&
        noid == other.noid;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, gender.hashCode),
                                        uni_sp.hashCode),
                                    area.hashCode),
                                street.hashCode),
                            phone.hashCode),
                        email.hashCode),
                    note.hashCode),
                full_name.hashCode),
            old.hashCode),
        noid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendVol')
          ..add('gender', gender)
          ..add('uni_sp', uni_sp)
          ..add('area', area)
          ..add('street', street)
          ..add('phone', phone)
          ..add('email', email)
          ..add('note', note)
          ..add('full_name', full_name)
          ..add('old', old)
          ..add('noid', noid))
        .toString();
  }
}

class SendVolBuilder implements Builder<SendVol, SendVolBuilder> {
  _$SendVol? _$v;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _uni_sp;
  String? get uni_sp => _$this._uni_sp;
  set uni_sp(String? uni_sp) => _$this._uni_sp = uni_sp;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _full_name;
  String? get full_name => _$this._full_name;
  set full_name(String? full_name) => _$this._full_name = full_name;

  String? _old;
  String? get old => _$this._old;
  set old(String? old) => _$this._old = old;

  String? _noid;
  String? get noid => _$this._noid;
  set noid(String? noid) => _$this._noid = noid;

  SendVolBuilder();

  SendVolBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gender = $v.gender;
      _uni_sp = $v.uni_sp;
      _area = $v.area;
      _street = $v.street;
      _phone = $v.phone;
      _email = $v.email;
      _note = $v.note;
      _full_name = $v.full_name;
      _old = $v.old;
      _noid = $v.noid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendVol other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendVol;
  }

  @override
  void update(void Function(SendVolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendVol build() => _build();

  _$SendVol _build() {
    final _$result = _$v ??
        new _$SendVol._(
            gender: gender,
            uni_sp: uni_sp,
            area: area,
            street: street,
            phone: phone,
            email: email,
            note: note,
            full_name: full_name,
            old: old,
            noid: noid);
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
