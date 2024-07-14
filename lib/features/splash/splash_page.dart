import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';

import '../../core/config/app_colors.dart';
import '../../core/utils.dart';
import 'greetings_page.dart';

class MainScreen extends StatefulWidget {
  final String d1;
  final String d2;
  final String d3;
  final String d4;
  final String d5;

  const MainScreen(
      {super.key,
      required this.d1,
      required this.d2,
      required this.d3,
      required this.d4,
      required this.d5});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late AppsflyerSdk _appsflyerSdk;
  String idAdv = '';
  String parmFl = '';
  String paramsSecond = '';
  Map _deepLinkData = {};
  Map _gcd = {};
  bool _isFirstLaunch = false;
  String _aStats = '';

  String mxasd = '';
  String rfsdfdsfs = '';

  @override
  Widget build(BuildContext context) {
    final String fsdfdsfds =
        '${widget.d1}${widget.d2}$x3${widget.d4}${widget.d5}';
    print(fsdfdsfds);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(fsdfdsfds),
          ),
        ),
      ),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void load() async {
    await getData().then((value) {
      Future.delayed(const Duration(seconds: 2), () {
        if (onboarding) {
          context.go('/onboarding');
        } else {
          context.go('/home');
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(color: AppColors.main),
      ),
    );
  }
}
