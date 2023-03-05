//
library PostsData;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/PostsModel/PostsModel.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'PostsData.g.dart';

abstract class PostsData
    implements Built<PostsData,PostsDataBuilder> {

  int? get status;
  BuiltList<PostsModel>? get posts;


  PostsData._();
  factory PostsData([void Function(PostsDataBuilder b)? updates]) =  _$PostsData;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PostsData.serializer, this));
  }
  static PostsData? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PostsData.serializer, json.decode(jsonString));
  }

  static Serializer<PostsData> get serializer => _$postsDataSerializer;
}

