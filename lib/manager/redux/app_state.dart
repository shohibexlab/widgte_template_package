import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:widgte_template/manager/redux/middleware/api_middeware.dart';
import 'package:widgte_template/manager/redux/reducer.dart';
import 'package:widgte_template/manager/redux/states/api_state.dart';
import 'package:widgte_template/manager/redux/states/editor_state.dart';

final appStore = Store<AppState>(
  appReducer,
  initialState: AppState.initial(),
  middleware: [
    ApiMiddleware(),
  ],
);

@immutable
class AppState {
  final ApiState apiState;
  final EditorState editorState;
  AppState({
    required this.apiState,
    required this.editorState,
  });

  factory AppState.initial() {
    return AppState(
      apiState: ApiState.initial(),
      editorState: EditorState.initial(),
    );
  }

  AppState copyWith({
    ApiState? apiState,
    EditorState? editorState,
  }) {
    return AppState(
      apiState: apiState ?? this.apiState,
      editorState: editorState ?? this.editorState,
    );
  }
}
