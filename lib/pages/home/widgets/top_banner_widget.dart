import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBannerWidget extends StatelessWidget {
  const TopBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.cover,
      width: 1440.w,
      height: 509,
      image: ExactAssetImage('assets/images/hero_image.png'),
    );
  }
}
