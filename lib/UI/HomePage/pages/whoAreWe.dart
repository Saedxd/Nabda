import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WhoAreWe extends StatefulWidget {
  const WhoAreWe({Key? key}) : super(key: key);

  @override
  State<WhoAreWe> createState() => _WhoAreWeState();
}

class _WhoAreWeState extends State<WhoAreWe> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0B0D39),
        title: Text("النشأة و الرؤية",
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
        child: Column(
          children: [
            Container(
              width: w / 1.02,
              margin: EdgeInsets.only(top: 16.h, right: 20.w, left: 20.w),
              child: Text(
                  "تأسست جمعية نبضة في قطاع غزة عام 2019 , نتيجة الظروف التي تمر على مجتمعنا الفلسطيني خاصة الحصار والحروب . جمعية نبضة الخيرية هي منظمة اهلية مستقلة غير ربحية تهدف الى المشاركة في العملية التنموية والتمكين للقطاعات الاقتصادية والاجتماعية المختلفة في قطاع غزة , وتعمل من اجل تمكين الاسر من اجل ان تلعب دورا فاعلاً ومؤثر فيها . ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.almarai(
                    textStyle: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        height: 1.7.h),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 56.h, bottom: 20.h),
              child: Text("ومن أهداف الجمعية :",
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
              width: w / 1.02,
              margin: EdgeInsets.only(top: 16.h, right: 10.w, left: 10.w),
              child: Column(
                children: [
                  Text(
                    "• دعم الأسر الفقيرة اجتماعياً واقتصادياً من خلال المشاريع الصغيرة .",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          height: 1.7.h),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Text(
                    "• تقديم الدعم النفسي والاجتماعي والتعليمي للأسر الفقيرة وأطفالهم .",
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          height: 1.7.h),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Text(
                    "• تعزيز وتمكين المرأة الفلسطينية من خلال برامج التأهيل والتدريب المهني .",
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          height: 1.7.h),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 56.h, bottom: 20.h),
              child: Text("الترخيص:",
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
              width: w / 1.02,
              margin: EdgeInsets.only(top: 16.h, right: 10.w, left: 10.w),
              child: Column(
                children: [
                  Text(
                    "•ترخيص رام الله رقم GA-1212-C ",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          height: 1.7.h),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Text(
                    "• ترخيص غزة رقم 8728 ",
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          height: 1.7.h),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
