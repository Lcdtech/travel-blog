import 'package:equatable/equatable.dart';
import 'package:travel_blog/models/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  final List<DataModel> places;
  LoadedState(this.places);
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [];
}
