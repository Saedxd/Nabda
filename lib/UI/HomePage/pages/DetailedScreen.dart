import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedPage extends StatefulWidget {
   DetailedPage({Key? key,required this.name,required this.image,required this.Date,required this.Info}) : super(key: key);
String image;
String name;
String Info;
String Date;

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0B0D39),
        title: Text(widget.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.almarai(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
              ),
            )),
        actions: [

          Container(
            margin: EdgeInsets.only(left: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.Date,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    )),
              ],
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CachedNetworkImage(
                width: w,height: h/3,
                imageUrl:
                "https://beatnbda.com/laravelnbda/public/activePhoto/${widget.image}",
                placeholder:
                    (context, url) => Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .center,
                  children: [
                    Container(
                        width: w,height: h/3,
                        child: Center(
                            child:
                            CircularProgressIndicator())),
                  ],
                ),
                errorWidget: (context,
                    url, error) =>
                    Icon(Icons.error),
              ),
              SizedBox(height: 10.h,),
              Container(
                margin: EdgeInsets.only(left: 20.w,right: 20.w),
                child: Text(widget.Info,
                    style: GoogleFonts.almarai(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                )),
              ),
              SizedBox(height: 10.h,),
            ],
          ),
        ),

      ),
    );
  }
}
