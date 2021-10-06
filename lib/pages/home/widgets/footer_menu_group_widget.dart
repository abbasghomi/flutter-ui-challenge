import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';
import 'package:flutter_ui_challenge/configs/ui_images.dart';

class FooterMenuGroupWidget extends StatelessWidget {
  const FooterMenuGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(top: 78.0, left: 159.0.w, bottom: 100.0, right: 100.0.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160.0.w,
                height: UiImages.logoImage.convertHeight(newWidth: 160.0),
                margin: EdgeInsets.only(right: 16.0.w),
                color: Colors.transparent,
                child: Image(
                  width: 160.0.w,
                  height: UiImages.logoImage.convertHeight(newWidth: 160.0),
                  fit: BoxFit.fitWidth,
                  image: ExactAssetImage(UiImages.logoImage.imageAsset),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 22.0),
                child: Row(
                  children: [
                    Container(
                      width: 20.0.w,
                      height:
                      UiImages.instagramImage.convertHeight(newWidth: 20.0).w,
                      color: Colors.transparent,
                      child: Image(
                        width: 20.0.w,
                        height: UiImages.instagramImage
                            .convertHeight(newWidth: 20.0),
                        fit: BoxFit.fitWidth,
                        image:
                        ExactAssetImage(UiImages.instagramImage.imageAsset),
                      ),
                    ),
                    Container(
                      width:
                      UiImages.facebookImage.convertWidth(newHeight: 20.0.w).w,
                      height: 20.0.w,
                      margin: EdgeInsets.only(left: 33.0.w),
                      color: Colors.transparent,
                      child: Image(
                        width: 20.0.w,
                        height: UiImages.facebookImage
                            .convertHeight(newWidth: 20.0.w).w,
                        fit: BoxFit.fitWidth,
                        image:
                        ExactAssetImage(UiImages.facebookImage.imageAsset),
                      ),
                    ),
                    Container(
                      width: 20.0.w,
                      height:
                      UiImages.twitterImage.convertHeight(newWidth: 20.0.w).w,
                      margin: EdgeInsets.only(left: 33.0),
                      color: Colors.transparent,
                      child: Image(
                        width: 20.0.w,
                        height:
                        UiImages.twitterImage.convertHeight(newWidth: 20.0),
                        fit: BoxFit.fitWidth,
                        image:
                        ExactAssetImage(UiImages.twitterImage.imageAsset),
                      ),
                    ),
                    Container(
                      width: 20.0.w,
                      height:
                      UiImages.tiktokImage.convertHeight(newWidth: 20.0.w).w,
                      margin: EdgeInsets.only(left: 33.0.w),
                      color: Colors.transparent,
                      child: Image(
                        width: 20.0.w,
                        height:
                        UiImages.tiktokImage.convertHeight(newWidth: 20.0),
                        fit: BoxFit.fitWidth,
                        image: ExactAssetImage(UiImages.tiktokImage.imageAsset),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: UiConfigs.buttonColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 174.w,
                    height: 42,
                    alignment: Alignment.center,
                    child: Text(
                      'Download the App',
                      style: UiConfigs.topMenuTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
                child: Text(
                  'Company',
                  style: UiConfigs.footerMenuGroupTitleTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Brand Ambassadors',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'About Us',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
                child: Text(
                  'Customers',
                  style: UiConfigs.footerMenuGroupTitleTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Buy Event Tickets',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Buy Gift Cards',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Refunds',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Merch',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
                child: Text(
                  'Venue Owners',
                  style: UiConfigs.footerMenuGroupTitleTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Learn More',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Platform',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Pricing',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Schedule Demo',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Dashboard Login',
                  style: UiConfigs.footerMenuTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
