//
//
//
library AddVolModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/AdminsModel/AdminModel.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'AddVolModel.g.dart';

abstract class AddVolModel
    implements Built<AddVolModel,AddVolModelBuilder> {

  int? get status;
  String? get msg;

  AddVolModel._();
  factory AddVolModel([void Function(AddVolModelBuilder b)? updates]) =  _$AddVolModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AddVolModel.serializer, this));
  }
  static AddVolModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AddVolModel.serializer, json.decode(jsonString));
  }

  static Serializer<AddVolModel> get serializer => _$addVolModelSerializer;
}


