// GENERATED CODE - DO NOT MODIFY BY HAND

part of AdminModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdminModel> _$adminModelSerializer = new _$AdminModelSerializer();

class _$AdminModelSerializer implements StructuredSerializer<AdminModel> {
  @override
  final Iterable<Type> types = const [AdminModel, _$AdminModel];
  @override
  final String wireName = 'AdminModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AdminModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.noid;
    if (value != null) {
      result
        ..add('noid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.salary;
    if (value != null) {
      result
        ..add('salary')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.co_year;
    if (value != null) {
      result
        ..add('co_year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email_verified_at;
    if (value != null) {
      result
        ..add('email_verified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.full_name;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birth;
    if (value != null) {
      result
        ..add('birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.degree;
    if (value != null) {
      result
        ..add('degree')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uni_sp;
    if (value != null) {
      result
        ..add('uni_sp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emp_name;
    if (value != null) {
      result
        ..add('emp_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.street;
    if (value != null) {
      result
        ..add('street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.can;
    if (value != null) {
      result
        ..add('can')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo_name;
    if (value != null) {
      result
        ..add('photo_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cv_name;
    if (value != null) {
      result
        ..add('cv_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deleted_at;
    if (value != null) {
      result
        ..add('deleted_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created_at;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updated_at;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AdminModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdminModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'noid':
          result.noid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'salary':
          result.salary = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'co_year':
          result.co_year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email_verified_at':
          result.email_verified_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full_name':
          result.full_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birth':
          result.birth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'degree':
          result.degree = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uni_sp':
          result.uni_sp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emp_name':
          result.emp_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'can':
          result.can = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_name':
          result.photo_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cv_name':
          result.cv_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deleted_at':
          result.deleted_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AdminModel extends AdminModel {
  @override
  final int? id;
  @override
  final int? noid;
  @override
  final int? salary;
  @override
  final int? co_year;
  @override
  final int? phone;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? gender;
  @override
  final String? email_verified_at;
  @override
  final String? full_name;
  @override
  final String? birth;
  @override
  final String? degree;
  @override
  final String? uni_sp;
  @override
  final String? emp_name;
  @override
  final String? area;
  @override
  final String? street;
  @override
  final String? can;
  @override
  final String? note;
  @override
  final String? photo_name;
  @override
  final String? cv_name;
  @override
  final String? deleted_at;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  factory _$AdminModel([void Function(AdminModelBuilder)? updates]) =>
      (new AdminModelBuilder()..update(updates))._build();

  _$AdminModel._(
      {this.id,
      this.noid,
      this.salary,
      this.co_year,
      this.phone,
      this.name,
      this.email,
      this.gender,
      this.email_verified_at,
      this.full_name,
      this.birth,
      this.degree,
      this.uni_sp,
      this.emp_name,
      this.area,
      this.street,
      this.can,
      this.note,
      this.photo_name,
      this.cv_name,
      this.deleted_at,
      this.created_at,
      this.updated_at})
      : super._();

  @override
  AdminModel rebuild(void Function(AdminModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminModelBuilder toBuilder() => new AdminModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminModel &&
        id == other.id &&
        noid == other.noid &&
        salary == other.salary &&
        co_year == other.co_year &&
        phone == other.phone &&
        name == other.name &&
        email == other.email &&
        gender == other.gender &&
        email_verified_at == other.email_verified_at &&
        full_name == other.full_name &&
        birth == other.birth &&
        degree == other.degree &&
        uni_sp == other.uni_sp &&
        emp_name == other.emp_name &&
        area == other.area &&
        street == other.street &&
        can == other.can &&
        note == other.note &&
        photo_name == other.photo_name &&
        cv_name == other.cv_name &&
        deleted_at == other.deleted_at &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, id.hashCode), noid.hashCode), salary.hashCode), co_year.hashCode),
                                                                                phone.hashCode),
                                                                            name.hashCode),
                                                                        email.hashCode),
                                                                    gender.hashCode),
                                                                email_verified_at.hashCode),
                                                            full_name.hashCode),
                                                        birth.hashCode),
                                                    degree.hashCode),
                                                uni_sp.hashCode),
                                            emp_name.hashCode),
                                        area.hashCode),
                                    street.hashCode),
                                can.hashCode),
                            note.hashCode),
                        photo_name.hashCode),
                    cv_name.hashCode),
                deleted_at.hashCode),
            created_at.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminModel')
          ..add('id', id)
          ..add('noid', noid)
          ..add('salary', salary)
          ..add('co_year', co_year)
          ..add('phone', phone)
          ..add('name', name)
          ..add('email', email)
          ..add('gender', gender)
          ..add('email_verified_at', email_verified_at)
          ..add('full_name', full_name)
          ..add('birth', birth)
          ..add('degree', degree)
          ..add('uni_sp', uni_sp)
          ..add('emp_name', emp_name)
          ..add('area', area)
          ..add('street', street)
          ..add('can', can)
          ..add('note', note)
          ..add('photo_name', photo_name)
          ..add('cv_name', cv_name)
          ..add('deleted_at', deleted_at)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class AdminModelBuilder implements Builder<AdminModel, AdminModelBuilder> {
  _$AdminModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _noid;
  int? get noid => _$this._noid;
  set noid(int? noid) => _$this._noid = noid;

  int? _salary;
  int? get salary => _$this._salary;
  set salary(int? salary) => _$this._salary = salary;

  int? _co_year;
  int? get co_year => _$this._co_year;
  set co_year(int? co_year) => _$this._co_year = co_year;

  int? _phone;
  int? get phone => _$this._phone;
  set phone(int? phone) => _$this._phone = phone;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _email_verified_at;
  String? get email_verified_at => _$this._email_verified_at;
  set email_verified_at(String? email_verified_at) =>
      _$this._email_verified_at = email_verified_at;

  String? _full_name;
  String? get full_name => _$this._full_name;
  set full_name(String? full_name) => _$this._full_name = full_name;

  String? _birth;
  String? get birth => _$this._birth;
  set birth(String? birth) => _$this._birth = birth;

  String? _degree;
  String? get degree => _$this._degree;
  set degree(String? degree) => _$this._degree = degree;

  String? _uni_sp;
  String? get uni_sp => _$this._uni_sp;
  set uni_sp(String? uni_sp) => _$this._uni_sp = uni_sp;

  String? _emp_name;
  String? get emp_name => _$this._emp_name;
  set emp_name(String? emp_name) => _$this._emp_name = emp_name;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _can;
  String? get can => _$this._can;
  set can(String? can) => _$this._can = can;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _photo_name;
  String? get photo_name => _$this._photo_name;
  set photo_name(String? photo_name) => _$this._photo_name = photo_name;

  String? _cv_name;
  String? get cv_name => _$this._cv_name;
  set cv_name(String? cv_name) => _$this._cv_name = cv_name;

  String? _deleted_at;
  String? get deleted_at => _$this._deleted_at;
  set deleted_at(String? deleted_at) => _$this._deleted_at = deleted_at;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  AdminModelBuilder();

  AdminModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _noid = $v.noid;
      _salary = $v.salary;
      _co_year = $v.co_year;
      _phone = $v.phone;
      _name = $v.name;
      _email = $v.email;
      _gender = $v.gender;
      _email_verified_at = $v.email_verified_at;
      _full_name = $v.full_name;
      _birth = $v.birth;
      _degree = $v.degree;
      _uni_sp = $v.uni_sp;
      _emp_name = $v.emp_name;
      _area = $v.area;
      _street = $v.street;
      _can = $v.can;
      _note = $v.note;
      _photo_name = $v.photo_name;
      _cv_name = $v.cv_name;
      _deleted_at = $v.deleted_at;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminModel;
  }

  @override
  void update(void Function(AdminModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminModel build() => _build();

  _$AdminModel _build() {
    final _$result = _$v ??
        new _$AdminModel._(
            id: id,
            noid: noid,
            salary: salary,
            co_year: co_year,
            phone: phone,
            name: name,
            email: email,
            gender: gender,
            email_verified_at: email_verified_at,
            full_name: full_name,
            birth: birth,
            degree: degree,
            uni_sp: uni_sp,
            emp_name: emp_name,
            area: area,
            street: street,
            can: can,
            note: note,
            photo_name: photo_name,
            cv_name: cv_name,
            deleted_at: deleted_at,
            created_at: created_at,
            updated_at: updated_at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
