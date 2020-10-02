import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkDetails extends StatefulWidget {
  @override
  _WorkDetailsState createState() => _WorkDetailsState();
}

class _WorkDetailsState extends State<WorkDetails> {
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
                    'Projects',
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
                  ProjectDetails(
                    name: "Biryani Macha",
                    desc:
                        'Biryani Macha is a Web Application for a Restaurant which is developed in Flutter. We can place order from variety of dishes available through cash or online method.',
                    link: "https://biryanimacha.com/",
                    maxlines: 4,
                  ),
                  ProjectDetails(
                    name: "PiperGram",
                    desc:
                        'PiperGram is a Social Media Mobile Application built in Flutter with Firebase services.Features include liking, uploading posts etc and Location services are also used',
                    link:
                        "https://drive.google.com/file/d/139e3ar71F8-zppc7H1pZgKQBfEXyywDm/view?usp=sharing",
                    maxlines: 4,
                  ),
                  ProjectDetails(
                    name: "Typing Test Application",
                    desc:
                        'This is a typing test Web Application built with Javascript, HTML and CSS. User can take their typing speed test and download their certificate after the test. A chatbot is also integrated using IBM Cloud',
                    link: "http://typingtestbydc.glitch.me",
                    maxlines: 5,
                  ),
                  ProjectDetails(
                    name: "Interactive Resume",
                    desc:
                        'This is a digital Resume built in Flutter which has all details from education to skills and projects along with facility to connect directly to candidate\'s social platforms, viewing his certificates.',
                    link: "null",
                    maxlines: 5,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Internships',
                    style: GoogleFonts.montserrat(
                        fontSize: 11.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 3.h,
                    width: 80.w,
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 3),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  InternshipDetails(
                    name: "Flexxited",
                    desc:
                        "Intern at Flexxited Pvt. Ltd. as Flutter Developer. Created three Mobile apps with Flutter and a bunch of Web applications (also in flutter)",
                    date: "Aug, 2020 - Present",
                    maxlines: 4,
                  ),
                  InternshipDetails(
                    name: "Naaniz",
                    desc:
                        "Worked as Flutter backend developer for a Society Application in flutter and firebase. worked in a team where everyone was assigned some role. ",
                    date: "Aug, 2020 - Sept, 2020",
                    maxlines: 4,
                  ),
                  InternshipDetails(
                    name: "Brdgspan Consultants",
                    desc:
                        "Hired as an Application Developer where several small assignments were assigned related to different projects. ",
                    date: "Sept, 2020 - Sept, 2020",
                    maxlines: 4,
                  ),
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
              'Work & Internships',
              style:
                  GoogleFonts.montserrat(fontSize: 10.sp, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectDetails extends StatelessWidget {
  final String name;
  final String desc;
  final String link;
  final int maxlines;
  ProjectDetails({this.name, this.desc, this.link, this.maxlines});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '● $name',
          style: GoogleFonts.montserrat(
              fontSize: 10.sp,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: SizedBox(
            height: maxlines > 4 ? 150.h : 130.h,
            width: 140.w,
            child: Text(
              '$desc',
              textAlign: TextAlign.justify,
              maxLines: maxlines,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                  fontSize: 6.sp,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Center(
          child: InkWell(
            hoverColor: Colors.black,
            onTap: () async => await launch("$link"),
            child: Container(
              alignment: Alignment.center,
              height: 50.h,
              width: 60.w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.teal, Colors.lightGreenAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'Open',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 8.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        )
      ],
    );
  }
}

class InternshipDetails extends StatelessWidget {
  final String name;
  final String desc;
  final String date;
  final int maxlines;
  InternshipDetails({this.name, this.desc, this.date, this.maxlines});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '● $name',
          style: GoogleFonts.montserrat(
              fontSize: 10.sp,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: SizedBox(
            height: maxlines > 4 ? 130.h : 110.h,
            width: 150.w,
            child: Text(
              '$desc',
              textAlign: TextAlign.justify,
              maxLines: maxlines,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                  fontSize: 6.sp,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Text(
          '$date',
          style: GoogleFonts.montserrat(
              fontSize: 8.sp,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
