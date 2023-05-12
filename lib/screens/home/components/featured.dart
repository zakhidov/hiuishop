import 'package:flutter/material.dart';

import '../../../constance.dart';


class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantsCard(
            image: "assets/images/bottom_img_1.png",
            press: (){},
          ),
          FeaturedPlantsCard(
            image: "assets/images/bottom_img_2.png",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantsCard extends StatelessWidget {
  const FeaturedPlantsCard({
    super.key, required this.image, required this.press,
  });

  final String image;
  final Function press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: const EdgeInsets.only(left: kDefaultPadding, bottom: kDefaultPadding / 2, top: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )
        ),
      ),
    );
  }
}
