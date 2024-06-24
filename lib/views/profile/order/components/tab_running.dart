import 'package:flutter/material.dart';

import '../../../../core/enums/dummy_order_status.dart';
import '../../../../core/routes/app_routes.dart';
import 'order_preview_tile.dart';

class RunningTab extends StatelessWidget {
  const RunningTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 8),
      children: [
        OrderPreviewTile(
          orderID: '41234569',
          date: '25 June',
          status: OrderStatus.confirmed,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '20 June',
          status: OrderStatus.processing,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '987654326',
          date: '15 June',
          status: OrderStatus.shipped,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '544567892',
          date: '10 June',
          status: OrderStatus.delivery,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '65434567',
          date: '5 June',
          status: OrderStatus.cancelled,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
      ],
    );
  }
}
