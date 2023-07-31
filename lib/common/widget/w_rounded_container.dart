import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backgroundColor;

  const RoundedContainer({
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    this.radius = 20,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: backgroundColor ?? context.appColors.roundedLayoutBackground,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
