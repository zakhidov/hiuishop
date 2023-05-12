import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constance.dart';

Container HeaderWithSearchBox(Size size, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: kDefaultPadding),
    height: size.height * 0.2,
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20,bottom: 50),
          height: size.height * 0.2 - 27,
          decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )
          ),
          child: Row(
            children: [
              Text("Hi UiShopy!",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Spacer(),
              Image.asset("assets/images/logo.png")
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)
                    )
                  ]
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.50),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      onChanged: (value){},
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg")
                ],
              ),
            )
        )
      ],
    ),
  );
}