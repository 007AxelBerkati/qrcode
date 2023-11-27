import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode/routes/router.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Products')),
          body: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Product ${index + 1}'),
                  subtitle: Text('Description Product ${index + 1}'),
                  onTap: () {
                    // penggunaan routing dynamic
                    // context.go('/products/${index + 1}');
                    // penggunaan routing dynamic => dengan nama
                    context.goNamed(Routes.detailProduct, pathParameters: {
                      'id': '${index + 1}',
                    }, queryParameters: {
                      'name': 'Product ${index + 1}',
                      'description': 'Description Product ${index + 1}',
                    });
                  },
                );
              })),
    );
  }
}
