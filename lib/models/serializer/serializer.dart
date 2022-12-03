library serializer;


import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';



part 'serializer.g.dart';


@SerializersFor([
 //model class name
 //  EventOldMessagesModel,
 //  EventMessagesListModel,
 //  EventdetialMessageModel,
 //  NewPollAnswersModel,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())

  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(NewPollAnswersModel),
  //       ],
  //     )),
  //         () => ListBuilder<NewPollAnswersModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(EventOldMessagesModel),
  //       ],
  //     )),
  //         () => ListBuilder<EventOldMessagesModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(EventdetialMessageModel),
  //       ],
  //     )),
  //         () => ListBuilder<EventdetialMessageModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(EventMessagesListModel),
  //       ],
  //     )),
  //         () => ListBuilder<EventMessagesListModel>())


)
    .build();

//Serializers used for converting json unUsed Code to a code of object
//which i can intract with and use serializer is one of the ways of handleing this
// json data thing. we have chosen this way because it gets genrated easily and
//fastly and has lots of features.

//Make sure you add the StandardJsonPlugin whenever you want to use the generated
// JSON with a RESTful API. By default, BuiltValue's JSON output aren't key-value
// pairs, but instead a list containing [key1, value1, key2, value2, ...]. This is
// not what most of the APIs expect.