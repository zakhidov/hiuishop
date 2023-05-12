import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Column()),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img.png")),
              ),
            )
          ],
        ),
      ],
    );
  }
}
