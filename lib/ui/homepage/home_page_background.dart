import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageBackGround extends StatelessWidget {
  final screenHeight;

  const HomePageBackGround({Key? key, @required this.screenHeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return ClipPath(
        clipper: BottomShapeClipper(),
        child: Container(
          height: screenHeight * 0.5,
          color: themeData.primaryColor,
        ));
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * 0.85);
    Offset curveEndtPoint = Offset(size.width, size.height * 0.85);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height, curveEndtPoint.dx, curveEndtPoint.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
