import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle2,
          ),

        ),
        buildGoals(text: 'Planning Statge'),
        buildGoals(text: 'Development'),
        buildGoals(text: 'Execution phase'),
        buildGoals(text: 'New way to live'),
      ],
    );
  }

  Padding buildGoals({
  required String text,
}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/check.svg'
            ),
            const SizedBox(
              width: kDefaultPadding/2,
            ),
            Text(
                text
            ),
          ],
        ),
      );
  }
}
