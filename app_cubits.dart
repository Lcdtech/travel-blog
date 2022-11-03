import 'package:bloc/bloc.dart';
import 'package:travel_blog/cubit/app_cubit_states.dart';
import 'package:travel_blog/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  final DataServices data;

  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  // ignore: prefer_typing_uninitialized_variables
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
      // ignore: empty_catches
    } catch (e) {}
  }

  detailPage() {
    emit(DetailState());
  }

  goHome() {
    emit(LoadedState(places));
  }

  goWelcome() {
    emit(WelcomeState());
  }
}
