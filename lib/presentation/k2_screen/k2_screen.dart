import 'package:apartaments/core/app_export.dart';
import 'package:apartaments/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:apartaments/widgets/app_bar/appbar_title.dart';
import 'package:apartaments/widgets/app_bar/custom_app_bar.dart';
import 'package:apartaments/widgets/custom_elevated_button.dart';
import 'package:apartaments/widgets/custom_floating_text_field.dart';
import 'package:apartaments/widgets/custom_icon_button.dart';
import 'package:apartaments/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class K2Screen extends StatelessWidget {
  K2Screen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController birthDateController = TextEditingController();

  TextEditingController nationalityController = TextEditingController();

  TextEditingController passportNumberController = TextEditingController();

  TextEditingController passportExpiryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Бронирование'),
          backgroundColor: Colors.white,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        _buildFrame(context),
                        SizedBox(height: 8.v),
                        _buildFrame1(context),
                        SizedBox(height: 8.v),
                        _buildOne(context),
                        SizedBox(height: 8.v),
                        _buildTwo(context),
                        SizedBox(height: 8.v),
                        _buildThree(context),
                        SizedBox(height: 8.v),
                        _buildFour(context),
                        SizedBox(height: 8.v),
                        _buildFrame2(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBarsBars(context),
      ),
    );
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
        title: AppbarTitle(text: "Бронирование"),
        styleType: Style.bgFill);
  }

  Widget _buildFrame(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.v),
            decoration: AppDecoration.fillAmberA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgStar2215x15,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    radius: BorderRadius.circular(1.h),
                    margin: EdgeInsets.symmetric(vertical: 3.v)),
                Padding(
                  padding: EdgeInsets.only(left: 2.h, top: 2.v),
                  child: Text("5 Превосходно",
                      style: CustomTextStyles.titleMediumAmberA700),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                )
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Text("Steigenberger Makadi", style: theme.textTheme.titleLarge),
          SizedBox(height: 6.v),
          Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет",
              style: CustomTextStyles.titleSmallPrimary),
        ],
      ),
    );
  }

  Widget _buildFrame1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(right: 77.h),
              child: Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text("Вылет из", style: theme.textTheme.bodyLarge)),
                Padding(
                    padding: EdgeInsets.only(left: 71.h),
                    child: Text("Санкт-Петербург",
                        style: CustomTextStyles.bodyLargeSecondaryContainer))
              ])),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 89.h),
            child: Row(
              children: [
                Text("Страна, город", style: theme.textTheme.bodyLarge),
                Padding(
                  padding: EdgeInsets.only(left: 39.h),
                  child: Text("Египет, Хургада",
                      style: CustomTextStyles.bodyLargeSecondaryContainer),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 27.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text("Даты", style: theme.textTheme.bodyLarge),
                ),
                SizedBox(
                  width: 108,
                ),
                Text("19.09.2023 – 27.09.2023",
                    style: CustomTextStyles.bodyLargeSecondaryContainer),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              Text("Кол-во ночей", style: theme.textTheme.bodyLarge),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Text("7 ночей",
                    style: CustomTextStyles.bodyLargeSecondaryContainer),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 55.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text("Отель", style: theme.textTheme.bodyLarge),
                ),
                Text("Steigenberger Makadi",
                    style: CustomTextStyles.bodyLargeSecondaryContainer),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 26.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v, bottom: 19.v),
                    child: Text("Номер", style: theme.textTheme.bodyLarge)),
                Container(
                  width: 176.h,
                  margin: EdgeInsets.only(left: 91.h),
                  child: Text(
                    "Стандартный с видом на бассейн или сад",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeSecondaryContainer
                        .copyWith(height: 1.20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              Text("Питание", style: theme.textTheme.bodyLarge),
              Padding(
                padding: EdgeInsets.only(left: 79.h),
                child: Text("Все включено",
                    style: CustomTextStyles.bodyLargeSecondaryContainer),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneNumber(BuildContext context) {
    return CustomFloatingTextField(
        controller: phoneNumberController,
        labelText: "Номер телефона",
        labelStyle: CustomTextStyles.bodyLargeOnPrimary,
        hintText: "Номер телефона");
  }

  Widget _buildEmail(BuildContext context) {
    return CustomFloatingTextField(
        controller: emailController,
        labelText: "Почта",
        labelStyle: CustomTextStyles.bodyLargeOnPrimary,
        hintText: "Почта");
  }

  Widget _buildOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text("Информация о покупателе", style: theme.textTheme.titleLarge),
          SizedBox(height: 17.v),
          _buildPhoneNumber(context),
          SizedBox(height: 8.v),
          _buildEmail(context),
          SizedBox(height: 7.v),
          Container(
            width: 331.h,
            margin: EdgeInsets.only(right: 11.h),
            child: Text(
              "Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(height: 1.20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstName(BuildContext context) {
    return CustomFloatingTextField(
        controller: firstNameController,
        labelText: "Имя",
        labelStyle: CustomTextStyles.bodyLargeOnPrimary,
        hintText: "Имя");
  }

  Widget _buildLastName(BuildContext context) {
    return CustomFloatingTextField(
        controller: lastNameController,
        labelText: "Фамилия",
        labelStyle: CustomTextStyles.bodyLargeOnPrimary,
        hintText: "Фамилия");
  }

  Widget _buildBirthDate(BuildContext context) {
    return CustomTextFormField(
        controller: birthDateController, hintText: "Дата рождения");
  }

  Widget _buildNationality(BuildContext context) {
    return CustomTextFormField(
        controller: nationalityController, hintText: "Гражданство");
  }

  Widget _buildPassportNumber(BuildContext context) {
    return CustomTextFormField(
        controller: passportNumberController, hintText: "Номер загранпаспорта");
  }

  Widget _buildPassportExpiry(BuildContext context) {
    return CustomTextFormField(
        controller: passportExpiryController,
        hintText: "Срок действия загранпаспорта",
        textInputAction: TextInputAction.done);
  }

  Widget _buildTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text("Первый турист ",
                          style: theme.textTheme.titleLarge)),
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    child:
                        CustomImageView(imagePath: ImageConstant.imgFrame609),
                  )
                ],
              ),
              SizedBox(height: 17.v),
              _buildFirstName(context),
              SizedBox(height: 8.v),
              _buildLastName(context),
              SizedBox(height: 8.v),
              _buildBirthDate(context),
              SizedBox(height: 8.v),
              _buildNationality(context),
              SizedBox(height: 8.v),
              _buildPassportNumber(context),
              SizedBox(height: 8.v),
              _buildPassportExpiry(context),
              SizedBox(height: 3.v)
            ]));
  }

  Widget _buildThree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text("Второй турист ", style: theme.textTheme.titleLarge),
          ),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(4.h),
            child: CustomImageView(imagePath: ImageConstant.imgFrame609),
          ),
        ],
      ),
    );
  }

  Widget _buildFour(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text("Добавить туриста", style: theme.textTheme.titleLarge),
          ),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL6,
            child: CustomImageView(imagePath: ImageConstant.imgFrame609),
          ),
        ],
      ),
    );
  }

  Widget _buildFrame2(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildSeven(context, titleText: "Тур", priceText: "186 600 ₽"),
          SizedBox(height: 13.v),
          _buildSeven(context,
              titleText: "Топливный сбор", priceText: "9 300 ₽"),
          SizedBox(height: 13.v),
          _buildSeven(context,
              titleText: "Сервисный сбор", priceText: "2 136 ₽"),
          SizedBox(height: 13.v),
          _buildSeven(context, titleText: "К оплате", priceText: "198 036 ₽")
        ]));
  }

  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.k3Screen);
        },
        text: "Оплатить 198 036 ₽");
  }

  Widget _buildBarsBars(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 28.v),
        decoration: AppDecoration.outlineGray,
        child: _buildTf(context));
  }

  Widget _buildSeven(
    BuildContext context, {
    required String titleText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            titleText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.bodyLargeSecondaryContainer.copyWith(
            color: theme.colorScheme.secondaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
