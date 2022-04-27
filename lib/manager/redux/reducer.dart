import 'package:redux/redux.dart';
import 'package:widgte_template/manager/redux/action.dart';
import 'package:widgte_template/manager/redux/states/api_state.dart';
import 'dart:developer' as developer;

import 'package:widgte_template/manager/redux/states/editor_state.dart';

AppState appReducer(AppState state, dynamic action) {
  var newState = state.copyWith(
    apiState: _apiReducer(state.apiState, action),
    editorState: _editorReducer(state.editorState, action),
  );

  return newState;
}

///
/// API Reducer
///
final _apiReducer = combineReducers<ApiState>([
  TypedReducer<ApiState, UpdateApiAction>(_updateApiAction),
]);

ApiState _updateApiAction(ApiState state, UpdateApiAction action) {
  return state.copyWith();
}

///
/// Editor Reducer
///

final _editorReducer = combineReducers<EditorState>(
    [TypedReducer<EditorState, UpdateEditorStateAction>(_updateEditorAction)]);

EditorState _updateEditorAction(
    EditorState state, UpdateEditorStateAction action) {
  return state.copyWith(
      editorBoolField: action.editorBoolField ?? state.editorBoolField);
}
