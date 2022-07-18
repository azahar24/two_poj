import 'package:get/get.dart';
import 'package:two_poj/ui/views/auth/email_find.dart';
import 'package:two_poj/ui/views/auth/email_sent.dart';
import 'package:two_poj/ui/views/auth/login.dart';
import 'package:two_poj/ui/views/auth/reset_password.dart';
import 'package:two_poj/ui/views/splash_screen.dart';
import 'package:two_poj/ui/views/transaction_history.dart';
import 'package:two_poj/ui/views/walkthrough/onbordingpage.dart';

import '../ui/views/dashbord/bottom_nav_contoler.dart';

const String splash = '/splash-screen';
const String onbording = '/onbording-screen';
const String login = '/login-screen';
const String resetPassword = '/reset-password-screen';
const String emailsent = '/email-sent-screen';
const String emailfind = '/email-find-screen';
const String bottomnavcon = '/bottom-nav-screen';
const String transactionhistory = '/transaction-history';

List<GetPage> getPages = [
  GetPage(
    name: splash,
   page: () => SplashScreen()
  ),
  GetPage(
    name: onbording,
   page: () => Onbording()
  ),
  GetPage(
      name: login,
      page: () => Login()
  ),
  GetPage(
      name: resetPassword,
      page: () => ResetPass()
  ),
  GetPage(
      name: emailsent,
      page: () => EmailSent()
  ),
  GetPage(
      name: emailfind,
      page: () => EmailFind()
  ),
  GetPage(
      name: bottomnavcon,
      page: () => BootomNavCon()
  ),
  GetPage(
      name: transactionhistory,
      page: () => TransactionHistory()
  ),


];