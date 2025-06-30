import 'package:flutter/material.dart';
import 'package:portfolio/app_Text_styles.dart';
import 'package:portfolio/extensions.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogo(),
        Spacer(),
        AppMenus(),
        Spacer(),
        LanguageToggle(),
        ThemeToggle(),
      ],
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

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(context.texts.home), 
        Text(context.texts.courses),
        Text(context.texts.blog),
        Text(context.texts.aboutMe),
      ],
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context){
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