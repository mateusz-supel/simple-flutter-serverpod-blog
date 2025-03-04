import 'package:flutter/material.dart';
import 'package:flutter_flutter/consts/app_sizes.dart';
import 'package:flutter_flutter/consts/config.dart';
import 'package:flutter_flutter/ui/widgets/social_media_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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
        centerTitle: true,
        actions: [
          TextButton(
            child: Text("PLAYGROUND",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(color: Colors.white)),
            onPressed: () => {context.go('/playground')},
          ),
          SizedBox(width: AppSizes.midSpacing),
        SocialMediaButton(
          icon: FontAwesomeIcons.github,
          color: Colors.white,
          url: Config.githubUrl,
        ),
        SizedBox(width: AppSizes.minSpacing),
        Padding(
            padding: EdgeInsets.only(right: AppSizes.defaultPadding),
          child: SocialMediaButton(
            icon: FontAwesomeIcons.linkedin,
            color: Colors.blue,
            url: Config.linkedInUrl,
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultPadding),
          child: Align(
            alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: () => {context.go('/blog')},
                  child: RichText(
                    text: 
              TextSpan(
                children: [
                  TextSpan(text: Config.blogName1, style: textStyle),
                  TextSpan(text: Config.blogName2, style: textStyle),
                ],
              ),
                  ) 
          ),
            ),
          ),
        ));
  }
}
