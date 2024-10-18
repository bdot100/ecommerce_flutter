import 'package:ecommerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_flutter/common/widgets/products/cart/coupon_widget.dart';
import 'package:ecommerce_flutter/common/widgets/products/t_rounded_container.dart';
import 'package:ecommerce_flutter/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_flutter/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce_flutter/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_flutter/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_flutter/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_flutter/navigation_menu.dart';
import 'package:ecommerce_flutter/utils/constants/colors.dart';
import 'package:ecommerce_flutter/utils/constants/image_strings.dart';
import 'package:ecommerce_flutter/utils/constants/sizes.dart';
import 'package:ecommerce_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //items in cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //coupon textfield
              const TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //billing section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    //pricing
                    TBillingAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    //divider
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    //payment method
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    //address
                    TBillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Sucess!',
                  subTitle: 'Your Item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
