import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test_calendar/components/app_colors.dart';
import 'package:test_calendar/pages/main_tab/tab_view.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('vi_VN', null);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: [
      //   SfGlobalLocalizations.delegate, // Localize Syncfusion Calendar
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   const Locale('vi'), // Tiếng Việt
      // ],
      theme: ThemeData(
          //primaryColor: AppColors.primaryColor1
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // Màu nền mặc định
            foregroundColor: AppColors.primaryColor1.withOpacity(1), // Màu chữ/icon
            textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500), // Kiểu chữ
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Bo góc
            ),
            elevation: 0, // Độ nâng
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor1),
      ),
      home: MainTabView(),
    );
  }
}
