// ignore_for_file: non_constant_identifier_names, file_names
import 'dart:io';
import 'package:testnew/UI/ContributeWithUs_Screen/pages/Contribute.dart';
import 'package:testnew/UI/HomePage/pages/DetailedScreen.dart';
import 'package:testnew/UI/HomePage/pages/whoAreWe.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testnew/App/app.dart';
import 'package:testnew/Injection.dart';
import 'package:testnew/UI/HomePage/bloc/HomeScreen_Bloc.dart';
import 'package:testnew/UI/HomePage/bloc/HomeScreen_Event.dart';
import 'package:testnew/UI/HomePage/bloc/HomeScreen_State.dart';
import 'package:testnew/core/Functions/Fucntions.dart';
import 'package:testnew/core/widgets/CustomButton.dart';
import 'package:testnew/core/widgets/Custom_Textfield.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  ScrollController scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _Controller = TextEditingController();
  final TextEditingController _Controller2 = TextEditingController();
  final TextEditingController _Controller3 = TextEditingController();
  final TextEditingController _Controller4 = TextEditingController();
  var _formkey1 = GlobalKey<FormState>();
  var _formkey2 = GlobalKey<FormState>();
  var _formkey3 = GlobalKey<FormState>();
  var _formkey4 = GlobalKey<FormState>();
  final _Homebloc = sl<HomeScreenBloc>();
   FocusNode _FocusNode =FocusNode();
  late FocusNode _FocusNode2;
  late FocusNode _FocusNode3;
  late FocusNode _FocusNode4;

//الهاتف: 082033707
  //واتساب: 972599160004
  //البريد الالكتروني: Nabda.ps@hotmail.com
  //البريد الالكتروني: .kifah.qudaih@hotmail.com
  List<String> ContactDetails = [
    " خانيونس-اول الحي الاماراتي -خلف مدرسة الامل الابتدائية للبنين",
    "082033707",
    "972599160004+",
    "Nabda.ps@hotmail.com",
    "kifah.qudaih@hotmail.com"
  ];
  List<String> Contact = [
    "عنوان الرسالة: ",
    "الهاتف: ",
    "واتساب: ",
    "البريد الالكتروني: ",
    "البريد الالكتروني: "
  ];
  List<String> ContactIcons = [
    "Assets/images/Vector(3).svg",
    "Assets/images/Vector(4).svg",
    "Assets/images/Vector(5).svg",
    "Assets/images/Icons(1).svg",
    "Assets/images/Icons(1).svg",
  ];
  Future<void> OnRefresh() async {
    _Homebloc.add(GetPosts());
    _Homebloc.add(GetUrls());
    _Homebloc.add(GetAdmins());
  }
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Color(0xff0B0D39),
          systemNavigationBarColor: Colors.black),
    );
    _FocusNode = FocusNode();
    _FocusNode2 = FocusNode();
    _FocusNode3 = FocusNode();
    _FocusNode4 = FocusNode();
    _Homebloc.add(GetPosts());
    _Homebloc.add(GetUrls());
    _Homebloc.add(GetAdmins());


    super.initState();
  }

  @override
  void dispose() {
    _Controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext Context) {
    TextTheme _TextTheme = Theme.of(context).textTheme;
    ColorScheme ColorS = Theme.of(context).colorScheme;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var media = MediaQuery.of(context).size;
    return BlocBuilder(
        bloc: _Homebloc,
        builder: (BuildContext context, HomeScreenState state){

          if (state.success!) {
            AnimatedSnackBar.material(
              'شكرا على الرسالة,سيتم الرد عليك في اقرب وقت',
              duration: Duration(seconds: 4),
              type: AnimatedSnackBarType.success,
            ).show(
              context,
            );
            //       AnimatedSnackBar.material(
            //                 'Logged in Successfully',
            //                 duration: Duration(seconds: 2),
            //                 type: AnimatedSnackBarType.success,
            //               ).show(
            //                 context,
            //               );
            _Homebloc.add(ChangeState());
            _Controller2.clear();
            _Controller.clear();
            _Controller3.clear();
            _Controller4.clear();
          }

          return WillPopScope(
              onWillPop: () async {
                print("hello");
                return true;
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                key: _scaffoldKey,
                backgroundColor: Color(0xffE4E5FC),
                appBar:AppBar(
                  backgroundColor: Color(0xff0B0D39),
                  leading: PopupMenuButton<int>(
                    icon: Image.asset("Assets/images/Vector.png"),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        // row with 2 children
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "تطوع معنا",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        // row with two children
                        child: Row(
                          children: [
                            Text(
                              "النشأة والرؤية",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    offset: Offset(-5, 55),
                    color: Colors.grey,
                    elevation: 2,
                    // on selected we show the dialog box
                    onSelected: (value) {
                      // if value 1 show dialog
                      if (value == 1) {
                                       WidgetsBinding
                                      .instance
                                      .addPostFrameCallback((_) =>
                                      Navigator.push(context,
                                        MaterialPageRoute( builder: (context) =>Contribute(),),));
                      } else if (value == 2) {
                        print("2");
                        WidgetsBinding
                            .instance
                            .addPostFrameCallback((_) =>
                            Navigator.push(context,
                              MaterialPageRoute( builder: (context) =>WhoAreWe(),),));
                        //
                      }
                    },
                  ),
                  actions: [
                    InkWell(
                      onTap: () {
                        scrollController.animateTo(
                          scrollController.position.minScrollExtent,
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 24.w),
                        child: Image.asset(
                          "Assets/images/playstore.png",
                          width: 40.w,
                          height: 40.h,
                        ),
                      ),
                    ),
                  ],
                ),
                body:SafeArea(
                  child:Stack(
                    children:[
                    RefreshIndicator(
                    onRefresh: OnRefresh,
                    backgroundColor: Colors.white,
                    color: Colors.blue,
                    child:
                      SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 56.h),
                              child: Text("جمعية نبضة الخيرية",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                    ),
                                  )),
                            ),
                            Container(
                              width: w / 1.1,
                              margin: EdgeInsets.only(top: 16.h),
                              child: Text(
                                  "جمعية نبضة الخيرية هي منظمة أهلية مستقلة غير ربحية تهدف إلى المشاركة في العملية التنموية والتمكين للقطاعات الإقتصادية والإجتماعية المختلفة في قطاع غزة , وتعمل من أجل تمكين الأسر من أجل أن تلعب دورا فاعلاً ومؤثر فيها .",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.sp,
                                        height: 2.1.h
                                    ),
                                  )),
                            ),
                            Container(
                              width: w / 1.1,
                              margin: EdgeInsets.only(top: 16.h),
                              child: Text("نبضة في جسد بلد أعيتها الحروب",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                    ),
                                  )),
                            ),
                            Container(
                                width: w / 1.1,
                                margin: EdgeInsets.only(top: 16.h),
                                child: Image.asset(
                                  "Assets/images/playstore.png",
                                  width: 100.w,
                                  height: 100.h,
                                )),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 16.h, left: 238.w, right: 20.w),
                                  child: Text("الأخبار و الفعاليات",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.almarai(
                                        textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            state.GetpostsSuccess!
                                ? Container(
                                    width: w,
                                    height: 223.h,
                                    margin:
                                        EdgeInsets.only(top: 32.h, right: 15.w),
                                    child: ScrollConfiguration(
                                      behavior: MyBehavior(),
                                      child: ListView.separated(
                                        reverse: false,
                                        shrinkWrap: true,
                                        padding: EdgeInsets.zero,
                                        physics: AlwaysScrollableScrollPhysics(
                                            parent: BouncingScrollPhysics()),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: state.posts!.posts!.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return InkWell(
                                            onTap: (){
                                              WidgetsBinding
                                                  .instance
                                                  .addPostFrameCallback((_) =>
                                                  Navigator.push(context,
                                                    MaterialPageRoute( builder: (context) =>DetailedPage(
                                                      Info: state.posts!.posts![index].note!,
                                                      name: state.posts!.posts![index].title!,
                                                      image:state.posts!.posts![index].photo!,
                                                      Date: state.posts!.posts![index].date!,
                                                    ),),));
                                            },
                                            child: Container(
                                              width: 175.w,
                                              height: 223.h,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(12.r),
                                                  topRight: Radius.circular(12.r),
                                                  bottomLeft:
                                                      Radius.circular(12.r),
                                                  bottomRight:
                                                      Radius.circular(12.r),
                                                ),
                                                gradient: LinearGradient(
                                                    begin: Alignment(
                                                        6.123234262925839e-17, 1),
                                                    end: Alignment(-1,
                                                        6.123234262925839e-17),
                                                    colors: [
                                                      Color.fromRGBO(0, 0, 0, 0),
                                                      Color.fromRGBO(0, 0, 0,
                                                          0.800000011920929)
                                                    ]),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 175.w,
                                                    height: 223.h,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(12.r),
                                                        topLeft:
                                                            Radius.circular(12.r),
                                                        bottomLeft:
                                                            Radius.circular(12.r),
                                                        bottomRight:
                                                            Radius.circular(12.r),
                                                      ),
                                                      child: CachedNetworkImage(
                                                        fit: BoxFit.fill,
                                                        imageUrl:
                                                            "https://beatnbda.com/laravelnbda/public/activePhoto/${state.posts!.posts![index].photo}",
                                                        placeholder:
                                                            (context, url) => Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                                width: w / 8,
                                                                height: h / 20,
                                                                child: Center(
                                                                    child:
                                                                        CircularProgressIndicator())),
                                                          ],
                                                        ),
                                                        errorWidget: (context,
                                                                url, error) =>
                                                            Icon(Icons.error),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                      bottom: 15.h,
                                                      left: 9.w,
                                                      child: Text(
                                                        state.posts!.posts![index]
                                                            .date!,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.almarai(
                                                          textStyle: TextStyle(
                                                              color: Color(
                                                                  0xffFFFFFF),
                                                              fontSize: 8.sp,
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                              height: 2.875.h),
                                                        ),
                                                      )),
                                                  Positioned(
                                                      bottom: 15.h,
                                                      right: 16.w,
                                                      child: Text(
                                                        state.posts!.posts![index]
                                                            .title!,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.almarai(
                                                          textStyle: TextStyle(
                                                              color: Color(
                                                                  0xffFFFFFF),
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                              height: 2.875.h),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return SizedBox(
                                            width: 8.w,
                                          );
                                        },
                                      ),
                                    ))
                                : state.GetPostsisLoading!
                                    ? Container(
                                        width: w,
                                        height: 223.h,
                                        child: Center(
                                            child:
                                                listLoader(context: context)),
                                      )
                                    : Container(
                                        width: w,
                                        height: 223.h,
                                        child:
                                            Center(child: Text("Loading...")),
                                      ),

                            Container(
                              margin: EdgeInsets.only(top: 33.h, bottom: 16.h),
                              child: Text("الهيئة الادارية",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                    ),
                                  )),
                            ),

                            state.GetAdminsSuccess!
                                ? Container(
                                    width: w,
                                    height: 223.h,
                                    margin:
                                        EdgeInsets.only(top: 16.h, right: 15.w),
                                    child: ScrollConfiguration(
                                      behavior: MyBehavior(),
                                      child: ListView.separated(
                                        shrinkWrap: true,
                                        padding: EdgeInsets.zero,
                                        physics: AlwaysScrollableScrollPhysics(
                                            parent: BouncingScrollPhysics()),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: state.Admins!.admins!.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return
                                            InkWell(
                                              onTap: (){

                                              },
                                              child: Container(
                                              width: 175.w,
                                              height: 223.h,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(12.r),
                                                  topRight: Radius.circular(12.r),
                                                  bottomLeft:
                                                      Radius.circular(12.r),
                                                  bottomRight:
                                                      Radius.circular(12.r),
                                                ),
                                                gradient: LinearGradient(
                                                    begin: Alignment(
                                                        6.123234262925839e-17, 1),
                                                    end: Alignment(-1,
                                                        6.123234262925839e-17),
                                                    colors: [
                                                      Color.fromRGBO(0, 0, 0, 0),
                                                      Color.fromRGBO(0, 0, 0,
                                                          0.800000011920929)
                                                    ]),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 175.w,
                                                    height: 223.h,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(12.r),
                                                        topLeft:
                                                            Radius.circular(12.r),
                                                        bottomLeft:
                                                            Radius.circular(12.r),
                                                        bottomRight:
                                                            Radius.circular(12.r),
                                                      ),
                                                      child: CachedNetworkImage(
                                                        fit: BoxFit.fill,
                                                        imageUrl:
                                                            "https://beatnbda.com/laravelnbda/public/userPhoto&cv/${state.Admins!.admins![index].id}/${state.Admins!.admins![index].photo_name}",
                                                        placeholder:
                                                            (context, url) => Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                                width: w / 8,
                                                                height: h / 20,
                                                                child: Center(
                                                                    child:
                                                                        CircularProgressIndicator())),
                                                          ],
                                                        ),
                                                        errorWidget: (context,
                                                                url, error) =>
                                                            Icon(Icons.error),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                      bottom: 24.h,
                                                      left: 0,
                                                      right: 0,
                                                      child: Text(
                                                        state
                                                            .Admins!
                                                            .admins![index]
                                                            .email!,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.almarai(
                                                          textStyle: TextStyle(
                                                              color:
                                                                  Color.fromRGBO(
                                                                      142,
                                                                      146,
                                                                      159,
                                                                      1),
                                                              fontSize: 8.sp,
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                              height: 2.875.h),
                                                        ),
                                                      )),
                                                  Positioned(
                                                      bottom: 41.h,
                                                      left: 0,
                                                      right: 0,
                                                      child: Text(
                                                        state.Admins!
                                                            .admins![index].name!,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.almarai(
                                                          textStyle: TextStyle(
                                                              color: Color(
                                                                  0xffFFFFFF),
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                              height: 2.875.h),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                          ),
                                            );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return SizedBox(
                                            width: 8.w,
                                          );
                                        },
                                      ),
                                    ))
                                : state.GetAdminsisLoading!
                                    ? Container(
                                        width: w,
                                        height: 223.h,
                                        child: Center(
                                            child:
                                                listLoader(context: context)),
                                      )
                                    : Container(
                                        width: w,
                                        height: 223.h,
                                        child:
                                            Center(child: Text("Loading...")),
                                      ),

                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 32.h,
                                      left: 238.w,
                                      bottom: 16.h,
                                      right: 20.w),
                                  child: Text("المقر والتواصل",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.almarai(
                                        textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 16.h,
                                      left: 327.w,
                                      bottom: 16.h,
                                      right: 13.w),
                                  child: Text("الاسم",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.almarai(
                                        textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Form(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              key: _formkey1,
                              child: textfeild(
                                FontSize: 20,
                                hidePass: false,
                                FillColor: Colors.white,
                                weidth: 1.32,
                                topContentPadding: 0,
                                MaxLines: 1,
                                Height: 80.h,
                                Margin: 25,
                                FoucesNode: _FocusNode,
                                Onsubmitted: (String) {},
                                TextInputaction: TextInputAction.next,
                                Controller: _Controller,
                                Hint_Text: "أدخل اسمك",
                                Onchanged: (String) {},
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "مطلوب"),
                                ]),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 0.h,
                                      left: 285.w,
                                      bottom: 16.h,
                                      right: 13.w),
                                  child: Text("البريد الالكتروني",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.almarai(
                                        textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Form(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              key: _formkey2,
                              child: textfeild(
                                FontSize: 20,
                                hidePass: false,
                                FillColor: Colors.white,
                                weidth: 1.32,
                                topContentPadding: 0,
                                MaxLines: 1,
                                Height: 80.h,
                                Margin: 25,
                                FoucesNode: _FocusNode2,
                                Onsubmitted: (String) {},
                                TextInputaction: TextInputAction.next,
                                Controller: _Controller2,
                                Hint_Text: "أدخل بريدك الالكتروني",
                                Onchanged: (String) {},
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "مطلوب"),
                                  EmailValidator(
                                      errorText: "يجب ان يكون بريد اللكتروني")
                                ]),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 0.h,
                                      left: 327.w,
                                      bottom: 16.h,
                                      right: 13.w),
                                  child: Text("العنوان",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.almarai(
                                        textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Form(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              key: _formkey3,
                              child: textfeild(
                                FontSize: 20,
                                hidePass: false,
                                FillColor: Colors.white,
                                weidth: 1.32,
                                topContentPadding: 0,
                                MaxLines: 2,
                                Height: 80.h,
                                Margin: 25,
                                FoucesNode: _FocusNode3,
                                Onsubmitted: (String) {},
                                TextInputaction: TextInputAction.next,
                                Controller: _Controller3,
                                Hint_Text: "عنوان  لموضوع الرسالة",
                                Onchanged: (String) {},
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "مطلوب"),
                                ]),
                                keyboardType: TextInputType.text,
                              ),

                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 0.h,
                                      left: 327.w,
                                      bottom: 16.h,
                                      right: 13.w),
                                  child: Text("الرسالة",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.almarai(
                                        textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Form(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              key: _formkey4,
                              child: textfeild(
                                FontSize: 20,
                                hidePass: false,
                                FillColor: Colors.white,
                                weidth: 1.32,
                                topContentPadding: 0,
                                MaxLines: 8,
                                Height: 120.h,
                                Margin: 25,
                                FoucesNode: _FocusNode4,
                                Onsubmitted: (String) {},
                                TextInputaction: TextInputAction.next,
                                Controller: _Controller4,
                                Hint_Text: "نص الرسالة",
                                Onchanged: (String) {},
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "مطلوب"),
                                ]),
                                keyboardType: TextInputType.text,
                              ),
                            ),

                            InkWell(
                              onTap: () async {
                                if (_formkey1.currentState!.validate() &&
                                    _formkey2.currentState!.validate() &&
                                    _formkey3.currentState!.validate() &&
                                    _formkey4.currentState!.validate()) {
                                  _Homebloc.add(SendMessage((b) => b
                                    ..body = _Controller4.text
                                    ..title = _Controller3.text
                                    ..name = _Controller.text
                                    ..Email = _Controller2.text));
                                }
                              },
                              child: Container(
                                  width: 140.w,
                                  height: 44.h,
                                  margin: EdgeInsets.only(bottom: 39.h),
                                  decoration: BoxDecoration(
                                    color: Color(0xff0B0D39),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.r),
                                      topRight: Radius.circular(12.r),
                                      bottomLeft: Radius.circular(12.r),
                                      bottomRight: Radius.circular(12.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text("ارسل",
                                        style: GoogleFonts.almarai(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 32.h, bottom: 16.h),
                              child: Text("العنوان",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                    ),
                                  )),
                            ),
                            Container(
                                width: w / 1.2,
                                height: 180.h,
                                margin: EdgeInsets.only(bottom: 32.h),
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 12.r,
                                            backgroundColor: Colors.black,
                                            child: SvgPicture.asset(
                                              ContactIcons[index],
                                              width: 10.w,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          InkWell(
                                            onLongPress: () async {
                                              await Clipboard.setData(ClipboardData(
                                                  text: ContactDetails[
                                                  index]));
                                              AnimatedSnackBar.material(
                                                'تم النسخ بنجاح',
                                                duration: Duration(seconds: 2),
                                                type: AnimatedSnackBarType
                                                    .success,
                                              ).show(
                                                context,
                                              );
                                            },
                                            child: RichText(
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: Contact[index],
                                                      style:
                                                          GoogleFonts.almarai(
                                                              textStyle:
                                                                  TextStyle(
                                                        color:
                                                            Color(0xff000000),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                                  TextSpan(
                                                      text:
                                                          ContactDetails[index],
                                                      style:
                                                          GoogleFonts.almarai(
                                                              textStyle:
                                                                  TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        color:
                                                            Color(0xff666870),
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      height: 8.h,
                                    );
                                  },
                                )),
                            Container(
                              width: w / 1.25,
                              color: Colors.grey,
                              height: 3.h,
                            ),
//
                            Container(
                              margin: EdgeInsets.only(top: 16.h, bottom: 32.h),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "مواعيد العمل:",
                                        style: GoogleFonts.almarai(
                                            textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                        ))),
                                    TextSpan(
                                        text:
                                            "من السبت الى الخميس من الساعة 8 صباحا الى الساعة 2 ظهرا  ",
                                        style: GoogleFonts.almarai(
                                            textStyle: TextStyle(
                                          color: Color(0xff666870),
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w700,
                                        ))),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 24.h),
                              child: Text("الموقع الخاص بنا",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () async {

                                  var url = Uri.parse("https://beatnbda.com/");
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url,
                                        mode: LaunchMode.externalApplication);
                                  } else {
                                    throw 'Could not launch $url';
                                  }


                                // _launchURLApp() async {
                                //   var url = Uri.parse("https://www.geeksforgeeks.org/");
                                //   if (await canLaunchUrl(url)) {
                                //     await launchUrl(url);
                                //   } else {
                                //     throw 'Could not launch $url';
                                //   }
                                // }
                                // if (!await launchUrl(  Uri.parse("https://beatnbda.com/"))) {
                                //
                                //   throw 'Could not launch https://flutter.dev';
                                // }
                              },
                              child: Container(
                                  width: 181.w,
                                  height: 44.h,
                                  margin: EdgeInsets.only(bottom: 39.h),
                                  decoration: BoxDecoration(
                                    color: Color(0xff0B0D39),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.r),
                                      topRight: Radius.circular(12.r),
                                      bottomLeft: Radius.circular(12.r),
                                      bottomRight: Radius.circular(12.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text("رابط الموقع",
                                        style: GoogleFonts.almarai(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )),
                            ),

                            Container(
                              height: 179.h,
                              width: w,
                              color: Color(0xff0B0D39),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 16.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            margin:
                                                EdgeInsets.only(right: 16.w),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "Assets/images/playstore.png",
                                                  width: 60.w,
                                                  height: 60.h,
                                                ),
                                                SvgPicture.asset(
                                                    "Assets/images/جمعية نبضة الخيرية.svg"),
                                              ],
                                            )),
                                        state.GetUrlsSuccess!
                                            ? Container(
                                                width: w / 3,
                                                height: 50.h,
                                                margin: EdgeInsets.only(
                                                    left: 16.w, right: 16.w),
                                                child: ListView.separated(
                                                  shrinkWrap: true,
                                                  padding: EdgeInsets.zero,
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      state.Urls!.links!.length,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    String name = state.Urls!
                                                        .links![index].name!
                                                        .toLowerCase()
                                                        .toString();
                                                    return InkWell(
                                                      onTap: () async {
                                                          var url = Uri.parse(state.Urls!.links![index].url.toString());
                                                          if (await canLaunchUrl(url)) {
                                                             await launchUrl(url,
                                                                 mode: LaunchMode.externalApplication);
                                                        }else{
                                                            throw 'Could not launch';
                                                            }
                                                      },
                                                      child: Container(
                                                        child: CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          radius: 18.r,
                                                          child: Center(
                                                            child: // name=="facebook"
                                                                name != "twitter" &&
                                                                        name !=
                                                                            "facebook"
                                                                    ? Image
                                                                        .asset(
                                                                        "Assets/images/768px-Instagram.svg.png",
                                                                        width:
                                                                            20.w,
                                                                      )
                                                                    : SvgPicture.asset(name ==
                                                                            "facebook"
                                                                        ? "Assets/images/Brand Logos.svg"
                                                                        : "Assets/images/1234.svg"),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  separatorBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    return SizedBox(
                                                      width: 5.w,
                                                    );
                                                  },
                                                ),
                                              )
                                            : state.GetUrlsisLoading!
                                                ? Container(
                                                    child: listLoader(
                                                        context: context),
                                                  )
                                                : Container(
                                                    child: Center(
                                                      child: Text("Loading.."),
                                                    ),
                                                  ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 32.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //   SvgPicture.asset("Assets/images/Group 28.svg"),
                                        SvgPicture.asset(
                                            "Assets/images/تم تصميم الموقع بواسطة DOLPHINS.svg"),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Image.asset(
                                            "Assets/images/photo_2022-11-11_13-50-10 1.png"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),),
                      // Positioned(
                      //   top: 0,
                      //   child: Container(
                      //     width: w,
                      //     height: 60.h,
                      //     color: Color(0xff0B0D39),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //
                      //         InkWell(
                      //           onTap: () {
                      //             PopupMenuButton<int>(
                      //               itemBuilder: (context) => [
                      //                 // PopupMenuItem 1
                      //                 PopupMenuItem(
                      //                   value: 1,
                      //                   // row with 2 children
                      //                   child: Row(
                      //                     children: [
                      //                       Icon(Icons.star),
                      //                       SizedBox(
                      //                         width: 10,
                      //                       ),
                      //                       Text("Get The App"),
                      //                       Text("Get The App"),
                      //                       Text("Get The App"),
                      //                       Text("Get The App"),
                      //                       Text("Get The App"),
                      //                       Text("Get The App"),
                      //                     ],
                      //                   ),
                      //                 ),
                      //                 // PopupMenuItem 2
                      //                 PopupMenuItem(
                      //                   value: 2,
                      //                   // row with two children
                      //                   child: Row(
                      //                     children: [
                      //                       Icon(Icons.chrome_reader_mode),
                      //                       SizedBox(
                      //                         width: 10,
                      //                       ),
                      //                       Text("About")
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ],
                      //               offset: Offset(0, 100),
                      //               color: Colors.grey,
                      //               elevation: 2,
                      //               // on selected we show the dialog box
                      //               onSelected: (value) {
                      //                 // if value 1 show dialog
                      //                 if (value == 1) {
                      //                   print("1");
                      //                   // if value 2 show dialog
                      //                 } else if (value == 2) {
                      //                   print("2");
                      //                 }
                      //               },
                      //             );
                      //           },
                      //           child: Container(
                      //             margin: EdgeInsets.only(right: 24.w),
                      //             child:
                      //                 Image.asset("Assets/images/Vector.png"),
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // state.isLoading == true
                      //     ? Center(child: listLoader(context: context))
                      //     : Container(),
                      state.isLoading!
                          ? Container(
                              child: listLoader(context: context),
                            )
                          : Container(
                              child: Center(
                                child: Text(""),
                              ),
                            )
                    ],
                  ),
                ),
              ));
        });
  }
}
