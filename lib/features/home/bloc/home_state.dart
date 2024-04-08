import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  HomeState({
   this.tabIndex = 0,
    this.hideToDo = false,
  });

  final int tabIndex;
  final bool hideToDo;

  @override
  // TODO: implement props
  List<Object?> get props => [
    tabIndex,
    hideToDo
  ];
}
