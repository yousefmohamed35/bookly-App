import 'package:booklyapp/Features/home/presentaion/views/widgets/book_raring.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView');
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage('assets/image/sports.png'),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      'Harry Potter land the Globet of fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Opacity(
                    opacity: .5,
                    child: Text(
                      'j.k. Rowling',
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99\$',
                        style: Styles.textStyle20,
                      ),
                      BookRating(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
