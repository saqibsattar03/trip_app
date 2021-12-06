import 'package:flutter/material.dart';
import 'package:trip_app/ui/widgets/app_title_text.dart';
import 'package:trip_app/utils/colors.dart';
import 'package:trip_app/utils/custom_tab_indicator.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 70.0,
                left: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30.0,
                  ),
                  Container(
                    width: 60.0,
                    height: 60.0,
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      // color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: AppTitleText(
                text: 'Discover',
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelColor: Colors.black,
                  labelPadding: const EdgeInsets.only(
                    right: 20.0,
                    left: 20.0,
                  ),
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicator: CircleTabIndicator(
                    color: AppColors.mainColor,
                    radius: 4,
                  ),
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Inspirations",
                    ),
                    Tab(
                      text: "Emotions",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 300.0,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text('hi'),
                  Text("there"),
                  Text('bye'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
