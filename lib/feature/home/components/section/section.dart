import 'package:chrconnecthpdraft/core/keys/show_case_keys.dart';
import 'package:chrconnecthpdraft/core/widgets/custom_show_case.dart';
import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    this.name,
    this.child,
    this.showViewAll = false,
    this.isShowCase = false,
  }) : super(key: key);

  final String? name;
  final Widget? child;
  final bool showViewAll;
  final bool isShowCase;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (name != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  name!,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const Spacer(),
                if (showViewAll) ...[
                  if (isShowCase)
                    CustomShowCase(
                      showcaseKey: ShowCaseKeys.viewAllKey,
                      nextShowcaseKey: ShowCaseKeys.inboxKey,
                      description:
                          "You can view all your upcoming appointments by clicking here.",
                      child: Text(
                        context.localizations.view_all,
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                      ),
                    ),
                  if (!isShowCase)
                    Text(
                      context.localizations.view_all,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                ]
              ],
            ),
          ),
        if (child != null && name != null) const SizedBox(height: 16),
        child ?? const SizedBox.shrink(),
      ],
    );
  }
}
