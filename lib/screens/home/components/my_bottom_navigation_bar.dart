import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constance.dart';


class mainBottomNavigation extends StatelessWidget {
  const mainBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(
                    0, -10
                ),
                blurRadius: 35,
                color: kPrimaryColor.withOpacity(0.25)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/user-icon.svg")),
        ],
      ),
    );
  }
}

