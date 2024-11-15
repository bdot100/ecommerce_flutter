import 'package:ecommerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_flutter/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_flutter/common/widgets/text/section_heading.dart';
import 'package:ecommerce_flutter/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce_flutter/utils/constants/image_strings.dart';
import 'package:ecommerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Beedem Coder',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'Beedem',
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '11223',
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'beedem@gmail.com',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+234 809 20579 59',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'male',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '29 Oct, 1995',
              ),

              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
