import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:waiter/helper/routes.dart';
import 'package:waiter/state/appState.dart';
import 'package:waiter/ui/theme/theme.dart';

void main() async{
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MultiProvider(providers: [
      ChangeNotifierProvider<AppState>(create: (_)=>AppState())
    ],
    child: MaterialApp(
      title: "PlanetMsg",
      theme: AppTheme.appTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "SplashPage",
      routes: Routes.route(),
      onGenerateRoute: (settings)=> Routes.onGenerateRoute(settings),
    ),
    );
  }
}

