// library CreateBubble_State;
//
//
// import 'dart:io';
//
// import 'package:bubbles/UI/Home/Home_Screen/pages/HomeScreen.dart';
// import 'package:bubbles/core/Classes/Classes.dart';
// import 'package:bubbles/models/CreateBubbleModel/CreateBubbleModel.dart';
// import 'package:bubbles/models/Event_CateogoryModel/EventCateogoryModel.dart';
// import 'package:bubbles/models/FreindListSearchModel/FriendListSearchModel.dart';
// import 'package:bubbles/models/GetBubblesModel/GetBubblesModel.dart';
// import 'package:bubbles/models/GetFriendsModel/GetFriendsModel.dart';
// import 'package:bubbles/models/ProfileDataModel/ProfileDateModel.dart';
// import 'package:bubbles/models/SaveBubbleModel/SaveBubbleModel.dart';
// import 'package:built_value/built_value.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// part 'CreateBubble_State.g.dart';
//
// abstract class CreateBubbleState implements Built<CreateBubbleState, CreateBubbleStateBuilder>   {
//   // fields go here
//
//
//   String? get error;
//   bool? get isLoading;
//   bool? get success;
//
//   CreateBubbleState._();
//
//   factory CreateBubbleState([updates(CreateBubbleStateBuilder b)]) = _$CreateBubbleState;
//   factory CreateBubbleState.initail() {
//     return CreateBubbleState((b) => b
//         ..error =""
//         ..success = false
//         ..isLoading = false
//     );
//   }
//
//
//
//
// }
