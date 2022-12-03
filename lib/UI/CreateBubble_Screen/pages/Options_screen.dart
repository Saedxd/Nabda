// import 'dart:io';
// import 'package:address_search_field/address_search_field.dart';
// import 'package:bubbles/Data/prefs_helper/iprefs_helper.dart';
// import 'package:bubbles/Injection.dart';
// import 'package:bubbles/UI/Home/CreateBubble_Screen/bloc/HomeScreen_Bloc.dart';
// import 'package:bubbles/UI/Home/CreateBubble_Screen/bloc/HomeScreen_Event.dart';
// import 'package:bubbles/UI/Home/CreateBubble_Screen/bloc/HomeScreen_State.dart';
// import 'package:bubbles/core/widgets/CustomButton.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
//
//
// class Options_screen extends StatefulWidget {
//
//
//   Options_screen({Key? key,})
//       : super(key: key);
//   @override
//   State<Options_screen> createState() => _Options_screenState();
// }
//
// class _Options_screenState extends State<Options_screen> {
//   File? image;
//   final _CreateBubbleBloc = sl<CreateBubbleBloc>();
//   final _formKey3 = GlobalKey<FormState>();
//   final TextEditingController _SearchController = TextEditingController();
//   final _formkey1 = GlobalKey<FormState>();
//   final pref = sl<IPrefsHelper>();
//   late FocusNode FocuseNODE;
//   bool done1 = false;
//   bool done2 = false;
//   String date = "";
//   String STartTimeString = "";
//   String EndTimeString = "";
//   DateTime? STartTime;
//   DateTime? EndTime;
//   DateTime selectedDate = DateTime.now();
//   final DateRangePickerController _pickerController =
//   DateRangePickerController();
//   String time = "";
//   List<DateTime>? LISTdate;
//   List<String> LISTdateFormated = [];
//   DateTime? SingleDate;
//   List<DateTime> ListOfSingleDates = [];
//   List<String> ListOfSingleDatesString = [];
//   List<int> OrganizersId = [];
//   List<String> AvatarsSelected = [];
//   List<String> BackGroundColorTOAvatars = [];
//   bool DiditONCE = false;
//   List<int> Array2 = [];
//   DateTime?  start;
//   DateTime?  End;
//   var geoMethodss;
//   late GeoMethods geoMethods;
//   late Address destinationAddress;
//   String  STartTime2 ='';
//   String  EndTime2 ='';
//   late FocusNode FoucesNodePass;
//   late FocusNode FoucesNodeEmail;
//   late FocusNode FoucesNodeConfirm;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final TextEditingController _AddPlainController = TextEditingController();
//   final TextEditingController _DescriptionController = TextEditingController();
//   final TextEditingController _LocationController = TextEditingController();
//   @override
//   void dispose() {
//     super.dispose();
//     _SearchController.dispose();
//     _pickerController.dispose();
//     _DescriptionController.dispose();
//     _AddPlainController.dispose();
//     _LocationController.dispose();
//     FocuseNODE.dispose();
//   }
//
//
//   @override
//   void initState() {
//     super.initState();
//     FocuseNODE = FocusNode();
//     geoMethods =GeoMethods(
//       googleApiKey: Platform.isIOS?'AIzaSyDU_37KrySa8XKoPivA5jKvsuVGG5OVxW8':"AIzaSyB5LMtZr6xsMbx6EJ2US_MHH6eefTsxFDU",
//       language: 'en',
//     );
//     geoMethods.autocompletePlace(query: _LocationController.text);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     TextTheme _textthem = Theme.of(context).textTheme;
//     ColorScheme COLOR = Theme.of(context).colorScheme;
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     TextTheme _TextTheme = Theme.of(context).textTheme;
//     ColorScheme ColorS = Theme.of(context).colorScheme;
//     return BlocBuilder(
//         bloc: _CreateBubbleBloc,
//         builder: (BuildContext Context, CreateBubbleState state) {
//           return WillPopScope(
//               onWillPop: () async {
//                 return true;
//               },
//               child: Scaffold(
//                   resizeToAvoidBottomInset: false,
//                   key: _scaffoldKey,
//                   body: SafeArea(
//                     child:  Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only( bottom: 18.h),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                   margin: EdgeInsets.only(top:h/100,left: w/30,),
//                                   // margin: EdgeInsets.only(
//                                   //     right: h / 20),
//                                   child: IconButton(
//                                       icon: SvgPicture.asset(
//                                           "Assets/images/Frame 11.svg",
//                                           width: 30.w,
//                                           color: COLOR.surface),
//                                       onPressed:(){
//                                         Navigator.pop(context);
//                                       }
//                                   )),
//
//                               Center(
//                                 child: Container(
//                                   margin: EdgeInsets.only(top: h/75,right: w/10),
//                                   child: Text('Bubble Options', textAlign: TextAlign.center, style: TextStyle(
//                                       color: Color.fromRGBO(255, 255, 255, 1),
//                                       fontFamily: 'Red Hat Display',
//                                       fontSize: 18.sp,
//                                       letterSpacing: 1,
//                                       fontWeight: FontWeight.w600,
//                                       height: 1.h
//                                   ),),
//                                 ),
//                               ),
//                               Text(""),
//                             ],
//                           ),
//                         ),
//
//                         Container(
//                           child:
//                           Row(
//                             children: [
//                               Container(
//                                 width: w/2.9,
//                                 height: h/13,
//                                 margin: EdgeInsets.only(left: w/12.5),
//                                 child: Center(
//                                   child: Text('Bubble Duration:', textAlign: TextAlign.left, style: TextStyle(
//                                       color: Color.fromRGBO(234, 234, 234, 1),
//                                       fontFamily: 'Red Hat Text',
//                                       fontSize: 14.sp,
//                                       letterSpacing: 0.3,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.h
//                                   ),),
//                                 ),
//                               ),
//
//                               !state.DoneChoose1!?
//                               Theme(
//                                   data: ThemeData(
//                                     splashColor: Colors.transparent,
//                                     highlightColor: Colors.transparent,
//                                   ),
//                                   child :
//                                   InkWell(
//                                     onTap:()=>showBottom(),
//                                     child: Container(
//                                       width: w/2.4,
//                                       height: h/22,
//                                       margin: EdgeInsets.only(left: w/40),
//                                       decoration: BoxDecoration(
//                                         borderRadius : Borderr(5),
//                                         color : Color.fromRGBO(168, 48, 99, 1),
//                                       ),
//                                       child: Center(
//                                         child:
//                                         Text('Schedule', textAlign: TextAlign.center, style: TextStyle(
//                                             color: Color.fromRGBO(234, 234, 234, 1),
//                                             fontFamily: 'Red Hat Text',
//                                             fontSize: 14.sp,
//                                             letterSpacing: 0.5 ,
//                                             fontWeight: FontWeight.w300,
//                                             height: 1.h
//                                         ),)
//                                         ,
//                                       ),
//                                     ),
//                                   )):
//                               Expanded(
//                                 child: Row(
//                                   children: [
//                                     Text('${state.Start_Time!.substring(0,8)} - ${state.End_Time!.substring(0,8)}', textAlign: TextAlign.left, style: TextStyle(
//                                         color: Color.fromRGBO(207, 109, 56, 1),
//                                         fontFamily: 'Red Hat Text',
//                                         fontSize: 14.sp,
//                                         letterSpacing: 0.2,
//                                         fontWeight: FontWeight.w400,
//                                         height: 1.h
//                                     ),),
//                                     IconButton(
//                                         icon: Icon(
//                                           Icons.edit_outlined,
//                                           size: w / 20,
//                                         ),
//                                         onPressed: ()=>showBottom()
//                                     ),
//
//                                   ],
//                                 ),
//                               ),
//
//
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only( bottom: 20.h),
//                           child:
//                           Container(
//                             width: w/1.3,
//                             child: Center(
//                               child:
//                               Text('Select the duration of your bubble. Event dates and information can be customised in later steps.', textAlign: TextAlign.left, style: TextStyle(
//                                   color: Color.fromRGBO(255, 255, 255, 1),
//                                   fontFamily: 'Red Hat Text',
//                                   fontSize: 10.sp,
//                                   letterSpacing: 0 ,
//                                   fontWeight: FontWeight.w300,
//                                   height: 1.7.h
//                               ),),
//                             ),
//                           ),
//                         ),
//                         Container(
//                             width: w/1.2,
//                             height: h / 1.9,
//                             child: Form(
//                               key: _formKey3,
//                               autovalidateMode:AutovalidateMode.onUserInteraction,
//                               child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       width: w/1.2,
//                                       height: h / 10,
//                                       margin: EdgeInsets.only(bottom: 3.h),
//                                       child: TextFormField(
//                                         keyboardAppearance:
//                                         Brightness.dark,
//                                         textInputAction:
//                                         TextInputAction.next,
//                                         controller: _AddPlainController,
//                                         cursorHeight: 20,
//                                         cursorColor: Colors.black,
//                                         style:GoogleFonts.roboto().copyWith(
//                                             fontSize: 14.sp,
//                                             height: 1.h,
//                                             fontWeight:
//                                             FontWeight.w300,
//                                             color: Color(0xffC4C4C4)),
//                                         onFieldSubmitted: (value) {},
//                                         validator: MultiValidator([
//                                           RequiredValidator(
//                                               errorText:
//                                               "Required"),
//                                         ]),
//                                         decoration: InputDecoration(
//                                             errorStyle: const TextStyle(
//                                               color: Colors.red,),
//                                             errorBorder:  OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular( h/200.5),
//                                               borderSide: BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 0.0),
//                                             ),
//                                             focusedErrorBorder:  OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular( h/200.5),
//                                               borderSide: BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 0.0),
//                                             ),
//                                             border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular( h/200.5)
//                                             ),
//                                             enabledBorder:
//                                             UnderlineInputBorder(
//                                                 borderSide:
//                                                 const BorderSide(
//                                                     color: Colors
//                                                         .transparent),
//                                                 borderRadius:BorderRadius.circular( h/200.5)
//                                             ),
//                                             focusedBorder:
//                                             UnderlineInputBorder(
//                                                 borderSide:
//                                                 const BorderSide(
//                                                     color: Colors
//                                                         .transparent),
//                                                 borderRadius:BorderRadius.circular( h/200.5)
//                                             ),
//                                             filled: true,
//                                             fillColor: ColorS.primaryContainer,
//                                             contentPadding:
//                                             EdgeInsets.symmetric(
//                                                 horizontal: 10.w,vertical: 10.h),
//                                             // helperText: "HELLO",
//                                             hintText: 'Add Bubble Name',
//                                             hintStyle: _TextTheme.headline6!.copyWith(
//                                               fontSize: 14.sp,
//                                             )),
//                                         keyboardType:
//                                         TextInputType.text,
//                                         // obscureText: SecureInput_pass,
//                                       ),
//                                     ),
//                                     Container(
//                                       width: w/1.2,
//                                       height: h/5,
//                                       margin: EdgeInsets.only(bottom:20.h ),
//                                       child: TextFormField(
//                                         keyboardAppearance:
//                                         Brightness.dark,
//                                         textInputAction:
//                                         TextInputAction.next,
//                                         controller:
//                                         _DescriptionController,
//                                         maxLines: 17,
//                                         style : GoogleFonts.roboto().copyWith(
//                                             fontSize: 14.sp,
//                                             height: 1.h,
//                                             fontWeight:
//                                             FontWeight.w300,
//                                             color: Color(0xffC4C4C4)),
//                                         onFieldSubmitted: (value) {},
//                                         validator: MultiValidator([
//                                           RequiredValidator(
//                                               errorText:
//                                               "Required"),
//
//                                         ]),
//
//                                         cursorColor: Colors.black,
//                                         // style: TextStyle(
//                                         //     fontSize: 19,
//                                         //     fontWeight:
//                                         //     FontWeight.w500,
//                                         //     color: Colors.brown),
//                                         decoration: InputDecoration(
//                                             errorStyle: const TextStyle(
//                                               color: Colors.red,),
//                                             errorBorder:  OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular( h/200.5),
//                                               borderSide: BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 0.0),
//                                             ),
//                                             focusedErrorBorder:  OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular( h/200.5),
//                                               borderSide: BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 0.0),
//                                             ),
//                                             border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular( h/200.5)
//                                             ),
//                                             enabledBorder:
//                                             UnderlineInputBorder(
//                                                 borderSide:
//                                                 const BorderSide(
//                                                     color: Colors
//                                                         .transparent),
//                                                 borderRadius:BorderRadius.circular( h/200.5)
//                                             ),
//                                             focusedBorder:
//                                             UnderlineInputBorder(
//                                                 borderSide:
//                                                 const BorderSide(
//                                                     color: Colors
//                                                         .transparent),
//                                                 borderRadius:BorderRadius.circular( h/200.5)
//                                             ),
//
//                                             filled: true,
//                                             fillColor: ColorS.primaryContainer,
//                                             hintText: "Add Description",
//                                             hintStyle: _TextTheme.headline6!.copyWith(
//                                               fontSize: 14.sp,
//                                             )),
//                                         keyboardType:
//                                         TextInputType.text,
//                                         // obscureText: SecureInput_pass,
//                                       ),
//                                     ),
//                                     Container(
//                                       width: w/1.2,
//                                       height: h / 10,
//                                       child: TextFormField(
//                                         keyboardAppearance:
//                                         Brightness.dark,
//                                         textInputAction:
//                                         TextInputAction.done,
//                                         style : GoogleFonts.roboto().copyWith(
//                                             fontSize: 14.sp,
//                                             height: 1.h,
//                                             fontWeight:
//                                             FontWeight.w300,
//                                             color: Color(0xffC4C4C4)),
//                                         controller:
//                                         _LocationController,
//                                         onTap: () =>
//                                             showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) =>
//                                                   AddressSearchDialog(
//                                                     style: AddressDialogStyle(
//                                                       color: Color(0xff942657),
//                                                       backgroundColor: Color(
//                                                           0xff303030),
//                                                       useButtons: false,
//                                                     ),
//                                                     geoMethods: geoMethods,
//                                                     controller: _LocationController,
//                                                     onDone: (Address address) =>
//                                                     destinationAddress = address,
//                                                   ),
//                                             ),
//                                         validator: MultiValidator([
//                                           RequiredValidator(
//                                               errorText:
//                                               "Required"),
//
//                                         ]),
//                                         cursorColor: Colors.black,
//                                         decoration: InputDecoration(
//                                             errorStyle: const TextStyle(
//                                               color: Colors.red,),
//                                             errorBorder:  OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular( h/200.5),
//                                               borderSide: BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 0.0),
//                                             ),
//                                             focusedErrorBorder:  OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular( h/200.5),
//                                               borderSide: BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 0.0),
//                                             ),
//                                             border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular( h/200.5)
//                                             ),
//                                             enabledBorder:
//                                             UnderlineInputBorder(
//                                                 borderSide:
//                                                 const BorderSide(
//                                                     color: Colors
//                                                         .transparent),
//                                                 borderRadius:BorderRadius.circular( h/200.5)
//                                             ),
//                                             focusedBorder:
//                                             UnderlineInputBorder(
//                                                 borderSide:
//                                                 const BorderSide(
//                                                     color: Colors
//                                                         .transparent),
//                                                 borderRadius:BorderRadius.circular( h/200.5)
//                                             ),
//                                             filled: true,
//                                             fillColor: ColorS.primaryContainer,
//                                             contentPadding:
//                                             EdgeInsets.symmetric(
//                                               horizontal: 12.w,),
//                                             hintText: 'Location Name',
//                                             hintStyle: _TextTheme.headline6!.copyWith(
//                                               fontSize: 14.sp,
//                                             )),
//                                         keyboardType:
//                                         TextInputType.text,
//                                         // obscureText: SecureInput_pass,
//                                       ),
//                                     ),
//                                     Container(
//                                       width: w/1.3,
//                                       child: Center(
//                                           child:
//                                           Text('Adding the name of the location, venue, establishment etc can help your audience reach your bubble.', textAlign: TextAlign.left, style: TextStyle(
//                                               color: Color.fromRGBO(255, 255, 255, 1),
//                                               fontFamily: 'Red Hat Text',
//                                               fontSize: 10.sp,
//                                               letterSpacing: 0 ,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.7.h
//                                           ),)
//                                       ),
//                                     ),
//                                   ]),
//                             )),
//                 Theme(
//                   data: ThemeData(
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                   ),
//                   child :
//                         Container(
//                           width: w/2,
//                           margin: EdgeInsets.only(top: 20.h),
//                           child: CustomButton(
//                             onPressed: ()async{
//                               if (state.DoneChoose1!) {
//                                 if (_formKey3.currentState!.validate()) {
//                                   widget.Dataa!.Start_Date = STartTime2.toString();
//                                   widget.Dataa!.End_Date = EndTime2.toString();
//                                   widget.Dataa!.Description =
//                                       _DescriptionController.text;
//                                   widget.Dataa!.Title =
//                                       _AddPlainController.text;
//                                   widget.Dataa!.Location =
//                                       _LocationController.text;
//
//
//                                   WidgetsBinding
//                                       .instance
//                                       .addPostFrameCallback((_) =>
//                                       Navigator
//                                           .push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               Customize_Screen(
//                                                 Context: context,
//                                                 Dataa: widget.Dataa,
//                                                 Start: STartTime!,
//                                                 End: EndTime!,),
//
//                                         ),
//                                       ));
//                                 }
//                               }
//                             },
//                             ButtonText: 'Next',
//                             btnColor:   state.Start_Time!="" && state.End_Time!=""?Color(0xffA83063): Color(0xff606060),
//                             TxtColor: Color(0xffFFFFFF),
//                             SocialName: 'null',
//                             weight: FontWeight.w600,
//                             fontsize: 18.sp,
//                           ),
//                         ),)
//
//                       ],
//                     ),
//                   )));
//         });
//   }
//
//   void showBottom() {
//     TextTheme _textthem = Theme
//         .of(context)
//         .textTheme;
//     ColorScheme COLOR = Theme
//         .of(context)
//         .colorScheme;
//     var w = MediaQuery
//         .of(context)
//         .size
//         .width;
//     var h = MediaQuery
//         .of(context)
//         .size
//         .height;
//     showMaterialModalBottomSheet(
//         context: context,
//         shape:  shape(20),
//         builder: (context) {
//           return FractionallySizedBox(
//               heightFactor: h / 950,
//               child:Column(
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Container(
//                             width: w / 2,
//                             height: h / 20,
//                             margin: EdgeInsets.only(top: h / 50),
//                             child: Row(
//                               children: [
//
//                                 Center(
//                                   child: Text('Bubble Duration:',
//                                       textAlign: TextAlign.left,
//                                       style: _textthem.headlineLarge!.copyWith(
//                                           fontFamily: 'Red Hat Display',
//                                           fontSize: 18.sp,
//                                           letterSpacing: 0.4,
//                                           fontWeight: FontWeight.w600,
//                                           height: 1.h)),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Text(""),
//                         ],
//                       ),
//                       const Text(""),
//                     ],
//                   ),
//                   Container(
//                     color: const Color(0xff942657),
//                     width: w,
//                     height: h / 180,
//                   ),
//                   Expanded(
//                     child: Container(
//                         width: double.infinity,
//                         height: h / 1.5,
//                         margin: EdgeInsets.all(20.w),
//                         child: SfDateRangePicker(
//                           monthCellStyle: DateRangePickerMonthCellStyle(
//                             textStyle: _textthem.headline1!.copyWith(
//                                 color: COLOR.onSurfaceVariant,
//                                 fontSize: 14.sp,
//                                 letterSpacing: 0.2199999988079071,
//                                 fontWeight: FontWeight.normal,
//                                 height: 1.5714285714285714),
//                             disabledDatesTextStyle: _textthem.headline1!
//                                 .copyWith(
//                                 color: const Color.fromRGBO(96, 96, 96, 1),//todo : fix the disabled dates on the light theme.
//                                 fontSize: 14.sp,
//                                 letterSpacing: 0.2199999988079071,
//                                 fontWeight: FontWeight.normal,
//                                 height: 1.5714285714285714),
//                           ),
//                           minDate: DateTime.now(),
//                           controller: _pickerController,
//                           showNavigationArrow: true,
//                           toggleDaySelection: true,
//                           rangeSelectionColor: const Color(0xffCF6D38),
//                           endRangeSelectionColor: const Color(0xffA83063),
//                           startRangeSelectionColor: const Color(0xffA83063),
//                           view: DateRangePickerView.month,
//                           selectionMode: DateRangePickerSelectionMode.range,
//                         )),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       try {
//                         DateTime Start = _pickerController.selectedRange!.startDate!;
//                         DateTime Ends = _pickerController.selectedRange!.endDate!;
//                         STartTime = Start;
//                         EndTime = Ends;
//                         final DateFormat formatter2 =  DateFormat('yyyy-MM-dd');
//                         STartTime2 = formatter2.format(Start);
//                         EndTime2 = formatter2.format(Ends);
//                         final DateFormat formatter =  DateFormat('dd-MM-yyyy');
//                          String STartTimeString = formatter.format(Start);
//                          String EndTimeString = formatter.format(Ends);
//                         STartTimeString = STartTimeString.replaceAll('-', '/');
//                         EndTimeString = EndTimeString.replaceAll('-', '/');
//                         print(STartTimeString);
//                         print(EndTimeString);
//                         // STartTimeString = DateFormat.yMd('en_US').format(Start);
//                         // EndTimeString = DateFormat.yMd('en_US').format(Ends);
//                         _CreateBubbleBloc.add(AddStartandEndTime((b) =>
//                         b   ..EndTime =EndTimeString
//                             ..StartTime =STartTimeString
//                         ));
//                         print(STartTime);
//                         print(EndTime);
//
//
//                         ////I/flutter (29748): 2022-06-14 00:00:00.000
//                         // // I/flutter (29748): 2022-06-30 00:00:00.000
//
//                         print(_pickerController.selectedRange!.startDate);
//                         print(_pickerController.selectedRange!.endDate);
//                         start = _pickerController.selectedRange!.startDate!;
//                         End = _pickerController.selectedRange!.endDate!;
//                         if (STartTime == "" || EndTime == "") {
//                           Navigator.pop(context);
//                         } else if (STartTime != "" && EndTime != "") {
//                           _CreateBubbleBloc.add(
//                               ChangeDone1((b) => b..DoneColor1 = true));
//                           Navigator.pop(context);
//                         }
//                       }catch(e){
//                         print(e);
//                       }
//                     },
//                     child: Container(
//                       width: w / 2,
//                       height: h / 16,
//                       decoration:  BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(7.r),
//                           topRight: Radius.circular(7.r),
//                           bottomLeft: Radius.circular(7.r),
//                           bottomRight: Radius.circular(7.r),
//                         ),
//                         color: Color.fromRGBO(148, 38, 87, 1),
//                       ),
//                       child: Center(
//
//                         child:
//                         Text('Confirm', textAlign: TextAlign.center, style: TextStyle(
//                             color: Color.fromRGBO(255, 255, 255, 1),
//                             fontFamily: 'Red Hat Display',
//                             fontSize: 18.sp,
//                             letterSpacing: 0,
//                             fontWeight: FontWeight.normal,
//                             height: 1.h
//                         ),)
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ));
//         }
//     );
//   }
//
//   Future<void> FormateDate() async {
//     for (int i = 0; i < LISTdate!.length; i++) {
//       SingleDate = DateTime.parse(LISTdate![i].toString());
//       time = DateFormat.yMMMMd('en_US').format(SingleDate!);
//       ListOfSingleDatesString.add(time.toString());
//       print(ListOfSingleDatesString);
//
//
//       String man = LISTdate![i].toString().substring(0,10);
//       SingleDate = DateTime.parse(man);
//
//
//
//       ListOfSingleDates.add(SingleDate!);
//       print(ListOfSingleDates);
//     }
//   }
//
//
// }
//
