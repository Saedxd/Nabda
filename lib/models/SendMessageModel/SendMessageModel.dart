//
//
//
library SendMessageModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/AdminsModel/AdminModel.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'SendMessageModel.g.dart';

abstract class SendMessageModel
    implements Built<SendMessageModel,SendMessageModelBuilder> {

  int? get status;
  String? get msg;


  SendMessageModel._();
  factory SendMessageModel([void Function(SendMessageModelBuilder b)? updates]) =  _$SendMessageModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SendMessageModel.serializer, this));
  }
  static SendMessageModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SendMessageModel.serializer, json.decode(jsonString));
  }

  static Serializer<SendMessageModel> get serializer => _$sendMessageModelSerializer;
}


