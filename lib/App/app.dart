import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';

import 'package:in_app_update/in_app_update.dart';
import 'package:testnew/Data/prefs_helper/iprefs_helper.dart';
import 'package:testnew/Injection.dart';
import 'package:testnew/UI/HomePage/pages/HomeScreen.dart';
import 'package:theme_manager/theme_manager.dart';
import '../core/Language/localization/demo_localization.dart';
import '../core/theme/theme_constants.dart';

// import 'package:new_version/new_version.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);
  final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  @override
  State<MyApp> createState() => _MyAppState();
}

// bool ISNewNotifications = false;

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
//
// // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
// //   RemoteNotification notification = message.notification!;
// //   AndroidNotification android = message.notification!.android!;
// //   print(notification);
// //   print(android);
// //
// //   if (notification != null && android != null) {
// //
// //     flutterLocalNotificationsPlugin.show(
// //         notification.hashCode,
// //         notification.title,
// //         notification.body,
// //         NotificationDetails(
// //           android: AndroidNotificationDetails(
// //             channel.id,
// //             channel.name,
// //            color: Colors.blue,
// //          //   channel.description,
// //             playSound: true,
// //             icon:'@mipmap/appicon',
// //           ),
// //         ));
// //   }
// // });
// class HexColor extends Color {
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll("#", "");
//     if (hexColor.length == 6) {
//       hexColor = "FF" + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }
//
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
// }

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  static final navigatorKey = new GlobalKey<NavigatorState>();
  bool? serviceEnabled;
  LocationPermission? permission;
  final pref = sl<IPrefsHelper>();
  MyTheme themeee = MyTheme();
  bool done = false;
  AppUpdateInfo? _updateInfo;

  //FirebaseMessaging messaging = FirebaseMessaging.instance;
  late FlutterLocalNotificationsPlugin fltNotification;

  // StreamSubscription<FGBGType>? subscription;

  Future<void> checkVersion() async {
    InAppUpdate.checkForUpdate().then((info) {
      setState(() {
        _updateInfo = info;
      });
    }).catchError((e) {
      print(e);
    });
    //
    //
    //   _updateInfo?.updateAvailability ==
    //       UpdateAvailability.updateAvailable
    //       ?
    //     InAppUpdate.performImmediateUpdate()
    //         .catchError((e) {print(e);})
    //
    //      : print("xd");
    //
  }

  // Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  //   await Firebase.initializeApp();
  //   print("Handling a background message $message");
  //
  //   print(message.notification!.title.toString());
  //   if (message.notification!.title.toString() == "#Friend Request") {
  //     navigatorKey.currentState!.push(
  //         MaterialPageRoute(builder: (_) => FreindRequests())
  //     );
  //   }
  // }
  // Future<void> checkVersion() async {
  //
  //    try{
  //      NativeUpdater.displayUpdateAlert(context, forceUpdate: true);
  //      // NativeUpdater.displayUpdateAlert(
  //      //   context,
  //      //   forceUpdate: true,
  //      //   appStoreUrl: 'https://play.google.com/store/apps/details?id=com.arc.bubbles',
  //      //   iOSDescription: 'Update Bubbles for Better Experiences',
  //      //   iOSUpdateButtonLabel: 'Upgrade',
  //      //   iOSCloseButtonLabel: 'Exit',
  //      // );
  //
  //    }catch(e){
  //      print(e);
  //    }
  //
  // }

  // AppUpdateInfo? _updateInfo = AppUpdateInfo();
  //
  // void showSnack(String text) {
  //   if (navigatorKey.currentContext != null) {
  //     ScaffoldMessenger.of(navigatorKey.currentContext!)
  //         .showSnackBar(SnackBar(content: Text(text)));
  //   }
  // }
  // void _checkVersion() async {
  //   _updateInfo?.updateAvailability == UpdateAvailability.updateAvailable
  //       ? InAppUpdate.performImmediateUpdate().catchError((e) => showSnack(e.toString()))
  //       : null;
  //   print("Update Checked");
  //   print(_updateInfo?.updateAvailability);
  //   // final newVersion = NewVersion(
  //   //   androidId: "com.arc.bubbles",
  //   //   iOSId: "com.arc.bubbles"
  //   // );
  //   // final status = await newVersion.getVersionStatus();
  //   // print(status!.appStoreLink);
  //   // // newVersion.showUpdateDialog(
  //   // //   context: context,
  //   // //   versionStatus: status,
  //   // //   dialogTitle: "Update Bubbles!",
  //   // //   dismissButtonText: "Skip",
  //   // //   dialogText: "Please update the app from " + "${status.localVersion}" + " to " + "${status.storeVersion}",
  //   // //   dismissAction: () {
  //   // //     Navigator.pop(context);
  //   // //   },
  //   // //   updateButtonText: "Lets update",
  //   // // );
  //   //
  //   // print("DEVICE : " + status.localVersion);
  //   // print("STORE : " + status.storeVersion);
  // }

  void _addBadge(int count) {
    FlutterAppBadger.updateBadgeCount(count);
  }

//
//   void initMessaging() async {
//     print('The notification');
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: false,
//       badge: false,
//       sound: false,
//     );
//     var androiInit = AndroidInitializationSettings("@mipmap/ic_launcher");
//     var iosInit = IOSInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: true,
//       requestSoundPermission: true,
//     );
//
//     var initSetting = InitializationSettings(android: androiInit, iOS: iosInit);
//     fltNotification = FlutterLocalNotificationsPlugin();
//     // fltNotification.initialize(
//     //     initSetting,
//     // //  onSelectNotification: handleClickNotification,
//     // );
//     fltNotification.initialize(initSetting,
//         onSelectNotification: (String? payload) {
//       try {
//         print("payload : $payload");
//         //todo : handle on notification click
//         // if(payload != null && payload.isNotEmpty) {
//         // navigatorKey.currentState!.push(MaterialPageRoute(
//         //     builder: (context) => Friendlist(is_WithoutTopBar: true)));
//         // //   }
//       } catch (e) {}
//       return;
//     });
//
//     AndroidNotificationDetails androidNotificationsDetails =
//         AndroidNotificationDetails(
//       'Channel 5',
//       'Notification',
//       channelDescription: "channel Description",
//       importance: Importance.max,
//       playSound: true,
//       enableLights: false,
//     );
// //To redirect me at least to friend requests??
//     var iosDetails = IOSNotificationDetails();
//
//     var generalNotificationDetails = NotificationDetails(
//         android: androidNotificationsDetails, iOS: iosDetails);
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       // _TopBarBloc.add(GetBadge());
//       _addBadge(1);
//       print(message);
//
//       RemoteNotification? notification=message.notification;
//       AndroidNotification? android=message.notification?.android;
//       if(notification!=null)
//       {
//
//         //  fltNotification.show(
//         //   notification.hashCode,
//         //   notification.title,
//         //   notification.body,
//         //   generalNotificationDetails,
//         // );
//
//         fltNotification.show(notification.hashCode, notification.title,
//             notification.body, generalNotificationDetails);
//       }
//
//     });
//
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
//       print("onMessageOpenedApp: ${message.notification!}");
//       print(message.notification!.title.toString());
//       if (message.notification!.title.toString() == "Friend Request") {
//         if (message.notification!.titleLocKey != null &&
//             message.notification!.titleLocKey!.isNotEmpty) {
//           // navigatorKey.currentState!.push(MaterialPageRoute(
//           //     builder: (_) => Friendlist(is_WithoutTopBar: true)));
//           //
//         }
//       }
//     });
//     //
//     // FirebaseMessaging.onBackgroundMessage((message) {
//     //
//     // });
//
// //    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
//   }

  // handleClickNotification(String? payload) {
  //   print(payload);
  //   print("IN HANDDLE");
  //   if (payload == "#Friend Request") {
  //     navigatorKey.currentState!.push(
  //         MaterialPageRoute(builder: (_) => FreindRequests())
  //     );
  //   }
  // }
  // void listenToNotification() {
  //
  //     onMessage: (Map<String, dynamic> message) async {
  //       print("onMessage: $message");
  //
  //     },
  //     onLaunch: (Map<String, dynamic> message) async {
  //       print("onLaunch: $message");
  //     },
  //     onResume: (Map<String, dynamic> message) async {
  //       print("onResume: ${message["data"]}");
  //       // print("onResume: ${message["data"]}");
  //       // SchedulerBinding.instance!.addPostFrameCallback((_) {
  //       //   Navigator.of(GlobalVariable.navState.currentContext)
  //       //       .push(MaterialPageRoute(
  //       //       builder: (context) => TimelineView(
  //       //         campaignId: message["data"]["campaign"],
  //       //       )));
  //       // });
  //     },
  //   );
  // }

  // void handleMessage(RemoteMessage message) {
  //   print("onMessage: ${message.notification!}");
  //
  //   if (message.notification!.title.toString() == "Friend Request") {
  //     // navigatorKey.currentState!.push(MaterialPageRoute(
  //     //     builder: (_) => Friendlist(is_WithoutTopBar: true)));
  //   }
  // }
  //Future<void> onSelectNotification(payload) async {
  //   if(payload != null) {
  //     Map<String, dynamic> data = json.decode(payload);
  //
  //     if (data['screen'] == "message") {
  //       Navigator.push(
  //           navigatorKey.currentContext!,
  //           MaterialPageRoute(
  //             builder: (context) => MessageListPage(),
  //           )
  //       );
  //     }
  //   }
  // }

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    // initMessaging();
    // _checkVersion();
    checkVersion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Future.wait([
    //   precachePicture(
    //     ExactAssetPicture(
    //         SvgPicture.svgStringDecoderBuilder, 'Assets/images/Vector(1).svg'),
    //     null,
    //   ),
    //   precachePicture(
    //     ExactAssetPicture(
    //         SvgPicture.svgStringDecoderBuilder, 'Assets/images/Logo.svg'),
    //     null,
    //   ),
    //   precachePicture(
    //     ExactAssetPicture(
    //         SvgPicture.svgStringDecoderBuilder, 'Assets/images/path4.svg'),
    //     null,
    //   ),
    //   precachePicture(
    //     ExactAssetPicture(
    //         SvgPicture.svgStringDecoderBuilder, 'Assets/images/path14.svg'),
    //     null,
    //   ),
    //   precachePicture(
    //     ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
    //         'Assets/images/Google Logo.svg'),
    //     null,
    //   ),
    //   //
    //   //
    //   //
    // ]);

    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
            onTap: () {
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              //remove keyboard on touching anywhere on the screen.
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            child: MaterialApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              home: Home(),
              title: 'دار الطب',
              localizationsDelegates: const [
                DemoLocalization.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              localeResolutionCallback: (locale, supportedLocales) {
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode ==
                      locale?.languageCode &&
                      supportedLocale.countryCode ==
                          locale?.countryCode) {
                    return supportedLocale;
                  }
                }
              },
            ));
      },
      designSize: Size(320, 568),
//375 , 812
    );


//
//       ThemeManager(
//         defaultBrightnessPreference: BrightnessPreference.dark,
//         data: (Brightness brightness) {
//           return brightness == Brightness.light
//               ? themeee.darkTheme
//               : themeee.darkTheme;
//         },
//         loadBrightnessOnStart: true,
//         themedWidgetBuilder: (BuildContext context, ThemeData theme) {
//           return ScreenUtilInit(
//             builder: (BuildContext context, Widget? child) {
//               return GestureDetector(
//                   onTap: () {
//                     SystemChannels.textInput.invokeMethod('TextInput.hide');
//                     //remove keyboard on touching anywhere on the screen.
//                     FocusScopeNode currentFocus = FocusScope.of(context);
//
//                     if (!currentFocus.hasPrimaryFocus) {
//                       currentFocus.unfocus();
//                       FocusManager.instance.primaryFocus?.unfocus();
//                     }
//                   },
//                   child: MaterialApp(
//                     navigatorKey: navigatorKey,
//                     debugShowCheckedModeBanner: false,
//                     home: Container(),
//                     title: 'دار الطب',
//                     theme: theme,
//                     localizationsDelegates: const [
//                       DemoLocalization.delegate,
//                       GlobalMaterialLocalizations.delegate,
//                       GlobalWidgetsLocalizations.delegate,
//                       GlobalCupertinoLocalizations.delegate
//                     ],
//                     localeResolutionCallback: (locale, supportedLocales) {
//                       for (var supportedLocale in supportedLocales) {
//                         if (supportedLocale.languageCode ==
//                                 locale?.languageCode &&
//                             supportedLocale.countryCode ==
//                                 locale?.countryCode) {
//                           return supportedLocale;
//                         }
//                       }
//                     },
//                   ));
//             },
//             designSize: Size(320, 568),
// //375 , 812
//           );
//         });
  }
}
