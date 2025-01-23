import 'package:flutter/material.dart';
import 'package:flutter_flutter/consts/app_sizes.dart';
import 'package:flutter_flutter/ui/widgets/github_button.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontWeight: FontWeight.w800,
          color: Theme.of(context).colorScheme.onSecondary,
        );

    return SliverAppBar(
      expandedHeight: 120.0,
      floating: false,
      pinned: false,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      centerTitle: false,
      actions: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: GithubButton(),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultPadding),
          child: Align(
            alignment: Alignment.topLeft,
            child: SelectableText.rich(
              TextSpan(
                children: [
                  TextSpan(text: "MATEUSZ", style: textStyle),
                  TextSpan(text: " SUPEŁ", style: textStyle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
