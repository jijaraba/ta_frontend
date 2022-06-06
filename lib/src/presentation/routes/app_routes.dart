import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tresastronautas_frotend/src/presentation/view/screens/home_view.dart';
import 'package:tresastronautas_frotend/src/presentation/view/screens/login_view.dart';
import 'package:tresastronautas_frotend/src/presentation/view/screens/product_add.dart';
import 'package:tresastronautas_frotend/src/presentation/view/screens/product_edit.dart';
import 'package:tresastronautas_frotend/src/presentation/view/screens/register_view.dart';
import 'package:tresastronautas_frotend/src/presentation/view/screens/splash_view.dart';

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: 'splash',
      path: '/',
      pageBuilder: (_, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SplashView(),
      ),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      pageBuilder: (_, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const LoginView(),
      ),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      pageBuilder: (_, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const RegisterView(),
      ),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      pageBuilder: (_, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const HomeView(),
      ),
    ),
    GoRoute(
      name: 'product_add',
      path: '/product/add',
      pageBuilder: (_, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const ProductAddView(),
      ),
    ),
    GoRoute(
      name: 'product_edit',
      path: '/product/edit/:id',
      pageBuilder: (_, state) {
        final productId = state.params['id'];
        if (productId == null) throw Exception('Product no found');
        return MaterialPage<void>(
          key: state.pageKey,
          child: ProductEditView(
            productId: productId,
          ),
        );
      },
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage<void>(
    key: state.pageKey,
    child: Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            state.error?.toString() ?? 'Page no found',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ),
  ),
);
