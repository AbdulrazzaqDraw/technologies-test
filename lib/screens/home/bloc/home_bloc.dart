import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_data/screens/home/remote/home_remote.dart';

import 'home_state.dart';

part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeBloc({required this.homeRemoteDataSource}) : super(HomeState.initial()) {
    on<GetHome>((event, emit) async {
      emit(state.rebuild((b) => b
        ..isSuccess = false
        ..errorMessage = ""
        ..dataList = []
        ..isLoading = true));
      final result = await homeRemoteDataSource.getHomeApi();

      return result.fold((l) async {
        emit(state.rebuild((b) => b
          ..isLoading = false
          ..isSuccess = false
          ..errorMessage = l));
      }, (r) async {
        emit(state.rebuild((b) => b
          ..isLoading = false
          ..isSuccess = true
          ..dataList = r));
      });
    });
  }

  void onGetHome() {
    add(GetHome());
  }
}
