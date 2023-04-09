import 'package:flutter/material.dart';
import 'package:real_state/screens/home_screen.dart';
import 'package:real_state/widgets/main/home_banner.dart';
import 'package:real_state/widgets/main/icon_info.dart';
import 'package:real_state/widgets/main/projects.dart';
import 'package:real_state/widgets/main/recommendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeSc(
        mainSection: SingleChildScrollView(
          child: Column(
        children: const [
          HomeBanner(),
          IconInfo(),
          Projects(),
          Recommendations(),
        ],
      ),
    ));
  }
}
