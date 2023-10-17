import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/extensions.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, this.icon, this.title});
  final String? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: () {},
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).dividerTheme.color!,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon ?? '',
              fit: BoxFit.contain,
              width: 24,
              height: 24,
            ),
            10.width,
            Text(
              title ?? '',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
