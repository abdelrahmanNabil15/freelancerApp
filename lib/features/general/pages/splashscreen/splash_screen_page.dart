import 'package:flutter/material.dart';
import 'package:freeWoma/core/core.dart';
import 'package:go_router/go_router.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.goNamed(Routes.root.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: ColoredBox(
        color: Palette.white,
        child: Center(
          child: CircleAvatar(
            backgroundColor: Palette.primary,
            radius: Dimens.profilePicture + Dimens.space4,
            child: CircleAvatar(
              backgroundImage: AssetImage(Images.icLauncher),
              radius: Dimens.profilePicture,
            ),
          ),
        ),
      ),
    );
  }
}
