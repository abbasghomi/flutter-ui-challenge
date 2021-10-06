import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';

class TopSearchBarWidget extends StatelessWidget {
  const TopSearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 437,
        left: 160.0.w,
        right: 160.0.w,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 972.w,
            height: 72,
            decoration: BoxDecoration(
              color: UiConfigs.whiteTextColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Row(
                    children: [
                      Container(
                        child: Image(
                          width: 24.w,
                          height: 24,
                          image:
                          ExactAssetImage('assets/images/search_dark.png'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24.0.w),
                        width: 618.w,
                        height: 24,
                        child: Text(
                          'Search Events, Venuses, Artists or Passes',
                          style: UiConfigs.searchbarHintTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                    indent: 20.0,
                    endIndent: 20.0,
                    color: UiConfigs.searchbarHintTextColor),
                Container(
                  margin: EdgeInsets.only(left: 24.0.w),
                  child: Image(
                    width: 24.w,
                    height: 24,
                    image: ExactAssetImage('assets/images/map_pin.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 24.0.w),
                  height: 24,
                  child: Text(
                    'All Locations',
                    style: UiConfigs.searchbarHintTextStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0.w),
                  child: Image(
                    width: 24.w,
                    height: 24,
                    image: ExactAssetImage('assets/images/chevron_down.png'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 148.w,
            height: 72,
            decoration: BoxDecoration(
              color: UiConfigs.buttonColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0)),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                  width: double.infinity, height: double.infinity),
              child: InkWell(
                onTap: () {
                  print('tapped');
                },
                child: Center(
                  child: Text(
                    'Search',
                    style: UiConfigs.searchbarSearchButtonTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
