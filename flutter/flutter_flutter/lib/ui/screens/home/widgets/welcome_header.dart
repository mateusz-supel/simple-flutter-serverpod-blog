import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText.rich(TextSpan(children: [
          TextSpan(
              text: "Dev stories \n",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w700)),
          TextSpan(
              text: "how to build a blog \n",
              style: Theme.of(context).textTheme.displayMedium),
          TextSpan(
              text: "how to test a blog",
              style: Theme.of(context).textTheme.displayMedium),
        ])),
      ],
    );
  }
}
