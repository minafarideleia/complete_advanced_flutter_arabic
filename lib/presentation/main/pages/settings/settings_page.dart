import 'package:advanced_flutter_arabic/presentation/resources/assets_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/strings_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(AppPadding.p8),
        children: [
          ListTile(
            leading: SvgPicture.asset(ImageAssets.changeLangIc),
            title: Text(AppStrings.changeLanguage,
                style: Theme.of(context).textTheme.bodyLarge),
            trailing: SvgPicture.asset(ImageAssets.rightArrowSettingsIc),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(ImageAssets.contactUsIc),
            title: Text(AppStrings.contactUs,
                style: Theme.of(context).textTheme.bodyLarge),
            trailing: SvgPicture.asset(ImageAssets.rightArrowSettingsIc),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(ImageAssets.inviteFriendsIc),
            title: Text(AppStrings.inviteYourFriends,
                style: Theme.of(context).textTheme.bodyLarge),
            trailing: SvgPicture.asset(ImageAssets.rightArrowSettingsIc),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(ImageAssets.logoutIc),
            title: Text(AppStrings.logout,
                style: Theme.of(context).textTheme.bodyLarge),
            trailing: SvgPicture.asset(ImageAssets.rightArrowSettingsIc),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
