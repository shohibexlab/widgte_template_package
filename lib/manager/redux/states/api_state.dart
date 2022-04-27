import 'package:flutter/material.dart';

///
/// ApiState
///
@immutable
class ApiState {
  // final SimpleStoreCashInOutRes simpleStoreCashInOutRes;

  ApiState(
      // required this.simpleStoreCashInOutRes
      );

  factory ApiState.initial() {
    return ApiState(
        // simpleSyncLoginRes: SimpleSyncLoginRes(success: false, message: ""),
        );
  }

  ApiState copyWith(

      // SimpleSyncLoginRes? simpleSyncLoginRes,
      ) {
    return ApiState(
        // simpleSyncLoginRes: simpleSyncLoginRes ?? this.simpleSyncLoginRes,
        );
  }
}
