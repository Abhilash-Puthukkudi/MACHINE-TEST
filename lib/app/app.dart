import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/app/injector/injector.dart';
import 'package:machine_test/app/router/router.dart';
import 'package:machine_test/app/router/router_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/src/application/home/home_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(390, 893),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<HomeBloc>()),
          ],
          child: MaterialApp(
            theme: ThemeData(textTheme: GoogleFonts.rubikTextTheme(), appBarTheme: const AppBarTheme(color: Colors.transparent), useMaterial3: true, colorSchemeSeed: const Color.fromRGBO(65, 30, 74, 1), scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1)),
            initialRoute: RouterConstants.splashRoute,
            onGenerateRoute: AppRouter.generateRoute,
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
