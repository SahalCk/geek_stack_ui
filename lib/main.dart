import 'package:flutter/material.dart';
import 'package:geekstack_ui_task/utils/colors.dart';
import 'package:geekstack_ui_task/view_models/home_screen_view_model.dart';
import 'package:geekstack_ui_task/views/screens/screen_home.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const GeekStackUI());
}

class GeekStackUI extends StatelessWidget {
  const GeekStackUI({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (buildContext, orientation, screenType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => HomeScreenViewModel())
          ],
          builder: (context, child) {
            return MaterialApp(
              title: 'GeekStack UI',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.white, background: backgroundColor),
                  fontFamily: 'Poppins'),
              home: const HomeScreen(),
            );
          },
        );
      },
    );
  }
}
