import 'package:flutter/material.dart';

import '../../../commons/helpers/presentation/mvvm/mvvm.dart';
import 'splash_viewmodel.dart';

class SplashPage extends StatefulWidget {
  final String title;

  const SplashPage({
    super.key,
    this.title = 'SplashPage',
  });

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ViewState<SplashPage, SplashViewModel> {
  @override
  void initState() {
    super.initState();
    viewModel.load();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF8325BB),
              Color(0xFFAF1A7D),
              Color(0xFFCB2E6C),
              Color(0xFFDE94BC),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.50,
                ),
                child: const Text('SplashPage'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
