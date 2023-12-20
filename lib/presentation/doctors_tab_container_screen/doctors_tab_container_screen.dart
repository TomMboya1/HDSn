import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/presentation/doctors_page/doctors_page.dart';
import 'package:hdsn/presentation/home_one_page/home_one_page.dart';
import 'package:hdsn/widgets/app_bar/appbar_leading_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hdsn/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_bottom_bar.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';
import 'package:hdsn/widgets/custom_search_view.dart';

class DoctorsTabContainerScreen extends StatefulWidget {
  const DoctorsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DoctorsTabContainerScreenState createState() =>
      DoctorsTabContainerScreenState();
}

class DoctorsTabContainerScreenState extends State<DoctorsTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Text(
                  "Doctors",
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 26.v),
              _buildSearchRow(context),
              SizedBox(height: 8.v),
              _buildTabview(context),
              SizedBox(
                height: 569.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    DoctorsPage(),
                    DoctorsPage(),
                    DoctorsPage(),
                    DoctorsPage(),
                    DoctorsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 31.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconArrowLeft,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 19.v,
          bottom: 24.v,
        ),
      ),
      title: AppbarSubtitleTwo(
        text: "Back",
        margin: EdgeInsets.only(left: 6.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconNotification,
          margin: EdgeInsets.fromLTRB(26.h, 16.v, 26.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomSearchView(
                controller: searchController,
                hintText: "Example “heart”",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconFilter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 26.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabs: [
          Tab(
            child: Text(
              "#heart",
            ),
          ),
          Tab(
            child: Text(
              "#teeth",
            ),
          ),
          Tab(
            child: Text(
              "#Surgeon",
            ),
          ),
          Tab(
            child: Text(
              "#eyes",
            ),
          ),
          Tab(
            child: Text(
              "#mounth",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconhome:
        return "/";
      case BottomBarEnum.Iconreceipt:
        return "/";
      case BottomBarEnum.Iconplus:
        return AppRoutes.homeOnePage;
      case BottomBarEnum.Iconchat:
        return "/";
      case BottomBarEnum.Iconprofil:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage();
      default:
        return DefaultWidget();
    }
  }
}
