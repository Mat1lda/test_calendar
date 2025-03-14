import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'package:test_calendar/pages/main_tab/tab_view.dart';
import 'package:test_calendar/pages/time_table/custom_timetable_screen.dart';
import 'package:test_calendar/provider/calendar_time_provider.dart';
import 'package:test_calendar/provider/time_provider.dart';

import 'package:timezone/data/latest_all.dart' as tz;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  runApp(
      MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => TimeProvider()),
        ChangeNotifierProvider(create: (_) => SelectedTimeChangeProvider())
        ],
        child: const MyApp(),
      ),
  );
}

MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          SfGlobalLocalizations.delegate, // Localize Syncfusion Calendar
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('vi'), // Tiếng Việt
        ],
      theme: ThemeData(primarySwatch: Colors.grey),
      home: CustomTimetableScreem()
    );
  }
}