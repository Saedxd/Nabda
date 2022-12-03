// // ignore_for_file: non_constant_identifier_names
//
// library CreateBubble_Event;
//
// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:bubbles/UI/Home/Home_Screen/pages/HomeScreen.dart';
// import 'package:built_value/built_value.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// part 'CreateBubble_Event.g.dart';
//
// abstract class CreateBubbleEvent {}
//
//
//
// abstract class ChangeDone1 extends CreateBubbleEvent
//     implements Built<ChangeDone1, ChangeDone1Builder> {
//   // fields go here
//   bool? get DoneColor1;
//   ChangeDone1._();
//   factory ChangeDone1([Function(ChangeDone1Builder b) updates]) = _$ChangeDone1;
// }
//
// abstract class ChangeDone2 extends CreateBubbleEvent
//     implements Built<ChangeDone2, ChangeDone2Builder> {
//   // fields go here
//   bool? get DoneColor2;
//   ChangeDone2._();
//   factory ChangeDone2([Function(ChangeDone2Builder b) updates]) = _$ChangeDone2;
// }
//
// abstract class GetFreinds extends CreateBubbleEvent
//     implements Built<GetFreinds,GetFreindsBuilder> {
//
//   GetFreinds._();
//   factory GetFreinds([Function(GetFreindsBuilder b) updates]) = _$GetFreinds;
// }
//
// abstract class CreateBubble extends CreateBubbleEvent
//     implements Built<CreateBubble, CreateBubbleBuilder> {
//
//   double? get lng;
//   double? get lat;
//   int? get raduis;
//   List<String>? get Dates;
//   List<String>? get Event_Names;
//   List<int>? get OrganizersId;
//   List<int>? get ModeratorsID;
//   String? get Start_Date;
//   String? get End_Date;
//   List<String>? get Base64Images;
//   String? get ColorS;
//   String? get LOcation;
//   String? get Title;
//   String? get Description;
//   int? get Cateogory_id;
//
//
//   CreateBubble._();
//   factory CreateBubble([updates(CreateBubbleBuilder b)]) = _$CreateBubble;
// }
//
// abstract class SearchFreinds extends CreateBubbleEvent
//     implements Built<SearchFreinds, SearchFreindsBuilder> {
//   String? get Keyword;
//   SearchFreinds._();
//   factory SearchFreinds([updates(SearchFreindsBuilder b)]) = _$SearchFreinds;
// }
//
// abstract class ChangeDone3 extends CreateBubbleEvent
//     implements Built<ChangeDone3, ChangeDone3Builder> {
//
//   bool? get ChangeDone33;
//   ChangeDone3._();
//   factory ChangeDone3([Function(ChangeDone3Builder b) updates]) = _$ChangeDone3;
// }
//
// abstract class AddStartandEndTime extends CreateBubbleEvent
//     implements Built<AddStartandEndTime, AddStartandEndTimeBuilder> {
//
//   String? get StartTime;
//   String? get EndTime;
//   AddStartandEndTime._();
//   factory AddStartandEndTime([Function(AddStartandEndTimeBuilder b) updates]) = _$AddStartandEndTime;
// }
//
// abstract class ChangePickedColor extends CreateBubbleEvent
//     implements Built<ChangePickedColor, ChangePickedColorBuilder> {
//   ChangePickedColor._();
//   String? get PickedColor;
//   factory ChangePickedColor([updates(ChangePickedColorBuilder b)]) = _$ChangePickedColor;
// }
// abstract class GetEventCateogories extends CreateBubbleEvent
//     implements Built<GetEventCateogories,GetEventCateogoriesBuilder> {
//
//   GetEventCateogories._();
//   factory GetEventCateogories([updates(GetEventCateogoriesBuilder b)]) = _$GetEventCateogories;
// }
//
// abstract class SelectColor extends CreateBubbleEvent
//     implements Built<SelectColor,SelectColorBuilder> {
// int? get Index;
// String? get PickedColor;
//   SelectColor._();
//   factory SelectColor([updates(SelectColorBuilder b)]) = _$SelectColor;
// }
// abstract class AddedImage extends CreateBubbleEvent
//     implements Built<AddedImage, AddedImageBuilder> {
//   // fields go here
//   bool? get Status;
//   File? get image;
//   AddedImage._();
//   factory AddedImage([Function(AddedImageBuilder b) updates]) = _$AddedImage;
// }
// abstract class IncreamentEventsLength extends CreateBubbleEvent
//     implements Built<IncreamentEventsLength,IncreamentEventsLengthBuilder> {
//
//   IncreamentEventsLength._();
//   factory IncreamentEventsLength([Function(IncreamentEventsLengthBuilder b) updates]) = _$IncreamentEventsLength;
// }
//
// abstract class DecreamentEventsLength extends CreateBubbleEvent
//     implements Built<DecreamentEventsLength,DecreamentEventsLengthBuilder> {
//   int? get index;
//   DecreamentEventsLength._();
//   factory DecreamentEventsLength([Function(DecreamentEventsLengthBuilder b) updates]) = _$DecreamentEventsLength;
// }
//
//
// abstract class IncreamentHours extends CreateBubbleEvent
//     implements Built<IncreamentHours,IncreamentHoursBuilder> {
//
//   IncreamentHours._();
//   factory IncreamentHours([Function(IncreamentHoursBuilder b) updates]) = _$IncreamentHours;
// }
// abstract class DecreamentHours extends CreateBubbleEvent
//     implements Built<DecreamentHours,DecreamentHoursBuilder> {
//
//   DecreamentHours._();
//   factory DecreamentHours([Function(DecreamentHoursBuilder b) updates]) = _$DecreamentHours;
// }
// abstract class IncreamentMins extends CreateBubbleEvent
//     implements Built<IncreamentMins,IncreamentMinsBuilder> {
//
//   IncreamentMins._();
//   factory IncreamentMins([Function(IncreamentMinsBuilder b) updates]) = _$IncreamentMins;
// }
// abstract class DecreamentMins extends CreateBubbleEvent
//     implements Built<DecreamentMins,DecreamentMinsBuilder> {
//
//   DecreamentMins._();
//   factory DecreamentMins([Function(DecreamentMinsBuilder b) updates]) = _$DecreamentMins;
// }
// abstract class SwitchAMandPM extends CreateBubbleEvent
//     implements Built<SwitchAMandPM,SwitchAMandPMBuilder> {
//
//   bool? get status;
//
//   SwitchAMandPM._();
//   factory SwitchAMandPM([updates(SwitchAMandPMBuilder b)]) = _$SwitchAMandPM;
// }
// abstract class AddEventInfo extends CreateBubbleEvent
//     implements Built<AddEventInfo,AddEventInfoBuilder> {
//   int? get index;
//   String? get date;
//   String? get Event_Name;
//   bool? get IsEdit_TextField;
//   AddEventInfo._();
//   factory AddEventInfo([updates(AddEventInfoBuilder b)]) = _$AddEventInfo;
// }
// //ChangeDateChosenStatus
// abstract class ChangeDateChosenStatus extends CreateBubbleEvent
//     implements Built<ChangeDateChosenStatus, ChangeDateChosenStatusBuilder> {
//   int? get index;
//   ChangeDateChosenStatus._();
//   factory ChangeDateChosenStatus([updates(ChangeDateChosenStatusBuilder b)]) = _$ChangeDateChosenStatus;
// }
// abstract class ImageSizeAlreat extends CreateBubbleEvent
//     implements Built<ImageSizeAlreat,ImageSizeAlreatBuilder> {
//   bool? get Status;
//
//   ImageSizeAlreat._();
//   factory ImageSizeAlreat([updates(ImageSizeAlreatBuilder b)]) = _$ImageSizeAlreat;
// }