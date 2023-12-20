import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';

class ViedoCallScreen extends StatelessWidget {
  const ViedoCallScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.gray100,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgViedoCall,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 28.v),
                _buildTimeRow(context),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 26.h,
                      right: 376.h,
                    ),
                    decoration: AppDecoration.fillOnPrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 90.v),
                        Container(
                          height: 106.v,
                          width: 10.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                _buildEighteenColumn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 73.h,
            margin: EdgeInsets.only(bottom: 87.v),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillOnPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 6.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.deepOrange400,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "1:32",
                    style: CustomTextStyles.titleMediumOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 118.v,
            width: 104.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPrettySmiling,
                  height: 104.adaptSize,
                  width: 104.adaptSize,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                  alignment: Alignment.topCenter,
                ),
                CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillOnPrimary,
                  alignment: Alignment.bottomCenter,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconCameraSwitch,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteenColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 69.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 132.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 66.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dr. Wade Warren",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Psychiatrist",
                  style: CustomTextStyles.bodyMediumGilroyMedium,
                ),
                SizedBox(height: 1.v),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 15.h),
                  child: CustomIconButton(
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                    padding: EdgeInsets.all(21.h),
                    decoration: IconButtonStyleHelper.fillOnPrimaryTL36,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconVoice,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: CustomIconButton(
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                    padding: EdgeInsets.all(22.h),
                    decoration: IconButtonStyleHelper.fillDeepOrangeTL36,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconPhone,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: CustomIconButton(
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                    padding: EdgeInsets.all(21.h),
                    decoration: IconButtonStyleHelper.fillOnPrimaryTL36,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconVideo,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 28.v),
          Text(
            "Swipe up to chat",
            style: CustomTextStyles.bodyLargeOnPrimaryContainer,
          ),
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 12.v,
            width: 24.h,
          ),
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUpGray10001,
            height: 12.v,
            width: 24.h,
          ),
        ],
      ),
    );
  }
}
