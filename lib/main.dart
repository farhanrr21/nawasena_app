import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'Start Menu/StartPage.dart';
import 'package:device_preview/device_preview.dart';


// void main() => runApp(
//   DevicePreview(
//     enabled: true,
//     builder: (context) => Nawasena(), // Wrap your app
//   ),
// );

// //Preview
// class Nawasena extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       useInheritedMediaQuery: true,
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       home: const SplashScreen(),
//     );
//   }
// }


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const Nawasena()));
  runApp(const Nawasena());
  
}

class Nawasena extends StatelessWidget {
  const Nawasena({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
    _controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => StartMenu(),), (route) => false);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'images/anim_nawasena_logo.json',
              controller: _controller,
              onLoaded: (composition) {
                Future.delayed(const Duration(milliseconds: 100), () {
                  _controller
                    ..duration = composition.duration
                    ..forward();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
