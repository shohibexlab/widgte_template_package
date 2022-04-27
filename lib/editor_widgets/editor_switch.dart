// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:widgte_template/manager/redux/action.dart';
// import 'package:yollet_system/yollet_theme.dart';
//
// class EditorSwitch extends StatelessWidget {
//   const EditorSwitch({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, AppState>(
//         converter: (store) => store.state,
//         builder: (context, vm) => Switch(
//               value: vm.editorState.editorBoolField,
//               onChanged: (value) => appStore
//                   .dispatch(UpdateEditorStateAction(editorBoolField: value)),
//             ));
//   }
// }
