import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_benefits.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/benefit_widget.dart';

class DownloadAppWidget extends StatelessWidget {
  const DownloadAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 58.0),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: ClipRect(
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      widthFactor: 0.830393,
                      heightFactor: 1.0,
                      child: Image(
                        width: 737.0,
                        height: 809.0,
                        fit: BoxFit.fitHeight,
                        image: ExactAssetImage('assets/images/blob.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 91.0.w),
                width: 460.6,
                height: 862.0,
                color: Colors.transparent,
                child: Image(
                  width: 460.6,
                  height: 862.0,
                  fit: BoxFit.fitWidth,
                  image: ExactAssetImage('assets/images/phone.png'),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 237.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Own Your Night',
                    style: UiConfigs.downloadOverTitleTextStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 45.0),
                  child: Text(
                    'Download the App',
                    style: UiConfigs.downloadTitleTextStyle,
                  ),
                ),
                Container(
                  width: 445.0.w,
                  margin: EdgeInsets.only(bottom: 56.0),
                  child: Text(
                    'Skip the line, order drinks, purchcase event tickets, and much more all your favorite bars!',
                    style: UiConfigs.downloadBelowTitleTextStyle,
                  ),
                ),
                Row(
                  children: [
                    BenefitWidget(benefit: UiBenefits.benefit1),
                    Container(
                      width: 46.0.w,
                    ),
                    BenefitWidget(benefit: UiBenefits.benefit2),
                  ],
                ),
                Container(
                  height: 36.0,
                ),
                Row(
                  children: [
                    BenefitWidget(benefit: UiBenefits.benefit3),
                    Container(
                      width: 46.0.w,
                    ),
                    BenefitWidget(benefit: UiBenefits.benefit4),
                  ],
                ),
                Container(
                  height: 36.0,
                ),
                Row(
                  children: [
                    BenefitWidget(benefit: UiBenefits.benefit5),
                    Container(
                      width: 46.0.w,
                    ),
                    BenefitWidget(benefit: UiBenefits.benefit6),
                  ],
                ),
                Container(
                  height: 56.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 178.0.w,
                      height: 57.0.w,
                      margin: EdgeInsets.only(right: 16.0.w),
                      color: Colors.transparent,
                      child: Image(
                        width: 178.0.w,
                        height: 57.0,
                        fit: BoxFit.fitWidth,
                        image: ExactAssetImage('assets/images/google_play.png'),
                      ),
                    ),
                    Container(
                      width: 16.0.w,
                    ),
                    Container(
                      width: 178.0.w,
                      height: 57.0.w,
                      margin: EdgeInsets.only(right: 16.0.w),
                      color: Colors.transparent,
                      child: Image(
                        width: 178.0.w,
                        height: 57.0,
                        fit: BoxFit.fitWidth,
                        image: ExactAssetImage('assets/images/app_store.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
