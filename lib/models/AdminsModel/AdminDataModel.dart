//
//
library AdminDataModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/AdminsModel/AdminModel.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'AdminDataModel.g.dart';

abstract class AdminDataModel
    implements Built<AdminDataModel,AdminDataModelBuilder> {

  int? get status;
  BuiltList<AdminModel>? get admins;


  AdminDataModel._();
  factory AdminDataModel([void Function(AdminDataModelBuilder b)? updates]) =  _$AdminDataModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AdminDataModel.serializer, this));
  }
  static AdminDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AdminDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<AdminDataModel> get serializer => _$adminDataModelSerializer;
}


