import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: Responsive.isMobile(context)?1:1.7,
      child: Material(
        elevation: kDefaultPadding,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Build a great future \nFor all of Us',
                    style:Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold):
                    Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold)
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal:kDefaultPadding*2 ,vertical: kDefaultPadding
                      ),
                      backgroundColor: kPrimaryColor
                    ),
                    onPressed: (){},
                      child: Text(
                        'Contact US',
                        style: TextStyle(
                          color: kDarkColor,
                        ),
                      ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
