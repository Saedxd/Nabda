library PostsModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'PostsModel.g.dart';

abstract class PostsModel
    implements Built<PostsModel,PostsModelBuilder> {

  int? get id;
  String? get title;
  String? get note;
  String? get date;
  String? get photo;
  String? get created_at;
  String? get updated_at;


  PostsModel._();
  factory PostsModel([void Function(PostsModelBuilder b)? updates]) =  _$PostsModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PostsModel.serializer, this));
  }
  static PostsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PostsModel.serializer, json.decode(jsonString));
  }

  static Serializer<PostsModel> get serializer => _$postsModelSerializer;
}

