import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  final int userId;
  final int id;
  final String? title;
  final String? body;

  DataModel({
    required this.id,
    required this.userId,
    this.title,
    this.body,
  });

  Map<String, dynamic> toJson() => _$DataModelToJson(this);

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}
