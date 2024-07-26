import 'package:booklyapp/Features/home/presentaion/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/Features/splash_view/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, inex) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomBookImage(),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CircularProgressIndicator(); // show loading indicator while fetching data
        }
      },
    );
  }
}
