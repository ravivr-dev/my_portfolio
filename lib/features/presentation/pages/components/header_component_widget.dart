import 'package:flutter/material.dart';
import 'package:my_portfolio/core/common_widget/custom_spacer_widget.dart';
import 'package:my_portfolio/core/utils/app_colors.dart';
import 'package:my_portfolio/core/utils/fonts.dart';

class HeaderComponentWidget extends StatelessWidget {
  const HeaderComponentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _getMyLogo(),
        Expanded(child: Container()),
        _getHomeMenuItems(
          title: "Home",
        ),
        const CustomSpacerWidget(
          width: 40,
        ),
        _getHomeMenuItems(
          title: "Services",
        ),
        const CustomSpacerWidget(
          width: 40,
        ),
        _getHomeMenuItems(
          title: "Skills",
        ),
        const CustomSpacerWidget(
          width: 40,
        ),
        _getHomeMenuItems(
          title: "Experience",
        ),
        const CustomSpacerWidget(
          width: 40,
        ),
        _getHomeMenuItems(
          title: "Contact",
        ),
      ],
    );
  }

  _getMyLogo() {
    return const SizedBox(height: 50, width: 150, child: Placeholder());
  }

  _getHomeMenuItems({
    required final String title,
  }) {
    return Material(
      elevation: 0,
      color: AppColors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
          child: Text(
            title,
            style: AppFonts.regularStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
