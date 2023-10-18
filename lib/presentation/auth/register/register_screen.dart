import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_button.dart';
import '../../../common_widgets/common_text_form_field.dart';
import '../../../common_widgets/social_button.dart';
import '../../../utils/extensions.dart';
import '../verification/verification_screen.dart';
import 'controller/register_controller.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final registerController = Get.put(RegisterController());

  @override
  void dispose() {
    Get.delete<RegisterController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Hero(
                  tag: 'signup',
                  child: Text(
                    'sign_up'.tr,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
              20.height,
              CommonTextFormField(
                hintText: 'username'.tr,
                // controller: TextEditingController(),
                textInputAction: TextInputAction.next,
                prefixIcon: SvgPicture.asset(
                  'assets/svgs/icon_username.svg',
                  fit: BoxFit.none,
                ),
              ),
              16.height,
              CommonTextFormField(
                hintText: 'dummy_email'.tr,
                // controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                prefixIcon: SvgPicture.asset(
                  'assets/svgs/icon_email.svg',
                  fit: BoxFit.none,
                ),
              ),
              16.height,
              Obx(
                () => CommonTextFormField(
                  hintText: 'enter_password'.tr,
                  // controller: TextEditingController(),
                  obscureText: registerController.obscureText.value,
                  prefixIcon: SvgPicture.asset(
                    'assets/svgs/icon_password.svg',
                    fit: BoxFit.none,
                  ),
                  suffixIcon: IconButton(
                    splashRadius: 4,
                    tooltip: registerController.obscureText.value
                        ? 'show_password'.tr
                        : 'hide_password'.tr,
                    onPressed: () {
                      registerController
                          .obscureText(!registerController.obscureText.value);
                    },
                    icon: Icon(
                      registerController.obscureText.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      // fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
              16.height,
              Obx(
                () => CommonTextFormField(
                  hintText: 'confirm_password'.tr,
                  // controller: TextEditingController(),
                  obscureText: registerController.obscureText.value,
                  prefixIcon: SvgPicture.asset(
                    'assets/svgs/icon_password.svg',
                    fit: BoxFit.none,
                  ),
                  suffixIcon: IconButton(
                    splashRadius: 4,
                    tooltip: registerController.obscureText.value
                        ? 'show_password'.tr
                        : 'hide_password'.tr,
                    onPressed: () {
                      registerController
                          .obscureText(!registerController.obscureText.value);
                    },
                    icon: Icon(
                      registerController.obscureText.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      // fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
              16.height,
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 36.0, vertical: 12.0),
                child: SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      'sign_up'.tr,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerificationScreen()),
                        );
                      },
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: Divider()),
                  10.width,
                  Text(
                    'or'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Theme.of(context).dividerColor),
                  ),
                  10.width,
                  const Expanded(child: Divider()),
                ],
              ),
              16.height,
              SocialButton(
                title: 'login_with_facebook'.tr,
                icon: 'assets/svgs/icon_facebook.svg',
              ),
              10.height,
              SocialButton(
                title: 'login_with_google'.tr,
                icon: 'assets/svgs/icon_google.svg',
              ),
              16.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already_have_an_account'.tr,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  InkWell(
                    radius: 10.0,
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'login'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ],
              ),
              16.height,
            ],
          ),
        ),
      ),
    );
  }
}
