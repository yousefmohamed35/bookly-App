import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6/4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              
                image: const DecorationImage(
                  image: AssetImage('assets/image/sports.png'),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
