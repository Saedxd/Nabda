library GetUrlDataModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/AdminsModel/AdminModel.dart';
import 'package:testnew/models/GetUrlsModel/GetUrlsModel.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'GetUrlDataModel.g.dart';

abstract class GetUrlDataModel
    implements Built<GetUrlDataModel,GetUrlDataModelBuilder> {

  int? get status;
  BuiltList<GetUrlsModel>? get links;


  GetUrlDataModel._();
  factory GetUrlDataModel([void Function(GetUrlDataModelBuilder b)? updates]) =  _$GetUrlDataModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetUrlDataModel.serializer, this));
  }
  static GetUrlDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetUrlDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetUrlDataModel> get serializer => _$getUrlDataModelSerializer;
}


