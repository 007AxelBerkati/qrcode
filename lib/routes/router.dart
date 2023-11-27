import 'package:go_router/go_router.dart';
import 'package:qrcode/pages/detail_product.dart';
import 'package:qrcode/pages/error.dart';
import 'package:qrcode/pages/home.dart';
import 'package:qrcode/pages/products.dart';
import 'package:qrcode/pages/settings.dart';

part 'route_name.dart';

final router = GoRouter(
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    // Kalau 1 level => push replacement
    // kalau 2 level => push
    // Prioritas dalam perbuatan goRoute (urutan dari atas ke bawah)
    GoRoute(
        path: '/',
        name: Routes.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
              path: 'products',
              name: Routes.products,
              builder: (context, state) => const ProductsPage(),
              routes: [
                GoRoute(
                  path: ':id',
                  name: Routes.detailProduct,
                  builder: (context, state) => DetailProductPage(
                    state.pathParameters['id'].toString(),
                    state.uri.queryParameters,
                  ),
                )
              ])
        ]),
    GoRoute(
      path: '/settings',
      name: Routes.settings,
      builder: (context, state) => const SettingsPage(),
    )
  ],
);
