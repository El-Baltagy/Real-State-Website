import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/models/recomendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kDefaultPadding*1.5,
          ),
          Text(
            'Client Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: kDefaultPadding*0.75,
          ),
          // SingleChildScrollView(
          //
          //   child: Row(
          //     children: [
          //       ListView(
          //         scrollDirection: Axis.horizontal,
          //         shrinkWrap: true,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(right: kDefaultPadding),
          //             child: RecomCard(
          //               recommendation: demoRecommendations[0],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                List.generate(demoRecommendations.length,
                growable: true,
                 (index) => Padding(
                   padding: const EdgeInsets.only(right: kDefaultPadding),
                   child: RecomCard(
                     recommendation: demoRecommendations[index],
                   ),
                 ),
                ),
            ),
          )
        ],
      ),
    );
  }
}

class RecomCard extends StatelessWidget {
  const RecomCard({
    Key? key, required this.recommendation,
  }) : super(key: key);
final Recommendation recommendation;

@override
  Widget build(BuildContext context) {
    return Container(
      width: 400,color: kSecondaryColor,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  recommendation.image!
              ),
            ),
            title: Text(
              recommendation.text!,
              maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:Theme.of(context).textTheme.subtitle2 ,
          ),
          subtitle: Text(
            recommendation.source!,
                 style:Theme.of(context).textTheme.bodyText1,),
          ),
        const SizedBox(
          height: kDefaultPadding/2,),
        Text(
          recommendation.text!,
          maxLines: 4,
          style: const TextStyle(height: 1.5),
          overflow: TextOverflow.ellipsis,

        )
        ]
      ),
    );
  }
}
