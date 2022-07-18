import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'slide_state.dart';

class SlideCubit extends Cubit<SlideState> {
  SlideCubit() : super(const SlideState()) {
    pageController.addListener(() {
      setCurrenPage(pageController.page!);
    });
  }

  final PageController pageController = PageController();

  setCurrenPage(double currentPage) =>
      emit(state.copyWith(curentePage: currentPage));

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
