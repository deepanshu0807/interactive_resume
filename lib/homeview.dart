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

bool _first = true;

double _left = 1600;
double _top = 20;
double _right = 20;
double _bottom = 20;

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _left = _first ? 0 : 1600;
    // _top    = _first ?  70 : 20;
    _right = _first ? 0 : 20;
    _bottom = _first ? 25 : 20;

    _first = !_first;
    super.initState();
  }

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
              // Positioned(
              //   left: 20,
              //   top: 200,
              //   child: InkWell(
              //     onTap: () {
              //       setState(() {
              //         _left = _first ? 0 : 1600;
              //         // _top    = _first ?  70 : 20;
              //         _right = _first ? 0 : 20;
              //         _bottom = _first ? 25 : 20;

              //         _first = !_first;
              //       });
              //     },
              //     child: Container(
              //       height: 40.h,
              //       width: 50.w,
              //       // height: 30.h,
              //       color: Colors.white,
              //       child: Center(
              //         child: Text(
              //           "Social",
              //           style: GoogleFonts.tajawal(
              //               color: Colors.black, fontSize: 10.sp),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 800),
                bottom: _bottom,
                left: _left,
                right: _right,
                //  top: _top,
                curve: Curves.fastLinearToSlowEaseIn,
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
