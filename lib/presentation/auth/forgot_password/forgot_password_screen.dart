import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_button.dart';
import '../../../common_widgets/common_text_form_field.dart';
import '../../../utils/extensions.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Hero(
                  tag: 'forgot_password',
                  child: Text(
                    'forgot_password'.tr,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
              8.height,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'please_enter_your_email_address_to_request_a_password_reset'.tr,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.start,
                ),
              ),
              16.height,
              CommonTextFormField(
                hintText: 'dummy_email'.tr,
                // controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                prefixIcon: SvgPicture.asset(
                  'assets/svgs/icon_email.svg',
                  fit: BoxFit.none,
                ),
              ),
              16.height,
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0),
                child: SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      'send'.tr,
                      onPressed: () {},
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
