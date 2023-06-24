import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/core/common_widget/custom_spacer_widget.dart';
import 'package:my_portfolio/core/utils/app_colors.dart';
import 'package:my_portfolio/core/utils/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfoComponentWidget extends StatefulWidget {
  const ContactInfoComponentWidget({Key? key}) : super(key: key);

  @override
  State<ContactInfoComponentWidget> createState() =>
      _ContactInfoComponentWidgetState();
}

class _ContactInfoComponentWidgetState
    extends State<ContactInfoComponentWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: _getSocialMediaInfoAndLinks(),
        ),
        _emailMeOn(),
      ],
    );
  }

  _getSocialMediaInfoAndLinks() {
    return Row(
      children: [
        _getSocialMediaIcons(
          FontAwesomeIcons.linkedinIn,
          callBack: () =>
              _handleUrlLauncher(url: "https://github.com/ravivr-dev"),
        ),
        const CustomSpacerWidget(
          width: 10,
        ),
        _getSocialMediaIcons(
          FontAwesomeIcons.github,
          callBack: () =>
              _handleUrlLauncher(url: "https://github.com/ravivr-dev"),
        ),
        const CustomSpacerWidget(
          width: 10,
        ),
        _getSocialMediaIcons(
          FontAwesomeIcons.instagram,
          callBack: () =>
              _handleUrlLauncher(url: "https://github.com/ravivr-dev"),
        ),
        const CustomSpacerWidget(
          width: 10,
        ),
        _getSocialMediaIcons(
          FontAwesomeIcons.facebook,
          callBack: () =>
              _handleUrlLauncher(url: "https://github.com/ravivr-dev"),
        ),
        const CustomSpacerWidget(
          width: 10,
        ),
        _getSocialMediaIcons(
          FontAwesomeIcons.twitter,
          callBack: () =>
              _handleUrlLauncher(url: "https://github.com/ravivr-dev"),
        ),
      ],
    );
  }

  _getSocialMediaIcons(IconData iconsData, {required final Function callBack}) {
    return Material(
      color: AppColors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () => callBack(),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: FaIcon(
            iconsData,
            size: 30,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }

  _emailMeOn() {
    return Flexible(
      child: InkWell(
        onTap: () => _sendEmail(),
        child: Text(
          "ravi@ailoitte.com",
          style: AppFonts.regularStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  _handleUrlLauncher({required final String url}) async {
    final parsedUrl = Uri.tryParse(url);

    if (parsedUrl != null && !await launchUrl(parsedUrl)) {
      throw Exception('Could not launch $parsedUrl');
    }
  }

  _sendEmail() {
    /// Send Email
  }
}
