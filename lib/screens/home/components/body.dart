import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:navigation_bar/constance.dart';
import 'package:navigation_bar/screens/home/components/titlewithmore.dart';
import 'Recomends_plant_card.dart';
import 'featured.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size, context),
          TitleWithMore(
            title: "Recomended",
            press: (){},
          ),
           const RecomendPlants(),
          TitleWithMore(title: "Featured Plants", press: (){},),
          const FeaturedPlant(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
  
}





