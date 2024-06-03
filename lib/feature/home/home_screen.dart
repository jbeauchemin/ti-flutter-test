import 'package:chrconnecthpdraft/core/keys/show_case_keys.dart';
import 'package:chrconnecthpdraft/core/widgets/custom_show_case.dart';
import 'package:chrconnecthpdraft/feature/home/components/appointments/appointments.dart';
import 'package:chrconnecthpdraft/feature/home/components/inbox/inbox.dart';
import 'package:chrconnecthpdraft/feature/home/components/more_resources.dart';
import 'package:chrconnecthpdraft/feature/home/components/welcoming.dart';
import 'package:flutter/material.dart';

import 'components/reminders/reminders.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/background.png'),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Welcoming(
                  state: WelcomingStates.evening,
                  name: "Linda",
                ),
              ),
              const SizedBox(height: 32),
              const Reminders(),
              const SizedBox(height: 32),
              const Appointments(verticalLayout: true),
              const SizedBox(height: 32),
              CustomShowCase(
                showcaseKey: ShowCaseKeys.inboxKey,
                description:
                    "At the bottom of the page, you'll find your messages and some extra resources.",
                child: const Column(
                  children: [
                    Inbox(verticalLayout: true),
                    SizedBox(height: 32),
                    MoreResources(),
                    SizedBox(height: 88),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
