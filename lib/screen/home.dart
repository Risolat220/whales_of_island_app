import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import '../core/theme/icons.dart';
import '../core/theme/strings.dart';
import '../core/theme/text_styles.dart';
import '../core/widgets/detail_widgets.dart';
import '../services/app_service.dart';
import '../core/config/routes.dart';
import 'detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppService appService = AppService();
  int requiredIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: FutureBuilder<void>(
            future: appService.initialize(),
            builder: (context, _){
              return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.builder(
                    itemCount: appService.items.length,
                    itemBuilder: (context, index) {
                      final item = appService.items[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: MyContainer(
                          item: item,
                          name: item.name,
                          subName: item.subName,
                          hours: item.hours,
                          onTap: (){
                            requiredIndex = index;
                            Navigator.push(context, MaterialPageRoute(builder: (_) => Detail(whale: appService.items[index])));
                          },
                        ),
                      );
                    },
                  )
              );
            }
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }


  BottomNavigationBar _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.mainColor,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.white,
      onTap: (page){
        if(page==1){
          Navigator.pushNamed(context, AppRoutes.safety);
        }
      },
      items: [
        BottomNavigationBarItem(icon: AppIcons.dashboard, label: ""),
        BottomNavigationBarItem(icon: AppIcons.help, label: ""),
        BottomNavigationBarItem(icon: AppIcons.person, label: "")
      ],
    );
  }


  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Text(AppStrings.guides, style: AppTextStyles.guides),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
              onPressed: () {},
              icon: AppIcons.share
          ),
        )
      ],
    );
  }
}

