import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homerepo) : super(NewsetBooksInitial());
  final HomeRepo homerepo;
  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoadind());
    var result = await homerepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(
        NewsetBooksFailure(errorMessage: failure.errorMessage),
      );
    }, (books) {
      emit(
        NewsetBooksSuccess(books: books),
      );
    });
  }
}
