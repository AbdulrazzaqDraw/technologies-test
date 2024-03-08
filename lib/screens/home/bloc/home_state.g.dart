// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final bool isSuccess;
  @override
  final bool isLoading;
  @override
  final String errorMessage;
  @override
  final List<DataModel> dataList;

  factory _$HomeState([void Function(HomeStateBuilder)? updates]) =>
      (new HomeStateBuilder()..update(updates))._build();

  _$HomeState._(
      {required this.isSuccess,
      required this.isLoading,
      required this.errorMessage,
      required this.dataList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isSuccess, r'HomeState', 'isSuccess');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'HomeState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        errorMessage, r'HomeState', 'errorMessage');
    BuiltValueNullFieldError.checkNotNull(dataList, r'HomeState', 'dataList');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        isSuccess == other.isSuccess &&
        isLoading == other.isLoading &&
        errorMessage == other.errorMessage &&
        dataList == other.dataList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isSuccess.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, dataList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeState')
          ..add('isSuccess', isSuccess)
          ..add('isLoading', isLoading)
          ..add('errorMessage', errorMessage)
          ..add('dataList', dataList))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState? _$v;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  List<DataModel>? _dataList;
  List<DataModel>? get dataList => _$this._dataList;
  set dataList(List<DataModel>? dataList) => _$this._dataList = dataList;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSuccess = $v.isSuccess;
      _isLoading = $v.isLoading;
      _errorMessage = $v.errorMessage;
      _dataList = $v.dataList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeState build() => _build();

  _$HomeState _build() {
    final _$result = _$v ??
        new _$HomeState._(
            isSuccess: BuiltValueNullFieldError.checkNotNull(
                isSuccess, r'HomeState', 'isSuccess'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'HomeState', 'isLoading'),
            errorMessage: BuiltValueNullFieldError.checkNotNull(
                errorMessage, r'HomeState', 'errorMessage'),
            dataList: BuiltValueNullFieldError.checkNotNull(
                dataList, r'HomeState', 'dataList'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
