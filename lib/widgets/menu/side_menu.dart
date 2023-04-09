import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/widgets/menu/contact.dart';
import 'package:real_state/widgets/menu/goals.dart';
import 'package:real_state/widgets/menu/logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: SafeArea(
       child: Column(
         children: [
           Logo(),
           Expanded(
               child:SingleChildScrollView(
                 padding: EdgeInsets.all(kDefaultPadding),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     ContactInfo(),
                     Divider(),
                     Goals(),
                     Divider(),
                     // const SizedBox(
                     //   height: kDefaultPadding,
                     // ),
                     Padding(
                       padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                       child: TextButton(
                           onPressed: (){},
                           child:Row(
                             children: [
                               SvgPicture.asset(
                                 'assets/icons/download.svg'
                               ),
                               const SizedBox(
                                 width: kDefaultPadding/2,
                               ),
                               Text(
                              'Download Brochoure',
                              style:TextStyle(
                                color: Theme.of(context).textTheme.bodyText1!.color
                              ) ,
                               ),
                             ],
                           )
                       ),
                     ),
                     Divider(),
                     Container(
                       padding: EdgeInsets.only(top: kDefaultPadding),
                       // margin: EdgeInsets.only(top: kDefaultPadding*1.25),
                       child: Row(
                         children: [
                           Spacer(),
                           IconButton(
                               onPressed: (){},
                               icon: SvgPicture.asset(
                                   'assets/icons/linkedin.svg'
                               ), ),
                           IconButton(
                               onPressed: (){},
                               icon: SvgPicture.asset(
                                   'assets/icons/github.svg'
                               ), ),
                           IconButton(
                               onPressed: (){},
                               icon: SvgPicture.asset(
                                   'assets/icons/twitter.svg'
                               ), ),
                           IconButton(
                               onPressed: (){},
                               icon: SvgPicture.asset(
                                   'assets/icons/dribble.svg'
                               ), ),
                           Spacer(),
                         ],
                       ),
                     )
                   ],
                 ),

               )
           )
         ],
       ),
     ),
    );
  }
}


// Container(
//   // color: kSecondaryColor,
//   // margin: EdgeInsets.only(top: kDefaultPadding*1.5),
//   child: Text(
//     'Find Us On',
//     style: Theme.of(context).textTheme.subtitle2,
//   ),
// ),