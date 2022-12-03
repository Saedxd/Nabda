
library UserDataModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'UserDataModel.g.dart';

abstract class UserDataModel
    implements Built<UserDataModel,UserDataModelBuilder> {

  // bool? get is_sender;
  // int? get id;
  // String? get message;
  // String? get type;
  //
  // String? get sender_name;
  // String? get sender_serial;
  // int? get sender_id;
  // String? get sender_background_color;
  // String? get sender_image;
  //
  // bool? get is_friend;
  // String? get sender_bio;
  // String? get CreatAt;
  //
  // String? get title;
  // String? get content;
  // String? get image;
  // String? get coordinates;
  //
  // int? get multi_choice;
  // int? get show_participants;
  // BuiltList<NewPollAnswersModel>? get answers;
  // BuiltList<InterestsListModel>? get sender_interests;


  UserDataModel._();
  factory UserDataModel([void Function(UserDataModelBuilder b)? updates]) =  _$UserDataModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(UserDataModel.serializer, this));
  }
  static UserDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserDataModel> get serializer => _$userDataModelSerializer;
}

