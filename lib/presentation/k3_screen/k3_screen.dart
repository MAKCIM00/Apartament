import 'package:apartaments/core/app_export.dart';
import 'package:apartaments/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:apartaments/widgets/app_bar/appbar_title.dart';
import 'package:apartaments/widgets/app_bar/custom_app_bar.dart';
import 'package:apartaments/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class K3Screen extends StatelessWidget {
  const K3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: AppBar(
              title: Text('Заказ оплачен'),
              backgroundColor: Colors.white,
            ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 29.h, top: 122.v, right: 29.h),
                child: Column(children: [
                  Container(
                      height: 94.adaptSize,
                      width: 94.adaptSize,
                      padding: EdgeInsets.all(25.h),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder47),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPartyPopper,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          alignment: Alignment.center)),
                  SizedBox(height: 33.v),
                  Text("Ваш заказ принят в работу",
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 16.v),
                  SizedBox(
                      width: 315.h,
                      child: Text(
                          "Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.20))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBarsBars(context)));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 11.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Заказ оплачен"),
        styleType: Style.bgFill);
  }

  Widget _buildBarsBars(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 28.v),
        decoration: AppDecoration.outlineGray,
        child: CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.k0Screen);
            },
            text: "Супер!"));
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
