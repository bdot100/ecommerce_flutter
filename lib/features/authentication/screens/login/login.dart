import 'package:ecommerce_flutter/common/styles/spacing_styles.dart';
import 'package:ecommerce_flutter/common/widgets/login_sign_up/form_divider.dart';
import 'package:ecommerce_flutter/common/widgets/login_sign_up/social_buttons.dart';
import 'package:ecommerce_flutter/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_flutter/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_flutter/utils/constants/sizes.dart';
import 'package:ecommerce_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title, & sub-title
              const TLoginHeader(),
              // Form
              const TLoginForm(),
              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
