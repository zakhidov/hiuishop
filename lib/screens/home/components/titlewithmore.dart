import 'package:flutter/material.dart';
import '../../../constance.dart';
import 'body.dart';
import 'customwithunderline.dart';

class TitleWithMore extends StatelessWidget {
  const TitleWithMore({Key? key, required this.title, required this.press}) : super(key: key);
  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          CustomWithUnderline(text: title),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              backgroundColor: kPrimaryColor,
            ),
            onPressed: press,
            child: const Text("More", style: TextStyle(color: Colors.white),),

          )
        ],
      ),
    );
  }
}