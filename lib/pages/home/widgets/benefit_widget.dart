import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_benefits.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';

class BenefitWidget extends StatelessWidget {
  final BenefitType benefit;

  const BenefitWidget({Key? key, required this.benefit}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42.0.w,
            margin: EdgeInsets.only(right: 16.0.w),
            height: benefit.image.convertHeight(newWidth: 42.0),
            color: Colors.transparent,
            child: Image(
              width: 42.0.w,
              height: benefit.image.convertHeight(newWidth: 42.0),
              fit: BoxFit.cover,
              image: ExactAssetImage(benefit.image.imageAsset),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  benefit.title,
                  style: UiConfigs.downloadBenefitTitleTextStyle,
                ),
              ),
              Container(
                width: 195.0.w,
                child: Text(
                  benefit.description,
                  style: UiConfigs.downloadBenefitDescriptionTextStyle,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
