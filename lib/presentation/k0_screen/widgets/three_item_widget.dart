import 'package:apartaments/core/app_export.dart';
import 'package:flutter/material.dart';

class ThreeItemWidget extends StatelessWidget {
  const ThreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage20,
        height: 257.v,
        width: 343.h,
        radius: BorderRadius.circular(
          15.h,
        ),
      ),
    );
  }
}
