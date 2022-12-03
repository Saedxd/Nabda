//
// import 'dart:typed_data';
//
// import 'package:bloc/bloc.dart';
// import 'package:bubbles/Data/repository/irepository.dart';
//
//
// class CreateBubbleBloc extends Bloc<CreateBubbleEvent, CreateBubbleState> {
//
//   IRepository _repository;
//
//   CreateBubbleBloc(this._repository) : super(CreateBubbleState.initail());
//
//   @override
//   CreateBubbleState get initialState => CreateBubbleState.initail();
//
//   @override
//   Stream<CreateBubbleState> mapEventToState(CreateBubbleEvent event,) async* {
//     // if (event is ChangeDone1) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..DoneChoose1 = event.DoneColor1
//     //   );
//     // }
//     // if (event is ImageSizeAlreat) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..ImageSizeStatus = event.Status!
//     //   );
//     // }
//     // if (event is AddedImage) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..AddedImageIS_Success = event.Status!
//     //       ..Image = event.image!
//     //   );
//     // }
//     //
//     // if (event is ChangeDone2) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..DoneChoose2 = event.DoneColor2
//     //   );
//     // }
//     // if (event is ChangeDone3) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..ChangeDone33 = event.ChangeDone33
//     //   );
//     // }
//     // if (event is GetFreinds) {
//     //   try {
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..isLoading = true
//     //       ..error = ""
//     //       ..success = false
//     //       ..GetFriends = null
//     //     );
//     //
//     //     final date = await _repository.GetFreinds();
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..isLoading = true
//     //       ..error = ""
//     //       ..success = false
//     //       ..GetFriends.replace(date)
//     //     );
//     //
//     //     state.FilteredFriendlist!.clear();
//     //     state.Friendlist!.clear();
//     //
//     //     for (int i = 0; i < state.GetFriends!.friends!.length; i++) {
//     //       FrinedsData FreindData = FrinedsData();
//     //
//     //       FreindData.Avatar = state.GetFriends!.friends![i].avatar.toString();
//     //       FreindData.Alias = state.GetFriends!.friends![i].alias.toString();
//     //       String value = state.GetFriends!.friends![i].background_color
//     //           .toString();
//     //       var myInt = int.parse(value);
//     //       var BackgroundColor = myInt;
//     //       FreindData.Background_Color = BackgroundColor.toString();
//     //
//     //       FreindData.ID = state.GetFriends!.friends![i].id!.toInt();
//     //       FreindData.my_id = state.GetFriends!.friends![i].me_id!.toInt();
//     //
//     //       state.FilteredFriendlist!.add(FreindData);
//     //       state.Friendlist!.add(FreindData);
//     //     }
//     //
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..isLoading = false
//     //       ..error = ""
//     //       ..success = true
//     //     );
//     //   } catch (e) {
//     //     print('get Error $e');
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..isLoading = false
//     //       ..error = "Something went wrong"
//     //       ..success = false
//     //       ..GetFriends = null
//     //     );
//     //   }
//     // }
//     // if (event is GetEventCateogories) {
//     //   try {
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..EventCateogoryIsLoading = true
//     //       ..EventCateogorySuccess = false
//     //       ..EventCateogory = null
//     //     );
//     //
//     //     final date = await _repository.GetEventCateogories();
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..EventCateogoryIsLoading = false
//     //       ..EventCateogorySuccess = true
//     //       ..EventCateogory.replace(date)
//     //     );
//     //   } catch (e) {
//     //     print('get Error $e');
//     //   }
//     // }
//     //
//     // if (event is CreateBubble) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..CreateBubbleISloading = true
//     //     ..CreateBubbleError = ""
//     //     ..CreateBUbbleSuccess = false
//     //     ..CreateBubble = null
//     //   );
//     //   final date = await _repository.CreateBubble(
//     //       event.Title!,
//     //       event.LOcation!,
//     //       event.Base64Images!,
//     //       event.ColorS!,
//     //       event.Description!,
//     //       event.ModeratorsID!,
//     //       event.Start_Date!,
//     //       event.End_Date!,
//     //       event.Dates!,
//     //       event.Event_Names!,
//     //       event.lng!,
//     //       event.lat!,
//     //       event.raduis!,
//     //       event.Cateogory_id!);
//     //
//     //
//     //   print('get Success data $date');
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..CreateBubble.replace(date)
//     //   );
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..CreateBubbleISloading = false
//     //     ..CreateBubbleError = ""
//     //     ..CreateBUbbleSuccess = true
//     //   );
//     // }
//     // if (event is SelectColor) {
//     //   try {
//     //     yield state.rebuild((b) =>
//     //     b..IsChosen_Colors = List.filled(20, false)
//     //     );
//     //
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..ChooseColorIsLoading = false
//     //       ..IsChosen_Colors![event.Index!] = true
//     //       ..PickedColor = event.PickedColor
//     //     );
//     //
//     //     yield state.rebuild((b) =>
//     //     b..ChooseColorIsLoading = true
//     //     );
//     //     print(state.IsChosen_Colors);
//     //
//     //     print("Clicked2");
//     //   } catch (e) {
//     //     print('get Error $e');
//     //   }
//     // }
//     //
//     //
//     // if (event is SearchFreinds) {
//     //   try {
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..isLoading = true
//     //       ..error = ""
//     //       ..success = false
//     //     );
//     //
//     //     state.FilteredFriendlist!.clear();
//     //     print("Cleared");
//     //
//     //     state.Friendlist!.forEach((FriendObject) {
//     //       if (FriendObject.Alias!.toLowerCase().contains(
//     //           event.Keyword!.toLowerCase())) {
//     //         state.FilteredFriendlist!.add(FriendObject);
//     //       }
//     //     });
//     //
//     //
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..isLoading = false
//     //       ..error = ""
//     //       ..success = true
//     //     );
//     //   } catch (e) {
//     //     print('get Error $e');
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..isLoading = false
//     //       ..error = "Something went wrong"
//     //       ..success = false
//     //       ..SearchFrinedsResult = null
//     //     );
//     //   }
//     // }
//     // if (event is AddStartandEndTime) {
//     //   try {
//     //     yield state.rebuild((b) =>
//     //     b
//     //       ..Start_Time = event.StartTime
//     //       ..End_Time = event.EndTime
//     //     );
//     //   } catch (e) {
//     //     print('get Error $e');
//     //   }
//     // }
//     // if (event is ChangePickedColor) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..PickedColor = event.PickedColor
//     //   );
//     // }
//     // if (event is IncreamentEventsLength) {
//     //   // state.eventNamesStatus!.add(0);
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..eventNamesLengthisLoading = true
//     //   );
//     //   //  yield state.rebuild((b) =>
//     //   //  b
//     //   //    ..eventNamesStatus!.add(0)
//     //   //  );
//     //   //   yield state.rebuild((b) =>
//     //   //   b
//     //   //     ..controllers!.add(TextEditingController())
//     //   //   );
//     //
//     //   Event_Dates dates = Event_Dates();
//     //   dates.Date = "";
//     //   dates.Event_Name = "";
//     //   dates.Date_IsChosen = false;
//     //
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..dates!.add(dates)
//     //   );
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..eventNamesLengthisLoading = false
//     //   );
//     // }
//     //
//     //
//     // if (event is DecreamentEventsLength) {
//     //   //state.eventNamesStatus!.removeAt(event.index!);
//     //   // yield state.rebuild((b) =>
//     //   // b
//     //   //   ..eventNamesLengthisLoading = true
//     //   // );
//     //   // print(state.eventNamesStatus);
//     //   // yield state.rebuild((b) =>
//     //   // b
//     //   //   ..eventNamesStatus!.removeAt(event.index!)
//     //   // );
//     //   // print(state.eventNamesStatus);
//     //   // yield state.rebuild((b) =>
//     //   // b
//     //   //   ..eventNamesLengthisLoading = false
//     //   // );
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..eventNamesLengthisLoading = true
//     //   );
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..dates!.removeAt(event.index!)
//     //   );
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..eventNamesLengthisLoading = false
//     //   );
//     // }
//     //
//     // if (event is DecreamentHours) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..Hours = b.Hours == 0
//     //         ? b.Hours
//     //         : b.Hours ! - 1
//     //
//     //   );
//     // }
//     //
//     // if (event is DecreamentMins) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..mins = b.mins == 0
//     //         ? b.mins
//     //         : b.mins ! - 1
//     //
//     //
//     //   );
//     // }
//     // if (event is IncreamentHours) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..Hours = b.Hours == 12
//     //         ? b.Hours
//     //         : b.Hours ! + 1
//     //
//     //   );
//     // }
//     //
//     // if (event is IncreamentMins) {
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..mins = b.mins == 60
//     //         ? b.mins
//     //         : b.mins ! + 1
//     //
//     //
//     //   );
//     // }
//     //
//     //
//     // if (event is SwitchAMandPM) {
//     //   print("Clicked");
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..PmAmLOADING = true
//     //   );
//     //   if (state.PMandAM.toString() == "AM") {
//     //     print("Clicked 2");
//     //     yield state.rebuild((b) =>
//     //     b..PMandAM = "PM"
//     //
//     //     );
//     //   } else {
//     //     print("Clicked 3");
//     //     yield state.rebuild((b) =>
//     //     b..PMandAM = "AM"
//     //     );
//     //   }
//     //
//     //   yield state.rebuild((b) =>
//     //   b
//     //     ..PmAmLOADING = false
//     //   );
//     // }
//     //
//     // if (event is AddEventInfo) {
//     //   //
//     //   yield state.rebuild((b) =>
//     //   b  ..DateChosenIsLOading = true
//     //   );
//     //
//     //   if (!event.IsEdit_TextField!) {
//     //     state.dates![event.index!].Date = event.date!;
//     //     state.dates![event.index!].Date_IsChosen = true;
//     //   }
//     //
//     //  state.dates![event.index!].Event_Name = event.Event_Name!;
//     //
//     //
//     //   yield state.rebuild((b) =>
//     //   b  ..DateChosenIsLOading = false
//     //   );
//     //
//     // }
//     // if (event is ChangeDateChosenStatus) {
//     //   //
//     //   yield state.rebuild((b) =>
//     //   b  ..DateChosenIsLOading = true
//     //   );
//     //
//     //   state.dates![event.index!].Date_IsChosen = true;
//     //
//     //   yield state.rebuild((b) =>
//     //   b  ..DateChosenIsLOading = false
//     //   );
//     //
//     // }
//
//   }
//
//
// }