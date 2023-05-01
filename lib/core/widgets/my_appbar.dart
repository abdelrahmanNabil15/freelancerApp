import 'package:flutter/material.dart';

class MyAppBar {
  const MyAppBar();

  PreferredSize call({ Widget? title}) => PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(elevation:0 ,title: title , ),
      );
}
