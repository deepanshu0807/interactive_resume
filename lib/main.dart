import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/homeview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ScreenUtil.init(designSize: Size(750, 1400), allowFontScaling: false);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume | DC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //primaryColor: const Color(0xffFFC600),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          highlightColor: Colors.black38),
      home: HomePage(),
    );
  }
}
