import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../AuthPage.dart';
import '../layouts/LayoutPage.dart';

import '../screens/HomePage.dart';
import '../screens/ProductPage.dart';
import '../screens/CartPage.dart';
import '../screens/FavoritePage.dart';
import '../screens/ProfilePage.dart';
import '../screens/LoginPage.dart';
import '../screens/SignUpPage.dart';

import '../pages/ProductDetailPage.dart';
import '../models/product.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/auth',

  routes: [

    // =========================
    // AUTH
    // =========================

    GoRoute(
      path: '/auth',
      name: 'auth',
      builder: (context, state) {
        return const AuthPage();
      },
    ),

    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) {
        return const LoginPage();
      },
    ),

    GoRoute(
      path: '/signup',
      name: 'signup',
      builder: (context, state) {
        return const SignUpPage();
      },
    ),

    // =========================
    // MAIN APP
    // =========================

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return LayoutPage(
          navigationShell: navigationShell,
        );
      },

      branches: [

        // HOME
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) {
                return const HomePage();
              },
            ),
          ],
        ),

        // PRODUCTS
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/products',
              name: 'products',
              builder: (context, state) {
                return const ProductPage();
              },
            ),
          ],
        ),

        // CART
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/cart',
              name: 'cart',
              builder: (context, state) {
                return const CartPage();
              },
            ),
          ],
        ),

        // FAVORITES
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorites',
              name: 'favorites',
              builder: (context, state) {
                return const FavoritePage();
              },
            ),
          ],
        ),

        // PROFILE
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              name: 'profile',
              builder: (context, state) {
                return const ProfilePage();
              },
            ),
          ],
        ),
      ],
    ),

    // =========================
    // PRODUCT DETAIL
    // =========================

    GoRoute(
      path: '/product/:id',
      name: 'product-detail',

      builder: (context, state) {
        final product = state.extra;

        if (product is Product) {
          return ProductDetailPage(
            product: product,
          );
        }

        return const Scaffold(
          body: Center(
            child: Text(
              'Product not found',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        );
      },
    ),
  ],
);