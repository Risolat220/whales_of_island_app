import 'package:flutter/material.dart';

import '../core/theme/colors.dart';
import '../core/theme/dimens.dart';

class GuideDetailScreen extends StatefulWidget {
  const GuideDetailScreen({super.key});

  @override
  State<GuideDetailScreen> createState() => _GuideDetailScreenState();
}

class _GuideDetailScreenState extends State<GuideDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Container(
              height: AppDimens.d300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('https://via.placeholder.com/400x300'), // Rasm URL manzili
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2:55 hrs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        backgroundColor: Colors.black26,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Fin whale',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        backgroundColor: AppColors.black26,
                      ),
                    ),
                    Text(
                      'Balaenoptera Physalus',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        backgroundColor: AppColors.black26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Stats Section
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatItem('5-8 mts', Icons.height),
                  _buildStatItem('3-4 tons', Icons.scale),
                  _buildStatItem('56 km/h', Icons.speed),
                ],
              ),
            ),
            // Description Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'The killer whale or orca (Orcinus orca) is a too-\nthed whale belonging to the oceanic dolphin family, of which it is the largest member. Killer whales have a diverse diet, although individual populations often specialize in particular types of prey.\n\nSome feed exclusively on fish, while others hunt marine mammals such as seals and other species of dolphin. They have been known to attack baleen whale calves, and even adult whales.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: Icon(Icons.replay_10), onPressed: () {}),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.play_arrow, size: 40),
                    onPressed: () {},
                  ),
                  SizedBox(width: 20),
                  IconButton(icon: Icon(Icons.forward_10), onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('2:12'),
                  Slider(
                    value: 126.0,
                    max: 282.0,
                    onChanged: (value) {},
                  ),
                  Text('4:42'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 16, color: Colors.blue),
        ),
      ],
    );
  }
}