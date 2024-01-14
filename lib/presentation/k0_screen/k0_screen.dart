import '../k0_screen/widgets/framenine_item_widget.dart';
import '../k0_screen/widgets/three_item_widget.dart';
import 'package:apartaments/core/app_export.dart';
import 'package:apartaments/widgets/app_bar/appbar_title.dart';
import 'package:apartaments/widgets/app_bar/custom_app_bar.dart';
import 'package:apartaments/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class K0Screen extends StatefulWidget {
  K0Screen({Key? key}) : super(key: key);

  @override
  State<K0Screen> createState() => _K0ScreenState();
}

class _K0ScreenState extends State<K0Screen> {
  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildFrame(context),
                  SizedBox(height: 23.v),
                  _buildFrame1(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBarsBars(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "Отель",
      ),
    );
  }

  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 257.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 257.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      sliderIndex = index;
                    },
                  ),
                  itemCount: 1,
                  itemBuilder: (context, index, realIndex) {
                    return ThreeItemWidget();
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 17.v,
                    margin: EdgeInsets.only(bottom: 8.v),
                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: 1,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 5,
                        activeDotColor:
                            theme.colorScheme.secondaryContainer.withOpacity(1),
                        dotColor: theme.colorScheme.secondaryContainer
                            .withOpacity(0.22),
                        dotHeight: 7.v,
                        dotWidth: 7.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillAmberA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgStar22,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "5 Превосходно",
                    style: CustomTextStyles.titleMediumAmberA700,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                )
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Steigenberger Makadi",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 6.v),
          Text(
            "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
            style: CustomTextStyles.titleSmallPrimary,
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 26.h),
            child: Row(
              children: [
                Text(
                  "от 134 673 ₽",
                  style: theme.textTheme.headlineLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 14.v,
                  ),
                  child: Text(
                    "за тур с перелётом",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFrame1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Об отеле",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 15.v),
          Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children:
                List<Widget>.generate(2, (index) => FramenineItemWidget()),
          ),
          SizedBox(height: 11.v),
          SizedBox(
            width: 340.h,
            child: Text(
              "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeSecondaryContainer_1.copyWith(
                height: 1.20,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillGray50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildFour(
                  context,
                  checkmark: ImageConstant.imgSettings,
                  titleMediumOnSecondaryContainer: "Удобства",
                  titleSmall: "Самое необходимое",
                ),
                Icon(Icons.arrow_forward_ios),
                SizedBox(height: 9.v),
                Divider(
                  indent: 38.h,
                ),
                SizedBox(height: 8.v),
                _buildFour(
                  context,
                  checkmark: ImageConstant.imgCheckmark,
                  titleMediumOnSecondaryContainer: "Что включено",
                  titleSmall: "Самое необходимое",
                ),
                Icon(Icons.arrow_forward_ios),
                SizedBox(height: 9.v),
                Divider(
                  indent: 38.h,
                ),
                SizedBox(height: 8.v),
                _buildFour(
                  context,
                  checkmark: ImageConstant.imgClose,
                  titleMediumOnSecondaryContainer: "Что не включено",
                  titleSmall: "Самое необходимое",
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBarsBars(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 28.v,
      ),
      decoration: AppDecoration.outlineGray,
      child: CustomElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.k1Screen);
        },
        text: "К выбору номера",
      ),
    );
  }

  Widget _buildFour(
    BuildContext context, {
    required String checkmark,
    required String titleMediumOnSecondaryContainer,
    required String titleSmall,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: checkmark,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 7.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleMediumOnSecondaryContainer,
                style:
                    CustomTextStyles.titleMediumOnSecondaryContainer.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                titleSmall,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: appTheme.blueGray400,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 7.v),
        ),
      ],
    );
  }
}
