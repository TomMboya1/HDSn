import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 74.h,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Text(
            "#heart",
            style: theme.textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
