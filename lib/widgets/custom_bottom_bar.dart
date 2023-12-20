import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconHome,
      activeIcon: ImageConstant.imgIconHome,
      type: BottomBarEnum.Iconhome,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconReceipt,
      activeIcon: ImageConstant.imgIconReceipt,
      type: BottomBarEnum.Iconreceipt,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconPlus,
      activeIcon: ImageConstant.imgIconPlus,
      type: BottomBarEnum.Iconplus,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconChat,
      activeIcon: ImageConstant.imgIconChat,
      type: BottomBarEnum.Iconchat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconProfil,
      activeIcon: ImageConstant.imgIconProfil,
      type: BottomBarEnum.Iconprofil,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray5001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -8,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 30.adaptSize,
              width: 30.adaptSize,
              color: theme.colorScheme.primary,
            ),
            activeIcon: SizedBox(
              height: 44.adaptSize,
              width: 44.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          22.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(5.h, 5.v, 6.h, 6.v),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Iconhome,
  Iconreceipt,
  Iconplus,
  Iconchat,
  Iconprofil,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
