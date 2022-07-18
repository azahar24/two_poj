import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:two_poj/route/route.dart';
import 'package:two_poj/ui/views/add_bank.dart';
import 'package:two_poj/ui/views/add_new_account.dart';
import 'package:two_poj/ui/views/bank_accounts.dart';
import 'package:two_poj/ui/views/change_pin.dart';
import 'package:two_poj/ui/views/creadit_dabit_card.dart';
import 'package:two_poj/ui/views/details.dart';
import 'package:two_poj/ui/views/notifications.dart';
import 'package:two_poj/ui/views/pin.dart';
import 'package:two_poj/ui/views/send_money_bank.dart';
import 'package:two_poj/ui/views/send_money_options.dart';
import 'package:two_poj/ui/views/send_noney_sutraq_user.dart';
import 'package:two_poj/ui/views/sent.dart';
import 'package:two_poj/ui/views/top_up_bank.dart';
import 'package:two_poj/ui/views/splash_screen.dart';
import 'package:two_poj/ui/views/top_up_card.dart';
import 'package:two_poj/ui/views/withdraw.dart';

import 'ui/views/add_new_bank_card.dart';
import 'ui/views/change_password.dart';
import 'ui/views/dashbord/pages/dashbord/dashbord.dart';
import 'ui/views/refer.dart';
import 'ui/views/transaction_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(392.72, 802.90),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            //initialRoute: splash,
            //getPages: getPages,
            home: Notifications(),
          );
        },
    );
  }
}
