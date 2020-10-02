import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Certifications extends StatefulWidget {
  @override
  _CertificationsState createState() => _CertificationsState();
}

class _CertificationsState extends State<Certifications> {
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
                    height: 40.h,
                  ),
                   CertificateDetails(
                    name: "Complete Flutter Development",
                    desc:
                        "Includes API handling, database projects, Firebase and BLOC.\nPlatform: Udemy\nDuration: 19 Hours",
                    link: "https://udemy-certificate.s3.amazonaws.com/image/UC-e7b6c465-cd1a-44c9-a820-4ed80d831a48.jpg",
                    maxlines: 4,
                  ),
                  CertificateDetails(
                    name: "Android Application Development",
                    desc:
                        "Introduction and hands on developing android applications.\nPlatform: Udemy\nDuration: 27 Hours",
                    link:
                        "https://udemy-certificate.s3.amazonaws.com/image/UC-9a80915a-5057-44fb-ada2-6f2419bbc1a7.jpg",
                    maxlines: 4,
                  ),
                  CertificateDetails(
                    name: "Java for Android",
                    desc:
                        "Includes overview of Java language\'s role in Android development.\nPlatform: Coursera\nDuration: 41 Hours",
                    link: "https://iili.io/2avNnI.png",
                    maxlines: 4,
                  ),
                 
                  CertificateDetails(
                    name: "Letter of Recommendation",
                    desc:
                        "Hired as intern in respected Organisation\nCompany: Flexxited\nDuration: 2 Months",
                    link: "https://iili.io/2avjZN.png",
                    maxlines: 3,
                  ),
                  CertificateDetails(
                    name: "Letter of Recommendation",
                    desc:
                        "Hired as intern in respected Organisation\nCompany: Naaniz\nDuration: 1 Month",
                    link: "https://iili.io/2avOGt.png",
                    maxlines: 3,
                  ),
                  CertificateDetails(
                    name: "Hiring Certificate",
                    desc:
                        "Hired as intern in respected Organisation\nCompany: Brdgespan Consultants\nDuration: 1 Month",
                    link: "https://iili.io/2avhjp.png",
                    maxlines: 3,
                  ),
                  CertificateDetails(
                    name: "Brain Buster",
                    desc:
                        "Quiz competition organised by University\nType: MCQ\nTopic: Computer Science",
                    link: "https://iili.io/2avE3g.png",
                    maxlines: 3,
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
              'Certifications',
              style:
                  GoogleFonts.montserrat(fontSize: 10.sp, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class CertificateDetails extends StatelessWidget {
  final String name;
  final String desc;
  final String link;
  final int maxlines;
  CertificateDetails({this.name, this.desc, this.link, this.maxlines});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '● $name',
          style: GoogleFonts.montserrat(
              fontSize: 9.sp,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: SizedBox(
            height: maxlines > 3 ? 140.h : 120.h,
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
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CertificateDialog(
                    link: "$link",
                  );
                },
              );
            },
            child: Container(
                alignment: Alignment.center,
                height: 60.h,
                width: 100.w,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.teal, Colors.lightGreenAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: ' View Certificate',
                      style: GoogleFonts.montserrat(
                          fontSize: 9.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )
                  ]),
                )),
          ),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}

class CertificateDialog extends StatefulWidget {
  final String link;
  CertificateDialog({this.link});
  @override
  _CertificateDialogState createState() => _CertificateDialogState();
}

class _CertificateDialogState extends State<CertificateDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white38,
      insetAnimationDuration: Duration(microseconds: 800),
      insetAnimationCurve: Curves.decelerate,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(30.h),
        child: widget.link == ""
            ? Container(
                height: 300.h,
                width: 400.w,
                alignment: Alignment.center,
                child: Text(
                  "Error loading certificate! Try again later.",
                  style: GoogleFonts.montserrat(
                      color: Colors.white, fontSize: 15.sp),
                ),
              )
            : Image.network(
                "${widget.link}",
                fit: BoxFit.contain,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
      ),
    );
  }
}
