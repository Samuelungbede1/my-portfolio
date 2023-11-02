
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_portfolio/utils/config/size_config.dart';
import '../../../common/controller/app_controller.dart';
import '../../../utils/app_color_palette.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/base_styles.dart';
import '../../now_playing_movies/controller/movie_list_controller.dart';
import '../widgets/cerification_item.dart';
import '../widgets/about_me_component.dart';
import '../widgets/user_details_card_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  final MovieListController movieListController =
  Get.put(MovieListController(), permanent: true);

  final AppController appController =
  Get.put(AppController(), permanent: true);


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        Scaffold(
        backgroundColor: AppColorPalette.bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: false,
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(AppStrings.portfolio, style: headerText1),
              InkWell(
                onTap: (){
                  appController.logOut();
                },
                  child: const Icon(Icons.logout, color: AppColorPalette.red,))
            ],
          ),
          flexibleSpace: SizedBox(
            height: 20.ph,
          ),
        ),
        body: appController.isLoading.isTrue ? const CircularProgressIndicator() : CustomScrollView(
          slivers: [
            UserDetailsCardComponent(
              content: Padding(
                padding:  EdgeInsets.all(16.ph),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10.pw,),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(appController.userData!.name, style: title),
                                  Text(appController.userData!.title),
                                ],
                              ),
                              SizedBox(width: 120.pw,),
                              InkWell(
                                onTap: (){

                                },
                                child:  CircleAvatar(
                                  radius: 25.0.r,
                                  backgroundImage: AssetImage(appController.userData!.profilePhoto), // Provide the asset path to your PNG image
                                ),
                              )

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10.pw,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.email, size: 20,),
                                      SizedBox(width: 5,),
                                      Text(appController.userData!.emailAddress),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.phone, size: 20,),
                                      SizedBox(width: 5,),
                                      Text(appController.userData!.phoneNumber),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_sharp, size: 20,),
                                      SizedBox(width: 5,),
                                      Text(appController.userData!.houseAddress),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.pw),
                child: Row(
                  children: [
                    const Text(AppStrings.aboutMe,style: TextStyle(
                      fontSize: 20,
                      color: Colors.black

                    ),),
                     SizedBox(width: 12.pw),
                  ],
                ),
              ),
            ),
             AboutMeComponent(text: appController.userData!.aboutMe),

            const SliverToBoxAdapter(
              child: SizedBox(height: 20,),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.pw),
                child: Row(
                  children: [
                    const Text(AppStrings.certifications,style: TextStyle(
                        fontSize: 20,
                        color: Colors.black

                    ),),
                    SizedBox(width: 12.pw),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                child: SizedBox(
                  height: 90.0.h,
                  width: 500,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: appController.userData!.certifications.length, //
                    itemBuilder: (BuildContext context, int index) {
                      return  CertificationItem(
                        imageUrl: appController.userData!.certifications[index].image,
                        subtitle: appController.userData!.certifications[index].title,
                      );
                    },
                  ),
                ),
              ),
            ),


          ],
        ),    ),
    );
  }
}


