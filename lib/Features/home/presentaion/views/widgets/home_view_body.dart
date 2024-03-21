import 'package:booklyapp/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/splash_view/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/Features/splash_view/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeatureBooksListView(),
      ],
    );
  }
}