import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/splash_screen.dart';
import 'screens/login_page.dart';
import 'screens/registration_page.dart';
import 'screens/home_page.dart';
import 'screens/add_note_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (BuildContext context, GoRouterState state) => '/splash',
    ),
    GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) => SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) => LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) => RegistrationPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => HomePage(),
    ),
    GoRoute(
      path: '/add_note',
      builder: (BuildContext context, GoRouterState state) => AddNotePage(),
    ),
  ],
);
