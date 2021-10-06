import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';
import 'package:flutter_ui_challenge/pages/home/enums/top_menu_enum.dart';

class TopMenuWidget extends StatelessWidget {
  final ValueNotifier<bool> brandAmbassadors = ValueNotifier<bool>(false);
  final ValueNotifier<bool> venueOwners = ValueNotifier<bool>(false);
  final ValueNotifier<bool> buyPasses = ValueNotifier<bool>(false);
  final ValueNotifier<bool> myAccount = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 160.0.w, right: 163.0.w),
      color: UiConfigs.topMenuBackColor,
      width: 1440.w,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            width: 128.61.w,
            height: 29,
            image: ExactAssetImage('assets/images/logo.png'),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 61.0.w),
          ),
          Row(
            children: [
              MouseRegion(
                onEnter: (event) => _onEnter(TopMenusEnum.BrandAmbassadors),
                onHover: (event) => _onHover(TopMenusEnum.BrandAmbassadors),
                onExit: (event) => _onExit(TopMenusEnum.BrandAmbassadors),
                child: InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tapped on Brand Ambassadors')));
                  },
                  child: ValueListenableBuilder(
                      valueListenable: brandAmbassadors,
                      builder: (_, __, ___) {
                        return Text(
                          'Brand Ambassadors',
                          style: brandAmbassadors.value
                              ? UiConfigs.topMenuTextHoverStyle
                              : UiConfigs.topMenuTextStyle,
                        );
                      }),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32.0.w),
                child: MouseRegion(
                  onEnter: (event) => _onEnter(TopMenusEnum.VenueOwners),
                  onHover: (event) => _onHover(TopMenusEnum.VenueOwners),
                  onExit: (event) => _onExit(TopMenusEnum.VenueOwners),
                  child: InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tapped on Venue Owners')));
                    },
                    child: ValueListenableBuilder(
                        valueListenable: venueOwners,
                        builder: (_, __, ___) {
                          return Text(
                            'Venue Owners',
                            style: venueOwners.value
                                ? UiConfigs.topMenuTextHoverStyle
                                : UiConfigs.topMenuTextStyle,
                          );
                        }),
                  ),
                ),
              ),
              MouseRegion(
                onEnter: (event) => _onEnter(TopMenusEnum.BuyPasses),
                onHover: (event) => _onHover(TopMenusEnum.BuyPasses),
                onExit: (event) => _onExit(TopMenusEnum.BuyPasses),
                child: InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tapped on Buy Passes')));
                  },
                  child: ValueListenableBuilder(
                      valueListenable: buyPasses,
                      builder: (_, __, ___) {
                        return Text(
                          'Buy Passes',
                          style: buyPasses.value
                              ? UiConfigs.topMenuTextHoverStyle
                              : UiConfigs.topMenuTextStyle,
                        );
                      }),
                ),
              ),
              Container(
                width: 385.w,
                height: 42,
                margin: EdgeInsets.symmetric(horizontal: 32.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image(
                        width: 24.w,
                        height: 24,
                        image:
                            ExactAssetImage('assets/images/search_light.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: InkWell(
                        onTap: (){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tapped on Download the App')));
                        },
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
                    MouseRegion(
                      onEnter: (event) => _onEnter(TopMenusEnum.MyAccount),
                      onHover: (event) => _onHover(TopMenusEnum.MyAccount),
                      onExit: (event) => _onExit(TopMenusEnum.MyAccount),
                      child: InkWell(
                        onTap: (){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tapped on My Account')));
                        },
                        child: ValueListenableBuilder(
                            valueListenable: myAccount,
                            builder: (_, __, ___) {
                              return Container(
                                width: 123.0.w,
                                height: 24.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                      width: 24.w,
                                      height: 24,
                                      image: ExactAssetImage(
                                          'assets/images/my_account.png'),
                                    ),
                                    Text(
                                      'My Account',
                                      style: myAccount.value
                                          ? UiConfigs.topMenuTextHoverStyle
                                          : UiConfigs.topMenuTextStyle,
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _onEnter(TopMenusEnum topMenu) {
    switch (topMenu) {
      case TopMenusEnum.BrandAmbassadors:
        brandAmbassadors.value = true;
        break;
      case TopMenusEnum.VenueOwners:
        venueOwners.value = true;
        break;
      case TopMenusEnum.BuyPasses:
        buyPasses.value = true;
        break;
      case TopMenusEnum.MyAccount:
        myAccount.value = true;
        break;
    }
  }

  void _onHover(TopMenusEnum topMenu) {
    switch (topMenu) {
      case TopMenusEnum.BrandAmbassadors:
        brandAmbassadors.value = true;
        break;
      case TopMenusEnum.VenueOwners:
        venueOwners.value = true;
        break;
      case TopMenusEnum.BuyPasses:
        buyPasses.value = true;
        break;
      case TopMenusEnum.MyAccount:
        myAccount.value = true;
        break;
    }
  }

  void _onExit(TopMenusEnum topMenu) {
    switch (topMenu) {
      case TopMenusEnum.BrandAmbassadors:
        brandAmbassadors.value = false;
        break;
      case TopMenusEnum.VenueOwners:
        venueOwners.value = false;
        break;
      case TopMenusEnum.BuyPasses:
        buyPasses.value = false;
        break;
      case TopMenusEnum.MyAccount:
        myAccount.value = false;
        break;
    }
  }
}
