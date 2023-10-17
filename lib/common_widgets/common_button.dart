import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(this.title, {super.key, this.onPressed});

  final String? title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).splashColor),
        textStyle: MaterialStateProperty.all(
            Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0)),
        elevation: MaterialStateProperty.all(1),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
      child: Text(
        title ?? '',
      ),
    );
  }
}
