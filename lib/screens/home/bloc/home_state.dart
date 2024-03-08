// ignore_for_file: depend_on_referenced_packages

import 'package:built_value/built_value.dart';
import 'package:test_data/screens/home/model/data_model.dart';

part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  bool get isSuccess;

  bool get isLoading;

  String get errorMessage;

  List<DataModel> get dataList;

  HomeState._();

  factory HomeState([Function(HomeStateBuilder b) updates]) = _$HomeState;

  factory HomeState.initial() {
    return HomeState((b) => b
      ..isLoading = false
      ..isSuccess = false
      ..errorMessage = ""
      ..dataList = []);
  }
}
