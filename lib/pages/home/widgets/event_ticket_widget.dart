import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';
import 'package:flutter_ui_challenge/configs/ui_events.dart';

class EventTicketWidget extends StatelessWidget {
  final EventType event;

  const EventTicketWidget({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0),
      width: 352.0.w,
      height: 449.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: UiConfigs.eventBackColor,
      ),
      child: Stack(
        children: [
          Container(
            width: 352.0.w,
            height: 198.0,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
              ),
              color: UiConfigs.eventBackColor,
            ),
            child: ListView(
              children: [
                Image(
                  width: 352.0.w,
                  height: event.image.convertHeight(newWidth: 352.0.w),
                  fit: BoxFit.cover,
                  image: ExactAssetImage(event.image.imageAsset),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 352.0.w,
              height: 271.5,
              padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 24.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
                color: UiConfigs.eventBackColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          event.title,
                          style: UiConfigs.eventTileTitleTextStyle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          event.dj,
                          style: UiConfigs.eventTileDescriptionTextStyle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          event.eventDate,
                          style: UiConfigs.eventTileDescriptionTextStyle,
                        ),
                      ),
                      Container(
                        child: Text(
                          '${event.club}•${event.address}',
                          style: UiConfigs.eventTileDescriptionTextStyle,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: UiConfigs.buttonColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        width: 110.w,
                        height: 42,
                        alignment: Alignment.center,
                        child: Text(
                          'From \$${event.price.toStringAsFixed(0)} ',
                          style: UiConfigs.topMenuTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
