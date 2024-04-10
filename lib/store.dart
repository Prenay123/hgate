import 'package:redux/redux.dart';
import 'package:hgate/models/app_state.dart';
import 'package:hgate/reducers/app_reducer.dart';
import 'package:redux_thunk/redux_thunk.dart';

Store<AppState> createStore() {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [thunkMiddleware],
  );
}
