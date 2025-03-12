import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import '../core/theme/dimens.dart';
import '../services/guide_service.dart';
import '../core/config/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guides'),
        actions: [
          IconButton(
            icon: const Icon(Icons.upload),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: AppDimens.edgeAll8,
        itemCount: GuideService().guides.length,
        itemBuilder: (context, index) {
          final guide = GuideService().guides[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.detail);
            },
            child: Card(
              elevation: 4,
              margin: AppDimens.edgeSym8,
              shape: RoundedRectangleBorder(
                borderRadius: AppDimens.borderRadius12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: AppDimens.borderRadius12V,
                    child: Image.asset(
                      guide['imageUrl']!,
                      height: AppDimens.d200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: AppDimens.edgeAll16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          guide['title']!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AppDimens.sized4,
                        Text(
                          guide['subtitle']!,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.grey,
                          ),
                        ),
                        AppDimens.sized8,
                        Text(
                          guide['duration']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, AppRoutes.instructions);
          }
        },
      ),
    );
  }
}