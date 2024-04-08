import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'investments.freezed.dart';

@freezed
class Investments with _$Investments{

  const factory Investments({
    required String title,
    required String returns,
    required String banner,
  }) = _Investments;

  
}