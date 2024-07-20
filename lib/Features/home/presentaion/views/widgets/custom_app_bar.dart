import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 32),
        child: Row(
          children: [
            Image.asset(
              AssetsDate.logoImage,
              height: 24,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
