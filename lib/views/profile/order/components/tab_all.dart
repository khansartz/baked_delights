import 'package:flutter/material.dart';

import '../../../../core/enums/dummy_order_status.dart';
import '../../../../core/routes/app_routes.dart';
import 'order_preview_tile.dart';

class AllTab extends StatelessWidget {
  const AllTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 8),
      children: [
        OrderPreviewTile(
          orderID: '232425627',
          date: '21 June',
          status: OrderStatus.confirmed,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '10234892',
          date: '19 June',
          status: OrderStatus.processing,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '123489022',
          date: '15 June',
          status: OrderStatus.shipped,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '62345682',
          date: '10 June',
          status: OrderStatus.delivery,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '1234654',
          date: '5 June',
          status: OrderStatus.cancelled,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
      ],
    );
  }
}
