import 'package:flutter/material.dart';
import 'package:whales_of_island_app/core/config/routes.dart';
import '../core/theme/dimens.dart';
import '../core/theme/strings.dart';

class SafetyInstructionsScreen extends StatefulWidget {
  const SafetyInstructionsScreen({super.key});

  @override
  State<SafetyInstructionsScreen> createState() => _SafetyInstructionsScreenState();
}

class _SafetyInstructionsScreenState extends State<SafetyInstructionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.safety),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.home);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppDimens.edgeAll16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDimens.sized16,
              const Text(
                'Safety Instructions',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppDimens.sized16,
              const Text(
                'All information and instructions in the present Safety Instruction set have been compiled in consideration of current standards and guidelines, the state of technology and our many years of experience and knowledge.',
                style: TextStyle(fontSize: 16),
              ),
              AppDimens.sized16,
              const Text(
                'Operating Instruction & Manual are separate documents to be found on company website for each product, equipment, and devices. The Operating Instructions provide you with all the information necessary to install and operate the products, equipment, and devices.',
                style: TextStyle(fontSize: 16),
              ),
              AppDimens.sized16,
              const Text(
                'The present Safety Instructions informs the operator how to:',
                style: TextStyle(fontSize: 16),
              ),
              AppDimens.sized16,
              const Text(
                'operate the device according to safety requirements, maintain the device according to guidelines, clean the device according to guidelines, take appropriate measures should a fault Occur. The operator and laboratory responsible is urged to:',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
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
          if (index == 0) {
            Navigator.pushNamed(context, AppRoutes.home);
          }
        },
      ),
    );
  }
}