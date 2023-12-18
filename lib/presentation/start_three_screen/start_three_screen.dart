import '../start_three_screen/widgets/patientcomponentlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/app_bar/appbar_title_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';

class StartThreeScreen extends StatelessWidget {
  const StartThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              Text(
                "Let's get acquainted",
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 13.v),
              Container(
                width: 314.h,
                margin: EdgeInsets.symmetric(horizontal: 23.h),
                child: Text(
                  "Pellentesque placerat arcu in risus facilisis, sed laoreet eros laoreet.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 71.v),
              _buildPatientComponentList(context),
              Spacer(),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                width: 204.h,
                text: "Continue",
                buttonTextStyle: CustomTextStyles.titleMediumGilroyGray10016,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgVector,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorSecondarycontainer,
          margin: EdgeInsets.fromLTRB(191.h, 26.v, 191.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPatientComponentList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 18.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return PatientcomponentlistItemWidget();
      },
    );
  }
}
