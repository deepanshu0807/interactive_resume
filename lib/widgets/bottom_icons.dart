import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  bool sizeEnlarge1 = false;
  bool sizeEnlarge2 = false;
  bool sizeEnlarge3 = false;
  bool sizeEnlarge4 = false;
  bool sizeEnlarge5 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () async => await launch("https://github.com/deepanshu0807"),
          onHover: (value) {
            setState(() {
              sizeEnlarge1 = !sizeEnlarge1;
            });
          },
          child: Image.network(
            'https://iili.io/209ova.png',
            color: sizeEnlarge1 ? Colors.black : Colors.white,
            height: sizeEnlarge1 ? 60 : 40,
            width: sizeEnlarge1 ? 60 : 40,
          ),
        ),
        InkWell(
          onTap: () async =>
              await launch("https://www.linkedin.com/in/deepanshuchowdhary/"),
          onHover: (value) {
            setState(() {
              sizeEnlarge2 = !sizeEnlarge2;
            });
          },
          child: Image.network(
            'https://iili.io/209ITv.png',
            color: sizeEnlarge2 ? Colors.blue[700] : Colors.white,
            height: sizeEnlarge2 ? 60 : 40,
            width: sizeEnlarge2 ? 60 : 40,
          ),
        ),
        InkWell(
          onTap: () async => await launch("https://wa.me/${8126591395}?text="),
          onHover: (value) {
            setState(() {
              sizeEnlarge3 = !sizeEnlarge3;
            });
          },
          child: Image.network(
            'https://iili.io/209RCN.md.png',
            color: sizeEnlarge3 ? Colors.greenAccent : Colors.white,
            height: sizeEnlarge3 ? 60 : 40,
            width: sizeEnlarge3 ? 60 : 40,
          ),
        ),
        InkWell(
          onTap: () async =>
              await launch("https://en-gb.facebook.com/deepanshu0807"),
          onHover: (value) {
            setState(() {
              sizeEnlarge4 = !sizeEnlarge4;
            });
          },
          child: Image.network(
            'https://iili.io/209C3F.png',
            color: sizeEnlarge4 ? Colors.blue[700] : Colors.white,
            height: sizeEnlarge4 ? 55 : 35,
            width: sizeEnlarge4 ? 55 : 35,
          ),
        ),
        InkWell(
          onTap: () async =>
              await launch("https://www.instagram.com/deepanshu__dc/"),
          onHover: (value) {
            setState(() {
              sizeEnlarge5 = !sizeEnlarge5;
            });
          },
          child: Image.network(
            'https://iili.io/209xyJ.png',
            color: sizeEnlarge5 ? Colors.black : Colors.white,
            height: sizeEnlarge5 ? 60 : 40,
            width: sizeEnlarge5 ? 60 : 40,
          ),
        ),
      ],
    );
  }
}
