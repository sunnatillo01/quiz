import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bottom_nav_bar/bottom_navigation_bar_bloc.dart';
import '../../constants/app_icons.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarBloc, int>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state,
          unselectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 14),
          selectedLabelStyle: const TextStyle(color: Color(0xff1B56A2)),
          fixedColor: const Color(0xff1B56A2),
          items: List.generate(3, (index) => _setItem(index)),
          onTap: (i) {
            BottomNavigationBarBloc barBloc = BlocProvider.of(context);
            barBloc.add(BottomBarChanged(i));
          },
        );
      },
    );
  }

  BottomNavigationBarItem _setItem(int index) => BottomNavigationBarItem(
        icon: Icon(
          _getIcon(index),
          color: Color(0xff1B56A2),
        ),
        label: _getLabel(index),
      );

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return AppIcons.home;
      case 1:
        return AppIcons.box;

      default:
        return AppIcons.profile;
    }
  }

  String _getLabel(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Service';

      default:
        return 'Profile';
    }
  }

  Radius _setRadius({double radius = 12.0}) => Radius.circular(radius);
}
