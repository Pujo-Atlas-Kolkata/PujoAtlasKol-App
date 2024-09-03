import 'package:flutter/material.dart';
import 'package:mobile/l10n/l10n.dart';
import 'package:mobile/screens/settings/settings_page.dart';
import 'package:mobile/widgets/greeting_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 40),
            child: GreetingHeader(
                greeting: context.l10n?.greet ?? "Subho Sarodiya",
                onSettings: () {
                  Navigator.of(context).push(SettingsPage.route());
                }))
      ],
    );
  }
}
