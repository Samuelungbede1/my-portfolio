
import 'package:flutter/material.dart';
import 'package:my_portfolio/use_cases/more/widgets/education_tab.dart';
import 'package:my_portfolio/use_cases/now_playing_movies/view/movies_list_screen.dart';

import '../../../utils/app_color_palette.dart';
import '../../../utils/base_styles.dart';
import '../widgets/skills_tab.dart';
import '../widgets/past_projects_tab.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> with TickerProviderStateMixin {
  late TabController tabController;
  final List<String> tabs = [
    'Past Projects',
    'Education',
    'Skills',
    'Movie Project'
  ];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPalette.bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: const Text('More', style: headerText1),
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: AppColorPalette.gray,
          labelColor: AppColorPalette.black,
          controller: tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          PastProjectsTab(),
          EducationTab(),
          SkillsTab(),
          MoviesListScreen(),
        ],
      ),
    );
  }
}
