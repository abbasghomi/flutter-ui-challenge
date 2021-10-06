import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/configs/ui_configs.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/download_app_widget.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/event_tickets_widget.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/footer_license_section_widget.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/footer_menu_group_widget.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/top_banner_widget.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/top_menu_widget.dart';
import 'package:flutter_ui_challenge/pages/home/widgets/top_search_bar_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        width: 1440.w,
        height: 3218.h,
        color: UiConfigs.pageBackColor,
        child: Stack(
          children: [
            CustomScrollView(shrinkWrap: true, slivers: [
              MultiSliver(
                children: [
                  SliverClip(
                    child: MultiSliver(
                      children: [
                        Stack(
                          children: [
                            TopBannerWidget(),
                            TopSearchBarWidget(),
                          ],
                        ),
                        EventTicketsWidget(),
                        DownloadAppWidget(),
                        FooterMenuGroupWidget(),
                        FooterLicenseSectionWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
            TopMenuWidget(),
          ],
        ),
      ),
    );
  }
}
