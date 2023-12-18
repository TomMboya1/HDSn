import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

// ignore: must_be_immutable
class RecentordersItemWidget extends StatelessWidget {
  const RecentordersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 79.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "23",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 2.v),
          Text(
            "March",
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
