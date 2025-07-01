import 'package:flutter/material.dart';
import 'package:portfolio/app_Text_styles.dart';
import 'package:portfolio/constants/app_menu_list.dart';
import 'package:portfolio/extensions.dart';
import 'package:portfolio/style/app_size.dart';
import 'package:portfolio/widgets/appbar/app_bar_drawer_icon.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.center,
      color: context.theme.appBarTheme.backgroundColor,
      height: context.insets.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: context.insets.Padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: Insets.maxWidth,
        ),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) LargeMenu(),
            Spacer(),
            LanguageToggle(),
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawerIcon(),
          ],
        ),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Portfolio',
      style: context.textStyle.titleLgBold,
    );
  }
}

class LargeMenu extends StatelessWidget {
  const LargeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.getItems(context)
          .map(
            (e) => LargeAppBarMenuItem(
                text: e.title, isSelected: true, onTap: () {}),
          )
          .toList(),
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  const LargeAppBarMenuItem(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onTap});

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(
          text,
          style: SmallTextStyles().bodyLgMedium,
        ),
      ),
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) {
      return [
        PopupMenuItem(child: Text('English')),
        PopupMenuItem(child: Text('Türkçe')),
      ];
    });
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value) {});
  }
}
