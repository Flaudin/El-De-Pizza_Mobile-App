import 'package:eldepizza/constants.dart';
import 'package:eldepizza/models/cart.dart';
import 'package:eldepizza/models/favorites.dart';
import 'package:eldepizza/routs.dart';
//import 'package:eldepizza/screens/Sign_up/sign_up_screen.dart';
import 'package:eldepizza/screens/Splash/onboardScreen.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Cart()),
          ChangeNotifierProvider(create: (context) => Favorite()),
          //ChangeNotifierProvider(create: (context) => ProductService())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'El De Pizza Mobile App',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              color: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              centerTitle: true,
            ),
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: Colors.blue,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: kTextColor),
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          //home: const SplashScreen(),
          initialRoute: SplashScreen.routeName,
          routes: routes,
        ),
      ),
    );
  }
}
