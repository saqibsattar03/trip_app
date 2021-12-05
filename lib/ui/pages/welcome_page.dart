import 'package:flutter/material.dart';
import 'package:trip_app/ui/widgets/app_subtitle_text.dart';
import 'package:trip_app/ui/widgets/app_title_text.dart';
import 'package:trip_app/ui/widgets/custom_carousel_dots.dart';
import 'package:trip_app/ui/widgets/responsive_button.dart';
import 'package:trip_app/utils/colors.dart' as color;

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    List images = [
      "welcome-one.png",
      "welcome-two.png",
      "welcome-three.png",
    ];
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/' + images[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 150.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTitleText(text: 'Trips'),
                          AppSubTitleText(
                            text: 'Mountain',
                            size: 30.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: 250.0,
                            child: AppSubTitleText(
                              text:
                                  'Mountain hikes give you an incredible sense of freedom along with endurance tests',
                              color: color.AppColors.textColor2,
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          ResponsiveButton(
                            width: 120.0,
                            image: 'assets/images/button-one.png',
                          ),
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return CustomCarouselDots(
                            height: index == indexDots ? 25.0 : 8.0,
                            color: index == indexDots
                                ? color.AppColors.mainColor
                                : color.AppColors.mainColor.withOpacity(
                                    0.3,
                                  ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
