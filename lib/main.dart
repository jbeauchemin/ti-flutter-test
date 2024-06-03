import 'package:chrconnecthpdraft/feature/app/chr_connect_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:showcaseview/showcaseview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(ShowCaseWidget(builder: (context) => const CHRConnectApp()));
}
