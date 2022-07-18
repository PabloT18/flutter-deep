part of 'slide_cubit.dart';

class SlideState extends Equatable {
  const SlideState({
    this.curentePage = 0,
  });

  final double curentePage;

  SlideState copyWith({
    double? curentePage,
  }) =>
      SlideState(curentePage: curentePage ?? this.curentePage);

  @override
  List<Object> get props => [curentePage];
}

class SlideInitial extends SlideState {}
