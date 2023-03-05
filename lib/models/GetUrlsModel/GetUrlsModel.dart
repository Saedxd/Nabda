library GetUrlsModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/AdminsModel/AdminModel.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'GetUrlsModel.g.dart';

abstract class GetUrlsModel
    implements Built<GetUrlsModel,GetUrlsModelBuilder> {

  int? get id;
  String? get name;
  String? get url;
  String? get created_at;
  String? get updated_at;


  GetUrlsModel._();
  factory GetUrlsModel([void Function(GetUrlsModelBuilder b)? updates]) =  _$GetUrlsModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetUrlsModel.serializer, this));
  }
  static GetUrlsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetUrlsModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetUrlsModel> get serializer => _$getUrlsModelSerializer;
}


