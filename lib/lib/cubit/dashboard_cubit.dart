
import 'package:class_assignment2/lib/cubit/bmi_calculator_cubit.dart';
import 'package:class_assignment2/lib/cubit/circle_area_cubit.dart';
import 'package:class_assignment2/lib/cubit/simple_interest_cubit.dart';
import 'package:class_assignment2/lib/view/bmi_calculator_view.dart';
import 'package:class_assignment2/lib/view/circle_area_view.dart';
import 'package:class_assignment2/lib/view/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(this._bmiCubit,
      this._circleAreaCubit,
      this._simpleInterestCubit,) : super(null);

  final BMICubit _bmiCubit;
  final CircleAreaCubit _circleAreaCubit;
  final SimpleInterestCubit _simpleInterestCubit;


  void openBMICalculatorView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            BlocProvider.value(
              value: _bmiCubit,
              child: const BMIView(),
            ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            BlocProvider.value(
              value: _simpleInterestCubit,
              child: const SimpleInterestView(),
            ),
      ),
    );
  }

  void openCircleAreaView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            BlocProvider.value(
              value: _circleAreaCubit,
              child: const CircleAreaView(),
            ),
      ),
    );
  }
}