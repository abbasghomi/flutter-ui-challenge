import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';
import 'package:flutter_ui_challenge/configs/ui_events.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/event_ticket_widget.dart';

class EventTicketsWidget extends StatelessWidget {
  const EventTicketsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 216.w,
                    height: 38.w,
                    margin: EdgeInsets.only(
                        top: 80.0, bottom: 16.0, left: 16.0.w, right: 16.0.w),
                    child: Text(
                      'Event Tickets',
                      style: UiConfigs.eventTitleTextStyle,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          EventTicketWidget(event: UiEvents.event1),
                          EventTicketWidget(event: UiEvents.event2),
                          EventTicketWidget(event: UiEvents.event3),
                        ],
                      ),
                      Row(
                        children: [
                          EventTicketWidget(event: UiEvents.event4),
                          EventTicketWidget(event: UiEvents.event5),
                          EventTicketWidget(event: UiEvents.event6),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 48.0, bottom: 91.0),
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: UiConfigs.eventMoreButtonBackColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            width: 585.0.w,
                            height: 50.0,
                            alignment: Alignment.center,
                            child: Text(
                              'See 6 More',
                              style: UiConfigs.eventTileButtonTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
