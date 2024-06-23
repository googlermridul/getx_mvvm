import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/response/api_response.dart';
import 'package:getx_mvvm/res/components/general_exception_widget.dart';
import 'package:getx_mvvm/res/components/internet_exception_widget.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/home/home_controller.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preferences_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeVM = Get.put(HomeController());
  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    homeVM.userListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: InternetExceptionWidget(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                userPreference.removeUser().then((value) {
                  Get.toNamed(RoutesName.loginView);
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Obx(() {
        switch (homeVM.requestStatus.value) {
          case Status.LOADING:
            return Center(
              child: CircularProgressIndicator(),
            );
          case Status.ERROR:
            if (homeVM.error.toString() == "Network Error: No Internet Connection") {
              return InternetExceptionWidget(
                onPress: () {
                  homeVM.refreshApi();
                },
              );
            } else {
              return GeneralExceptionWidget(
                  onPress: () {
                    homeVM.refreshApi();
                  },
                  title: homeVM.error.toString());
            }
          case Status.COMPLETED:
            return ListView.builder(
              itemCount: homeVM.userList.value.data!.length,
              itemBuilder: (context, index) {
                final item = homeVM.userList.value.data![index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(item.avatar.toString()),
                    ),
                    title: Text(item.firstName.toString()),
                    subtitle: Text(item.email.toString()),
                  ),
                );
              },
            );
        }
      }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.toastMessage("title");
      }),
    );
  }
}
