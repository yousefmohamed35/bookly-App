import 'package:booklyapp/Features/home/presentaion/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/book_list_view_item.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    book: state.books[index],
                  ),
                );
              });
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
