import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage("https://iili.io/209uQp.jpg"),
        ),
        Stack(
          children: [
            Container(
              height: 300.h,
              width: 220.w,
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Name:   ',
                        style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Deepanshu Chowdhary',
                        style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'College: ',
                        style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'DIT University',
                        style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Degree: ',
                        style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'B.Tech (2018-22), Current Cgpa: 8.50',
                        style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Course: ',
                        style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'CSE with Cloud Computing(IBM)',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 70.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(15),
                  )),
              child: Text(
                "Details ",
                style: GoogleFonts.montserrat(
                  fontSize: 8.sp,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Container(
              height: 300.h,
              width: 220.w,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80.h,
                  ),
                  SizedBox(
                    width: 205.w,
                    height: 100.h,
                    child: Text(
                      'Motivated to learn, grow and excel in work field, quick learner- can catch up new things passionately. Good skills in Flutter framework.',
                      style: GoogleFonts.montserrat(
                          fontSize: 7.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Image.network(
                            'https://iili.io/209q41.png',
                            height: 30.h,
                            //width: 30.w,
                          )),
                          TextSpan(
                            text: "  deepanshu.chowdhary@gmail.com",
                            style: GoogleFonts.montserrat(
                                fontSize: 7.sp,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Image.network(
                            'https://iili.io/209nYg.png',
                            height: 30.h,
                            color: Colors.black,
                            //width: 30.w,
                          )),
                          TextSpan(
                            text: "  +91 8126591395",
                            style: GoogleFonts.montserrat(
                                fontSize: 7.sp,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 70.h,
                width: 90.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(15),
                    )),
                child: Text(
                  "About Me",
                  style: GoogleFonts.montserrat(
                    fontSize: 8.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
