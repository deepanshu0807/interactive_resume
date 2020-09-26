import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/widgets/bottom_icons.dart';
import 'package:resume/widgets/certificates.dart';
import 'package:resume/widgets/profile_section.dart';
import 'package:resume/widgets/skillsdetail.dart';
import 'package:resume/widgets/workdetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      if (size.biggest.width > 600) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.teal,
                      //Colors.lightGreen,
                      Colors.lightGreenAccent
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Profile(),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WorkDetails(),
                        SkillDetail(),
                        Certifications()
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 2,
                left: 0,
                right: 0,
                child: Container(
                  // height: 30.h,
                  color: Colors.white24,
                  child: Center(
                    child: Text(
                      "Designed and Developed by Deepanshu",
                      style: GoogleFonts.tajawal(
                          color: Colors.white, fontSize: 7.sp),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 25.0,
                left: 0.0,
                right: 0.0,
                child: Bottom(),
              ),
            ],
          ),
        );
      } else
        return Scaffold(
          body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.teal,
                    //Colors.lightGreen,
                    Colors.lightGreenAccent
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Please open in Windows/Mac PC!",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 30.sp),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Mobile version will be available soon.",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 30.sp),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black26,
                      child: Center(
                        child: Text(
                          "Designed and Developed by Deepanshu",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 20.sp),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        );
    });
  }
}
