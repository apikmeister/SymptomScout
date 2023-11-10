import '../models/message_item_model.dart';
import 'package:flutter/material.dart';
import 'package:symptomscout/core/app_export.dart';

// ignore: must_be_immutable
class MessageItemWidget extends StatelessWidget {
  MessageItemWidget(
    this.messageItemModelObj, {
    Key? key,
    this.onTapChat,
  }) : super(
          key: key,
        );

  MessageItemModel messageItemModelObj;

  VoidCallback? onTapChat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapChat!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: messageItemModelObj?.drMarcusHorizon,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 5.v,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          messageItemModelObj.drMarcusHorizon1!,
                          style: theme.textTheme.titleMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            messageItemModelObj.time!,
                            style: CustomTextStyles.bodySmallOnPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        messageItemModelObj.iDonTHaveAny!,
                        style: CustomTextStyles.bodySmallBluegray600,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 9.v,
                        width: 14.h,
                        margin: EdgeInsets.only(
                          left: 30.h,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
