import 'package:flutter/material.dart';

import '../core.dart';

class DividerH extends StatelessWidget {
  const DividerH({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(color: Palette.gery10,
      thickness: 1,
      height: Dimens.space8,
      indent: Dimens.space8,
      endIndent: Dimens.space8,);
  }
}