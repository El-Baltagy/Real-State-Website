import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/responsive.dart';
import 'package:real_state/widgets/menu/side_menu.dart';

class HomeSc extends StatelessWidget {
  final Widget mainSection;
  const HomeSc({Key? key, required this.mainSection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:(Responsive.isDesktop(context))?null:
      AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          ),
        )
      ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 1440
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context)) Expanded(
                flex: 2,
                child: SideMenuSection(),
              ),
               const SizedBox(width: kDefaultPadding),
              Expanded(
                flex: 7,
                child: mainSection,
              )
            ],
          ),
        ),
      ),
    );
  }
}
