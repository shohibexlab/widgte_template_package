import 'package:dio/dio.dart';
import 'package:redux/redux.dart';
import 'package:widgte_template/manager/redux/app_state.dart';

class ApiMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    // ALWAYS GO BY ORDER switch case -> top to bottom
    //                      functions -> top to bottom
    switch (action.runtimeType) {
      // case GetSyncLoginAction:
      //   return _getSyncLoginAction(store.state, action, next);
      default:
        return next(action);
    }
  }
}

///////////////////////DO NOT DECLARE FUNCTIONS BEFORE THIS LINE//////////////////////////

///////////////////////DO NOT WRITE CODE AFTER THIS LINE//////////////////////////
