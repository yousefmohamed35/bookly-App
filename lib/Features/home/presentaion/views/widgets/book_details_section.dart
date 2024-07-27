import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/book_raring.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/books_action.dart';
import 'package:booklyapp/Features/splash_view/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 2,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
         BooksAction(book: book,),
      ],
    );
  }
}
