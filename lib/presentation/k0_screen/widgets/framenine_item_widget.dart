import 'package:apartaments/core/app_export.dart';
import 'package:flutter/material.dart';

class FramenineItemWidget extends StatelessWidget {
  const FramenineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 4.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "3-я линия   Платный Wi-fi ",
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 16.fSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray50,
      selectedColor: appTheme.gray50,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          5.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
