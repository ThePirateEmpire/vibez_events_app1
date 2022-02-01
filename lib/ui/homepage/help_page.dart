import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: ClipPath(
              clipper: ImageClipper(),
              child: Image.asset(
                'assets/event_images/help2.jpg',
                fit: BoxFit.cover,
                color: Colors.white,
                colorBlendMode: BlendMode.darken,
                width: screenWidth * 2,
                height: screenHeight * 0.5,
              ),
            ),
          ),
          Text(
            "NEED HELP:",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          Text(
            "contact us on these folowing Emails",
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
          ),
          Text(
            "majdnakhleh@vibez.com",
            style: TextStyle(color: Colors.blueAccent, fontSize: 20),
          ),
          Text(
            "hamzehalhumsi@vibez.com",
            style: TextStyle(color: Colors.blueAccent, fontSize: 20),
          ),
          Text(
            "alisakijha@vibez.com",
            style: TextStyle(color: Colors.blueAccent, fontSize: 20),
          ),
          Text(
            "ahmedalghamdi@vibez.com",
            style: TextStyle(color: Colors.blueAccent, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartingPoint = Offset(0, 40);
    Offset curveEndPoint = Offset(size.width, size.height * 0.95);
    path.lineTo(curveStartingPoint.dx - 5, curveStartingPoint.dy - 40);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.9,
        curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
