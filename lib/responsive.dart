import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    required this.desktop,
    required this.mobile,
    required this.mobileLarge,
    required this.tablet});

  final Widget desktop,mobile;
  final Widget? tablet,mobileLarge;



  static bool isDesktop(context){
    return MediaQuery.of(context).size.width>=1024;
  }
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }
  static bool isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
   final Size _size=MediaQuery.of(context).size;
    if(_size.width>=1024){
      return desktop;
    }else  if(_size.width>=700&&tablet!=null ){
      return tablet!;
    }else  if(_size.width>=400&&mobileLarge!=null ){
      return mobileLarge!;
    }else {
      return mobile;
    }
  }
}
