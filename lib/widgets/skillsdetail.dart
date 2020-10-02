import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillDetail extends StatefulWidget {
  @override
  _SkillDetailState createState() => _SkillDetailState();
}

class _SkillDetailState extends State<SkillDetail> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 760.h,
          width: 180.w,
          margin: EdgeInsets.only(top: 40.h),
          padding: EdgeInsets.all(30.h),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: NetworkImage('https://iili.io/209TjR.png'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(30),
          ),
          child: CupertinoScrollbar(
            thickness: 8,
            radius: Radius.circular(40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Skills',
                    style: GoogleFonts.montserrat(
                        fontSize: 11.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 3.h,
                    width: 60.w,
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 3),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(""),
                      Text(
                        'Skill Level(Max. 5)   ',
                        style: GoogleFonts.montserrat(
                            fontSize: 6.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● Flutter',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● Firebase',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● Java',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● C',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● C++',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● JavaScript',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● HTML',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● Python',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● CSS',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '● Node.js',
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '★ ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Hobbies',
                    style: GoogleFonts.montserrat(
                        fontSize: 11.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 3.h,
                    width: 60.w,
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 3),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 150.w,
                    height: 180.h,
                    child: Text(
                      "Playing Chess, Cricket and PC Games(mostly simulators) is what I enjoy doing in free time. Along with that, playing around with ROMS, and travelling is what I love to do.",
                      style: GoogleFonts.montserrat(
                          fontSize: 7.sp,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 40.w,
          left: 40.w,
          child: Container(
            height: 70.h,
            width: 90.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Skills & Hobbies',
              style:
                  GoogleFonts.montserrat(fontSize: 10.sp, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
