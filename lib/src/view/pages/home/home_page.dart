import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/cover.dart';
import 'widgets/menu_content.dart';
import 'widgets/menu_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            primary: true,
            pinned: true,
            expandedHeight: 1.04.sh,
            surfaceTintColor: Colors.white,
            clipBehavior: Clip.none,
            collapsedHeight:50.h,
            flexibleSpace: const FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Cover(),
              titlePadding: EdgeInsets.zero,
              title: MenuTitle(),
            ),
          ),
          const SliverToBoxAdapter(
            child: MenuContent(),
          ),
        ],
      ),
    );
  }
}
