import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibez_events_app/model/event.dart';
import 'package:vibez_events_app/model/guest.dart';

import '../../styleguide.dart';

class EventDetailContent extends StatelessWidget {
  const EventDetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
      SizedBox(
        height: 100,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
        child: Text(
          event.title,
          style: eventTitleTextStyle.copyWith(color: Colors.white),
        ),
      ),
      SizedBox(
        height: 45,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
        child: FittedBox(
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                event.location,
                style: eventLocationTextStyle.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
            child: Text(
              event.ticket,
              style: eventTitleTextStyle.copyWith(color: Colors.green),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text(
                  "GUESTS",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final guest in guests)
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipOval(
                      child: Image.asset(
                        guest.imagePath,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: event.punchLine1, style: punchLine1TextStyle),
                  TextSpan(text: event.punchLine2, style: punchLine2TextStyle),
                ],
              ),
            ),
          ),
          if (event.description.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                event.description,
                style: eventLocationTextStyle,
              ),
            ),
          if (event.galleryImages.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                    "GALLERY",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final gallery in event.galleryImages)
                  Container(
                    margin: const EdgeInsets.only(
                        left: 15, right: 15, bottom: 10, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        gallery,
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    ]));
  }
}
