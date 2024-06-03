import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class CustomShowCase extends StatelessWidget {
  const CustomShowCase(
      {super.key,
      required this.showcaseKey,
      this.nextShowcaseKey,
      this.onAnimationNext,
      required this.description,
      this.targetPadding = const EdgeInsets.all(32),
      required this.child});

  final GlobalKey showcaseKey;
  final GlobalKey? nextShowcaseKey;
  final String description;
  final EdgeInsets targetPadding;
  final Widget child;
  final Function? onAnimationNext;

  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: showcaseKey,
      description: description,
      targetPadding: targetPadding,
      toolTipSlideEndDistance: 0,
      descriptionPadding: const EdgeInsets.all(16),
      blurValue: 10,
      targetBorderRadius: BorderRadius.circular(32),
      scaleAnimationDuration: const Duration(milliseconds: 300),
      overlayColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
      disposeOnTap: false,
      onTargetClick: () {
        if (onAnimationNext != null) {
          onAnimationNext!();
          return;
        }

        if (nextShowcaseKey != null) {
          ShowCaseWidget.of(context).startShowCase([nextShowcaseKey!]);
        }
      },
      onBarrierClick: () {
        if (onAnimationNext != null) {
          onAnimationNext!();
          return;
        }
        if (nextShowcaseKey != null) {
          ShowCaseWidget.of(context).startShowCase([nextShowcaseKey!]);
        }
      },
      onToolTipClick: () {
        if (onAnimationNext != null) {
          onAnimationNext!();
          return;
        }
        if (nextShowcaseKey != null) {
          ShowCaseWidget.of(context).startShowCase([nextShowcaseKey!]);
        }
      },
      child: child,
    );
  }
}
