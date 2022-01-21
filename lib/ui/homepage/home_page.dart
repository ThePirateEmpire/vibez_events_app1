import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibez_events_app/app_state.dart';
import 'package:vibez_events_app/model/category.dart';
import 'package:vibez_events_app/model/event.dart';
import 'package:vibez_events_app/ui/event_details/event_details_page.dart';
import 'package:vibez_events_app/ui/homepage/event_widget.dart';
import 'package:vibez_events_app/ui/homepage/my_drawer.dart';

import 'category_widget.dart';
import 'home_page_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'VIBEZ',
            style: TextStyle(
                decorationStyle: TextDecorationStyle.solid,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 6,
      ),
      drawer: mydrawer(),
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: [
            HomePageBackGround(
              screenHeight: MediaQuery.of(context).size.height,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 125),
                      child: Row(
                        children: [
                          Text(
                            'UpComing',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decorationStyle: TextDecorationStyle.solid,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Text(
                        'Events',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Consumer<AppState>(
                        builder: (context, appstate, _) =>
                            SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (final category in categories)
                                CategoryWidget(category: category)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Consumer<AppState>(
                      builder: (context, appstate, _) => Column(
                        children: <Widget>[
                          for (final event in events.where((e) => e.categoryIds
                              .contains(appstate.selectedCategoryId)))
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EventDetailsPage(event: event)),
                                  );
                                },
                                child: EventWidget(event: event)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
