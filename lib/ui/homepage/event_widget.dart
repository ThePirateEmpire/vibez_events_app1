import 'package:flutter/material.dart';
import 'package:vibez_events_app/model/event.dart';
import 'package:vibez_events_app/styleguide.dart';

class EventWidget extends StatelessWidget {
  final Event event;
  const EventWidget({Key? key, required this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.asset(
                event.imagePath,
                height: 150,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event.title,
                            style: eventTitleTextStyle.copyWith(
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                Icon(Icons.location_on),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  event.location,
                                  style: eventLocationTextStyle,
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        event.duration.toUpperCase(),
                        style: eventLocationTextStyle.copyWith(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
