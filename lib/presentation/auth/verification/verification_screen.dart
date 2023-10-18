import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../common_widgets/common_button.dart';
import '../../../utils/extensions.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pinController = TextEditingController();

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
                child: Text(
                  'verification'.tr,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              8.height,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${'we_have_send_you_the_verification_code_on'.tr} ${'dummy_email'.tr}',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.start,
                ),
              ),
              16.height,
              Pinput(
                controller: pinController,
                // androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                // listenForMultipleSmsOnAndroid: true,
                defaultPinTheme: PinTheme(
                  width: 55,
                  height: 55,
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Theme.of(context).dividerColor),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 55,
                  height: 55,
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Theme.of(context).splashColor),
                  ),
                ),
                separatorBuilder: (index) => 12.width,
                onCompleted: (pin) {
                  debugPrint('onCompleted: $pin');
                },
              ),
              16.height,
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0),
                child: SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      'continue'.tr,
                      onPressed: () {},
                    )),
              ),

              InkWell(
                radius: 20.0,
                borderRadius: BorderRadius.circular(10.0),
                onTap: () {},
                child: Text(
                  're_send_code'.tr,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
