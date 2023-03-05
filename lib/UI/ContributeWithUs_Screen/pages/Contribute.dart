import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testnew/Injection.dart';
import 'package:testnew/UI/ContributeWithUs_Screen/bloc/ContributeScreen_Bloc.dart';
import 'package:testnew/UI/ContributeWithUs_Screen/bloc/ContributeScreen_Event.dart';
import 'package:testnew/UI/ContributeWithUs_Screen/bloc/ContributeScreen_State.dart';
import 'package:testnew/core/Functions/Fucntions.dart';
import 'package:testnew/core/widgets/Custom_Textfield.dart';

class Contribute extends StatefulWidget {
  const Contribute({Key? key}) : super(key: key);

  @override
  State<Contribute> createState() => _ContributeState();
}

class _ContributeState extends State<Contribute> {
  final TextEditingController _Controller = TextEditingController();
  final TextEditingController _Controller2 = TextEditingController();
  final TextEditingController _Controller3 = TextEditingController();
  final TextEditingController _Controller4 = TextEditingController();
  final TextEditingController _Controller5 = TextEditingController();
  final TextEditingController _Controller6 = TextEditingController();
  final TextEditingController _Controller7 = TextEditingController();
  final TextEditingController _Controller8 = TextEditingController();
  var _formkey1 = GlobalKey<FormState>();
  var _formkey2 = GlobalKey<FormState>();
  var _formkey3 = GlobalKey<FormState>();
  var _formkey4 = GlobalKey<FormState>();
  var _formkey5 = GlobalKey<FormState>();
  var _formkey6 = GlobalKey<FormState>();
  var _formkey7 = GlobalKey<FormState>();
  var _formkey8 = GlobalKey<FormState>();
  FocusNode _FocusNode =FocusNode();
  FocusNode _FocusNode2 =FocusNode();
  FocusNode _FocusNode3 =FocusNode();
  FocusNode _FocusNode4 =FocusNode();
  FocusNode _FocusNode5 =FocusNode();
  FocusNode _FocusNode6 =FocusNode();
  FocusNode _FocusNode7 =FocusNode();
  FocusNode _FocusNode8 =FocusNode();
  List<String> Genders = ["ذكر","انثى"];
  List<String> State = ["غزة","خانيونس","رفح","الوسطى","شمال غزة"];
  String selectedValue="";
  String selectedValue2="";
  final _Contributebloc = sl<ContributeScreenBloc>();

  @override
  void initState() {
    selectedValue = Genders[0];
    selectedValue2 = State[0];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _Contributebloc,
        builder: (BuildContext context, ContributeScreenState state){
          if (state.success!) {
            AnimatedSnackBar.material(
              'شكرا على التقديم للتطوع, سيتم التواصل معك في اقرب وقت',
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
            _Contributebloc.add(ChangeState());
            _Controller2.clear();
            _Controller.clear();
            _Controller3.clear();
            _Controller5.clear();
            _Controller6.clear();
            _Controller7.clear();
            _Controller8.clear();
            _Controller4.clear();

          }

      return

        Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color(0xff0B0D39),
        title: Text("تطوع معنا",
            textAlign: TextAlign.center,
            style: GoogleFonts.almarai(
              textStyle: TextStyle(
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
              ),
            )),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 16.h,
                              left: 300.w,
                              bottom: 16.h,
                              right: 13.w),
                          child: Text("الاسم كامل",
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
                        Hint_Text: "أدخل الاسم كاملا",
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
                              left: 327.w,
                              bottom: 16.h,
                              right: 13.w),
                          child: Text("العمر",
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
                        Hint_Text: "أدخل العمر",
                        Onchanged: (String) {},
                        validator: MultiValidator([
                          RequiredValidator(errorText: "مطلوب"),
                        ]),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 300.w,
                              bottom: 16.h,
                              right: 13.w),
                          child: Text("رقم الهوية",
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
                        MaxLines: 1,
                        Height: 80.h,
                        Margin: 25,
                        FoucesNode: _FocusNode3,
                        Onsubmitted: (String) {},
                        TextInputaction: TextInputAction.next,
                        Controller: _Controller3,
                        Hint_Text: "أدخل رقم الهوية",
                        Onchanged: (String) {},
                        validator: MultiValidator([
                          RequiredValidator(errorText: "مطلوب"),
                        ]),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 300.w,
                              bottom: 16.h,
                              right: 13.w),
                          child: Text("المؤهل الدراسي",
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
                      key: _formkey7,
                      child: textfeild(
                        FontSize: 20,
                        hidePass: false,
                        FillColor: Colors.white,
                        weidth: 1.32,
                        topContentPadding: 0,
                        MaxLines: 1,
                        Height: 80.h,
                        Margin: 25,
                        FoucesNode: _FocusNode7,
                        Onsubmitted: (String) {},
                        TextInputaction: TextInputAction.next,
                        Controller: _Controller7,
                        Hint_Text: "أدخل المؤهل الدراسي",
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
                              left: 300.w,
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
                      key: _formkey8,
                      child: textfeild(
                        FontSize: 20,
                        hidePass: false,
                        FillColor: Colors.white,
                        weidth: 1.32,
                        topContentPadding: 0,
                        MaxLines: 1,
                        Height: 80.h,
                        Margin: 25,
                        FoucesNode: _FocusNode8,
                        Onsubmitted: (String) {},
                        TextInputaction: TextInputAction.next,
                        Controller: _Controller8,
                        Hint_Text: "أدخل العنوان",
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
                              left: 300.w,
                              bottom: 16.h,
                              right: 13.w),
                          child: Text("الجنس",
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
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 16.h,
                          right: 13.w),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(

                            children:  [
                              Expanded(
                                child: Text('الجنس', textAlign: TextAlign.left,
                                  style:  TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Red Hat Text',
                                      fontSize: 14.sp,
                                      letterSpacing: 1 ,
                                      fontWeight: FontWeight.w300,
                                      height: 1.h
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                            ],
                          ),
                          items: Genders
                              .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child:
                              Text(
                                item,
                                style:  TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              )
                            //:Text("")
                          ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          icon:  Icon(
                            Icons.keyboard_arrow_down,
                            size: 20.w,
                            color: Colors.black,
                          ),
                          iconSize: 20.w,
                          iconEnabledColor: Colors.yellow,
                          iconDisabledColor: Colors.black,
                          buttonHeight: h/15,
                          buttonWidth: w/2.3,
                          buttonPadding:  EdgeInsets.only(left: 14.w, right: 14.w),
                          buttonDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h/85.25),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: Colors.white,
                          ),
                          buttonElevation: 2,
                          itemHeight: h/20,
                          dropdownMaxHeight: h/5.5,
                          dropdownWidth: w/2.3,
                          dropdownDecoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          dropdownElevation: 8,
                          scrollbarRadius:  Radius.circular(40.r),
                          scrollbarThickness: 6,
                          scrollbarAlwaysShow: false,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 300.w,
                              bottom: 16.h,
                              right: 13.w),
                          child: Text("المحافظة",
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
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 16.h,
                          right: 13.w),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(

                            children:  [
                              Expanded(
                                child: Text('المحافظة', textAlign: TextAlign.left,
                                  style:  TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Red Hat Text',
                                      fontSize: 14.sp,
                                      letterSpacing: 1 ,
                                      fontWeight: FontWeight.w300,
                                      height: 1.h
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                            ],
                          ),
                          items: State
                              .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child:
                              Text(
                                item,
                                style:  TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              )
                            //:Text("")
                          ))
                              .toList(),
                          value: selectedValue2,
                          onChanged: (value) {
                            setState(() {
                              selectedValue2 = value as String;
                            });
                          },
                          icon:  Icon(
                            Icons.keyboard_arrow_down,
                            size: 20.w,
                            color: Colors.black,
                          ),
                          iconSize: 20.w,
                          iconEnabledColor: Colors.yellow,
                          iconDisabledColor: Colors.black,
                          buttonHeight: h/15,
                          buttonWidth: w/2.3,
                          buttonPadding:  EdgeInsets.only(left: 14.w, right: 14.w),
                          buttonDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h/85.25),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: Colors.white,
                          ),
                          buttonElevation: 2,
                          itemHeight: h/20,
                          dropdownMaxHeight: h/5.5,
                          dropdownWidth: w/2.3,
                          dropdownDecoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          dropdownElevation: 8,
                          scrollbarRadius:  Radius.circular(40.r),
                          scrollbarThickness: 6,
                          scrollbarAlwaysShow: false,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 327.w,
                              bottom: 16.h,
                              right: 13.w),
                          child: Text("الهاتف",
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
                        MaxLines: 1,
                        Height: 80.h,
                        Margin: 25,
                        FoucesNode: _FocusNode4,
                        Onsubmitted: (String) {},
                        TextInputaction: TextInputAction.next,
                        Controller: _Controller4,
                        Hint_Text: "رقم الهاتف",
                        Onchanged: (String) {},
                        validator: MultiValidator([
                          RequiredValidator(errorText: "مطلوب"),
                        ]),
                        keyboardType: TextInputType.number,
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
                      key: _formkey5,
                      child: textfeild(
                        FontSize: 20,
                        hidePass: false,
                        FillColor: Colors.white,
                        weidth: 1.32,
                        topContentPadding: 0,
                        MaxLines: 1,
                        Height: 80.h,
                        Margin: 25,
                        FoucesNode: _FocusNode5,
                        Onsubmitted: (String) {},
                        TextInputaction: TextInputAction.next,
                        Controller: _Controller5,
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
                          child: Text("نبذة",
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
                      key: _formkey6,
                      child: textfeild(
                        FontSize: 20,
                        hidePass: false,
                        FillColor: Colors.white,
                        weidth: 1.32,
                        topContentPadding: 0,
                        MaxLines: 8,
                        Height: 120.h,
                        Margin: 25,
                        FoucesNode: _FocusNode6,
                        Onsubmitted: (String) {},
                        TextInputaction: TextInputAction.next,
                        Controller: _Controller6,
                        Hint_Text: "نبذة",
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
                            _formkey5.currentState!.validate() &&
                            _formkey6.currentState!.validate() &&
                            _formkey4.currentState!.validate()
                        ) {
                          _Contributebloc.add(SendVol((b) => b
                            ..email = _Controller5.text
                            ..gender = selectedValue
                            ..area = selectedValue2
                            ..full_name = _Controller.text
                            ..phone = _Controller4.text
                            ..uni_sp = _Controller7.text
                            ..street = _Controller8.text
                            ..old = _Controller2.text
                            ..note =_Controller6.text
                            ..noid = _Controller3.text

                          ));
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
                            child: Text("تقديم طلب التطوع",
                                style: GoogleFonts.almarai(
                                  textStyle: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                )),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            state.isLoading!?
                Container(child: listLoader(context: context),)
                :Container()
          ],
        )
      ),
    );
        }
    );
  }
}
