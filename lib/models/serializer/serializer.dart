library serializer;


import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:testnew/models/AddVolModel/AddVolModel.dart';
import 'package:testnew/models/AdminsModel/AdminDataModel.dart';
import 'package:testnew/models/AdminsModel/AdminModel.dart';
import 'package:testnew/models/GetUrlsModel/GetUrlDataModel.dart';
import 'package:testnew/models/GetUrlsModel/GetUrlsModel.dart';
import 'package:testnew/models/PostsModel/PostsData.dart';
import 'package:testnew/models/PostsModel/PostsModel.dart';
import 'package:testnew/models/SendMessageModel/SendMessageModel.dart';



part 'serializer.g.dart';


@SerializersFor([
 //model class name
      PostsModel,
      PostsData,
      AdminDataModel,
      AdminModel,
  GetUrlDataModel,
  GetUrlsModel,
  SendMessageModel,
  AddVolModel,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(PostsModel),
        ],
      )),
          () => ListBuilder<PostsModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(AddVolModel),
        ],
      )),
          () => ListBuilder<AddVolModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(GetUrlsModel),
        ],
      )),
          () => ListBuilder<GetUrlsModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(GetUrlDataModel),
        ],
      )),
          () => ListBuilder<GetUrlDataModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(SendMessageModel),
        ],
      )),
          () => ListBuilder<SendMessageModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(PostsData),
        ],
      )),
          () => ListBuilder<PostsData>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(AdminDataModel),
        ],
      )),
          () => ListBuilder<AdminDataModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(AdminModel),
        ],
      )),
          () => ListBuilder<AdminModel>())
).build();
//Serializers used for converting json unUsed Code to a code of object
//which i can intract with and use serializer is one of the ways of handleing this
// json data thing. we have chosen this way because it gets genrated easily and
//fastly and has lots of features.

//Make sure you add the StandardJsonPlugin whenever you want to use the generated
// JSON with a RESTful API. By default, BuiltValue's JSON output aren't key-value
// pairs, but instead a list containing [key1, value1, key2, value2, ...]. This is
// not what most of the APIs expect.