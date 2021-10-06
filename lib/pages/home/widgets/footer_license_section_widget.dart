import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';

class FooterLicenseSectionWidget extends StatelessWidget {
  const FooterLicenseSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.0,
      color: UiConfigs.footerLicenseSectionBackColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 120.w,
            height: 17.0,
            child: Text(
              '© GhomiDev 2020',
              style: UiConfigs.footerLicenseSectionTextStyle,
            ),
          ),
          Row(
            children: [
              Container(
                width: 120.w,
                height: 17.0,
                child: Text(
                  'Privacy Policy',
                  style: UiConfigs.footerLicenseSectionTextStyle,
                ),
              ),
              Container(
                width: 120.w,
                height: 17.0,
                margin: EdgeInsets.only(right: 200.0.w),
                child: Text(
                  'Terms & Conditions',
                  style: UiConfigs.footerLicenseSectionTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
