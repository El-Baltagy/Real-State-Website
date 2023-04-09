import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Adress',text: 'Station Street',),
        buildContactInfo(title: 'Country',text: 'Germany',),
        buildContactInfo(title: 'Email',text: 'email@website.com',),
        buildContactInfo(title: 'Mobile',text: '+43 123 589 657',),
        buildContactInfo(title: 'WebSite',text: 'Station Street',),
      ],
    );
  }

  Widget buildContactInfo({
  required String title,
  required String text,
}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white
              ),
            ),
            Text(
              text,
            ),
          ],
        ),
      );
  }
}
