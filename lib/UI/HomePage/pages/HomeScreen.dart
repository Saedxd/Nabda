// ignore_for_file: non_constant_identifier_names, file_names
import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testnew/Injection.dart';
import 'package:testnew/UI/HomePage/bloc/HomeScreen_Bloc.dart';
import 'package:testnew/UI/HomePage/bloc/HomeScreen_State.dart';
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



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _Controller = TextEditingController();
  var _formkey1 = GlobalKey<FormState>();
  final _Loginbloc = sl<HomeScreenBloc>();

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Color(0xff0B0D39),
          systemNavigationBarColor: Colors.black
      ),
    );
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
        bloc: _Loginbloc,
        builder: (BuildContext context, HomeScreenState state){
          return  WillPopScope(
              onWillPop: () async => true,
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  key: _scaffoldKey,
                  backgroundColor:Color(0xffE4E5FC),
                  body: SafeArea(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: Container(
                            width: w,
                            height: 60.h,
                            color: Color(0xff0B0D39),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 24.w),
                                  child: Image.asset("Assets/images/playstore.png",width: 40.w,height: 40.h,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 24.w),
                                  child: Image.asset("Assets/images/Vector.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                       Column(
                         children: [

                           Container(
                                                      height: 179.h,
                                                      width: w,
                                                      color: Color(0xff0B0D39),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets.only(top: 16.h),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Container(
                                                                  width: w/3,
                                                                  height: 50.h,
                                                                  margin: EdgeInsets.only(left: 16.w),
                                                                  child: ListView.separated(
                                                                      shrinkWrap: true,
                                                                      padding: EdgeInsets.zero,
                                                                      physics:AlwaysScrollableScrollPhysics(),
                                                                      scrollDirection: Axis.horizontal,
                                                                      itemCount: 2,
                                                                      itemBuilder:(BuildContext context, int index) {
                                                                        return CircleAvatar(backgroundColor: Colors.white,radius: 18,);
                                                                      }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 5,); },),
                                                                ),
                                                                Container(
                                                                    margin: EdgeInsets.only(right: 16.w),
                                                                    child: Image.asset("Assets/images/Group 24.png"))
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(bottom: 32.h),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Image.asset("Assets/images/Group 28.png")
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),

                                                    ),
                         ],
                       ),




                        // state.isLoading == true
                        //     ? Center(child: listLoader(context: context))
                        //     : Container(),

                      ],
                    ),
                  )));
        });
  }

}

