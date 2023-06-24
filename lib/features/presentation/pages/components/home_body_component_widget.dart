import 'package:flutter/material.dart';
import 'package:my_portfolio/core/common_widget/custom_spacer_widget.dart';
import 'package:my_portfolio/core/utils/fonts.dart';

class HomeBodyComponentWidget extends StatelessWidget {
  const HomeBodyComponentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 3,
          child: Text.rich(
            TextSpan(
              text: "I'm ",
              style: AppFonts.regularStyle(
                fontSize: 48,
              ),
              children: [
                TextSpan(
                  text: "Ravi Ranjan Kumar",
                  style: AppFonts.boldStyle(
                    fontSize: 48,
                  ),
                ),
                TextSpan(
                  text:
                      "\nTeam Lead, Android, Flutter, React-Native Developer and\na Learner",
                  style: AppFonts.regularStyle(
                    fontSize: 34,
                  ),
                )
              ],
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Theme.of(context).colorScheme.secondary.withOpacity(.05),
            child: Image.network(
              "https://picsum.photos/350/350",
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
