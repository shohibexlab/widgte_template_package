export '../redux/app_state.dart';

///----------------- API -----------------

class UpdateApiAction {}

///----------------- API -----------------

class UpdateEditorStateAction {
  bool? editorBoolField;

  UpdateEditorStateAction({this.editorBoolField});
}
