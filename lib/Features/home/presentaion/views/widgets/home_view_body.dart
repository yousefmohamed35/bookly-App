import 'package:booklyapp/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/splash_view/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/Features/splash_view/presentation/views/widgets/feature_books_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 16),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(height: 50,),
          Text('Best Sellers',style: Styles.titleMedium,),
        ],
      ),
    );
  }
}