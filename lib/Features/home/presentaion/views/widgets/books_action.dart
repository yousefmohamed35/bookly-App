import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/utils/functions/launch_url.dart';
import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                launchCustomUrl(book.volumeInfo.previewLink!, context);
              },
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              text: getText(book),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return 'Not available';
    } else {
      return 'Preview';
    }
  }
}
