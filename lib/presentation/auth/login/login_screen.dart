import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_button.dart';
import '../../../common_widgets/common_text_form_field.dart';
import '../../../common_widgets/social_button.dart';
import '../../../utils/extensions.dart';
import '../../../utils/theme/theme_controller.dart';
import '../forgot_password/forgot_password_screen.dart';
import '../register/register_screen.dart';
import 'controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginController = Get.put(LoginController());
  ThemeController themeController = Get.find();

  @override
  void dispose() {
    Get.delete<LoginController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              kToolbarHeight.height,
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      themeController.darkTheme.value
                          ? 'assets/images/logo_dark.png'
                          : 'assets/images/logo.png',
                      width: 80,
                      height: 80,
                    ),
                    Text(
                      'app_name'.tr.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 40),
                    ),
                  ],
                ),
              ),
              Text(
                'welcome_back'.tr.toUpperCase(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              8.height,
              Text(
                'use_credentials_to_access_your_account'.tr,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              12.height,
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
                  obscureText: loginController.obscureText.value,
                  prefixIcon: SvgPicture.asset(
                    'assets/svgs/icon_password.svg',
                    fit: BoxFit.none,
                  ),
                  suffixIcon: IconButton(
                    splashRadius: 4,
                    tooltip: loginController.obscureText.value
                        ? 'show_password'.tr
                        : 'hide_password'.tr,
                    onPressed: () {
                      loginController
                          .obscureText(!loginController.obscureText.value);
                    },
                    icon: Icon(
                      loginController.obscureText.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      // fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
              16.height,
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  radius: 20.0,
                  borderRadius: BorderRadius.circular(10.0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen()),
                    );
                  },
                  child: Hero(
                    tag: 'forgot_password',
                    child: Text(
                      'forgot_password_'.tr,
                      style: Theme.of(context).textTheme.bodyMedium,
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
                    child: Hero(
                      tag: 'button',
                      child: CommonButton(
                        'login'.tr,
                        onPressed: () {},
                      ),
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
                    'don_t_have_an_account'.tr,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  InkWell(
                    radius: 10.0,
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      );
                    },
                    child: Hero(
                      tag: 'signup',
                      child: Text(
                        'signup'.tr,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
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
