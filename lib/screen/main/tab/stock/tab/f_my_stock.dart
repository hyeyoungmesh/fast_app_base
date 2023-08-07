import 'dart:js';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        height20,
        getMyStock(context),
      ],
    );
    // return Container(
    //   color: Colors.red,
    //   height: 700,
    // );
  }

  // Widget get myAccount => Container(
  //       color: context.appColors.roundedLayouBackground,
  //     );
  Widget getMyAccount(BuildContext context) => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            '계좌'.text.make(),
            Row(
              children: [
                width20,
                '443원'.text.size(24).bold.make(),
                Arrow(),
                emptyExpanded,
                RoundedContainer(
                  child: '채우기'.text.size(12).make(),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  backgroundColor: context.appColors.buttonBackground,
                  radius: 8,
                ),
                width20,
              ],
            ),
            height30,
            Line(
              color: context.appColors.lessImportant,
            ),
            height10,
            LongButton(
              title: '주문내역',
              onTap: () {},
            ),
            LongButton(
              title: '판매수익',
              onTap: () {},
            ),
          ],
        ),
      );

  Widget getMyStock(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            height30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                '관심주식'.text.bold.make(),
                '편집하기'.text.color(context.appColors.lessImportant).make(),
              ],
            ),
            height20,
            Tap(
              onTap: () {
                context.showSnackbar('기본');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    '기본'.text.make(),
                    Arrow(
                      direction: AxisDirection.up,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
