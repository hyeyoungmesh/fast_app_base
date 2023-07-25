import 'package:fast_app_base/common/constants.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:flutter/material.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({Key? key}) : super(key: key);

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          const Width(10),
          Image.asset(
            "$basePath/icon/toss.png",
            height: 30,
          ),
          const Width(10),
          Image.asset(
            "$basePath/icon/map_point.png",
            height: 30,
          ),
          const Width(10),
          Image.asset(
            "$basePath/icon/notification.png",
            height: 30,
          ),
        ],
      ),
    );
  }
}
