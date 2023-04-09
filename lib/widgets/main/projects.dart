import 'dart:html';

import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/models/project_data.dart';
import 'package:real_state/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          desktop: buildGridView(crossAxisCount: 3, childAspectRatio: 0.7,
              itemCount:demoProjects.length,
              itemBuilder: (context, index) => Card(project: demoProjects[index],)
          ),
          mobile: buildGridView(crossAxisCount: 1, childAspectRatio: 0.7,
              itemCount:demoProjects.length,
              itemBuilder: (context, index) => Card(project: demoProjects[index],)
          ), mobileLarge: buildGridView(crossAxisCount: 2, childAspectRatio: 0.7,
            itemCount:demoProjects.length,
            itemBuilder: (context, index) => Card(project: demoProjects[index],)
        ),
          tablet: buildGridView(itemCount:demoProjects.length, childAspectRatio: 0.7,
           crossAxisCount: MediaQuery.of(context).size.width<900?2:3,
          itemBuilder: (context, index) => Card(project: demoProjects[index],)
         ),
        )
      ],
    );
  }

  GridView buildGridView({
  required int itemCount,
  required int crossAxisCount,
  required double childAspectRatio,
  required IndexedWidgetBuilder itemBuilder,
}) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder:itemBuilder,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: childAspectRatio,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing:kDefaultPadding )
      );
  }
}



class Card extends StatelessWidget {
  const Card({
    Key? key, required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              project.description!,
              overflow: TextOverflow.ellipsis,
              maxLines: 6,
              style: TextStyle(
                height: 1.5
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding*0.75,
          ),
          TextButton(onPressed: (){},
              child:Text(
                'More Info >',
                style: TextStyle(
                    color: kPrimaryColor
                ),
              ),
          ),
        ],
      ),
    );
  }
}
