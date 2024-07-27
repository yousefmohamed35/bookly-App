import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homerepo) : super(SimilarBooksInitial());
  final HomeRepo homerepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homerepo.fetchSimilarBooks(category:category);
    result.fold((failure) {
      emit(
        SimilarBooksFailure(errorMessage: failure.errorMessage),
      );
    }, (books) {
      emit(
        SimilarBooksSuccess(books: books),
      );
    });
  }
}
