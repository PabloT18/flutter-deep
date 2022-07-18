import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deep/app/app.dart' show AppTheme;

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.light);

  void toggleTheme() {
    print(state.brightness == Brightness.dark);
    emit(state.brightness == Brightness.light ? AppTheme.dark : AppTheme.light);
  }
}
