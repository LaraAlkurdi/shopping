import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/splash_screen/splash_screencontroller.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.expand,
      children: [
        SvgPicture.asset(
          'assets/images/bg_background.svg',
          fit: BoxFit.cover,
          width: screenWidth(1),
          height: screenWidth(1),
        ),
        Center(
          child: SvgPicture.asset(
            'assets/images/Logo.svg',
            width: screenWidth(3),
            height: screenWidth(2.5),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: screenWidth(2)),
            height: screenWidth(6),
            child: SpinKitThreeBounce(
              color: AppColors.mainOrangeColor,
            )),
      ],
    )));
  }
}
