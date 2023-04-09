import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding*3),
      child:Responsive.isMobileLarge(context)?
       Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildIconsInfo(
                      context:context,text:'65+' ,label:'Clients',
                      iconData: Icons.supervisor_account),
                  buildIconsInfo(
                      context:context,text:'139+' ,label:'Projects',
                      iconData: Icons.location_on),
                ],
              ),
              const SizedBox(
                height: kDefaultPadding*3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildIconsInfo(
                      context:context,text:'38+' ,label:'Countries',
                      iconData: Icons.public),
                  buildIconsInfo(
                      context:context,text:'13K+' ,label:'Stars',
                      iconData: Icons.stars),
                ],
              ),
            ],
          ):
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconsInfo(
              context:context,text:'65+' ,label:'Clients',
              iconData: Icons.supervisor_account),
          buildIconsInfo(
              context:context,text:'139+' ,label:'Projects',
              iconData: Icons.location_on),
          buildIconsInfo(
              context:context,text:'38+' ,label:'Countries',
              iconData: Icons.public),
          buildIconsInfo(
              context:context,text:'13K+' ,label:'Stars',
              iconData: Icons.stars),
        ],
      ),
    );
  }

  Column buildIconsInfo({
  required BuildContext context,
    required IconData iconData,
    required String text,
    required String label,
}) {
    return Column(
        children: [
          Icon(
            iconData ,size: kDefaultPadding*2.5,
          ),
          const SizedBox(
            height: kDefaultPadding/2,
          ),
          Text(
            text ,
            style: Theme.of(context).textTheme.headline6!.copyWith(
              color: kPrimaryColor,fontSize: 30
            ),
          ),
          Text(
            label ,
            style: Theme.of(context).textTheme.subtitle2
          ),

        ],
      );
  }
}
