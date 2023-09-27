import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomeView(),
        ));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to transparent
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 600,
                  image: AssetImage(
                    'assets/News.gif',
                  ),
                  width: 500,
                ),
                SizedBox(
                  height: 50,
                ),
                SpinKitThreeBounce(
                  color: Colors.black54,
                  size: 20.0,
                ),
              ],
            ),
          ],
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
