import 'package:flutter/foundation.dart';

@immutable
class EditorState {
  final bool editorBoolField;

  EditorState({required this.editorBoolField});

  factory EditorState.initial() {
    return EditorState(editorBoolField: false);
  }

  EditorState copyWith({bool? editorBoolField}) {
    return EditorState(
        editorBoolField: editorBoolField ?? this.editorBoolField);
  }
}
