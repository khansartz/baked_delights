import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';
import 'components/category_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const CateogoriesGrid()
        ],
      ),
    );
  }
}

class CateogoriesGrid extends StatelessWidget {
  const CateogoriesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CategoryTile(
            imageLink: 'https://static.thenounproject.com/png/262639-200.png',
            label: 'Cake',
            backgroundColor: AppColors.primary,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf4Xmu1NbFcXb_qrgHjfCMKqUtJXnd-Yg1dB5wtdY8NdXKiDe3N1QYAwIz7r8DAeaAZjc&usqp=CAU',
            label: 'Cookies',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdAOuvaqwY3MyZewXVEDSJVrTyDjRs_MUGYQ&s',
            label: 'Beverage',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/mGRqfnc.png',
          //   label: 'Baby Care',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/fwyz4oC.png',
          //   label: 'Office Supplies',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/DNr8a6R.png',
          //   label: 'Beauty',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/O2ZX5nR.png',
          //   label: 'Gym Equipment',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/wJBopjL.png',
          //   label: 'Gardening Tools',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/P4yJA9t.png',
          //   label: 'Pet Care',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/sxGf76e.png',
          //   label: 'Eye Wears',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/BPvKeXl.png',
            label: 'Merchandise',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/m65fusg.png',
            label: 'Others',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
        ],
      ),
    );
  }
}
