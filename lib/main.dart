import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:waiter/helper/routes.dart';
import 'package:waiter/state/appState.dart';
import 'package:waiter/ui/page/Auth/signin.dart';
import 'package:waiter/ui/page/Auth/signup_email.dart';
import 'package:waiter/ui/page/Auth/verifyEmail.dart';
import 'package:waiter/ui/page/common/splash.dart';
import 'package:waiter/ui/page/welcome.dart';
import 'package:waiter/ui/theme/theme.dart';

void main() {
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

