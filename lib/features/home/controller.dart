import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glovvr/features/component/view.dart';
import 'package:glovvr/features/features_screen/view.dart';
import 'package:glovvr/features/gallery/view.dart';
import 'package:glovvr/features/home/states.dart';
import 'package:glovvr/features/home/units/homescreen.dart';
import 'package:glovvr/features/how%20it%20work/view.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeLayoutLoading());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const ComponentsView(),
    const FeaturesView(),
     HomeScreen(),
    const GalleryView(),
    const HowView(),
  ];

  void changeBottom(int index, context) {
    currentIndex = index;
    if (currentIndex == 3) print('3');
    if (currentIndex == 2) print('2');
    if (currentIndex == 1) print('1');
    if (currentIndex == 4) print('4');
    if (currentIndex == 0) print('0');
    emit(ChangeBottomNavState());
  }
}
