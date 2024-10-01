import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/src/application/home/home_bloc.dart';
import 'package:machine_test/src/presentation/core/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 13.h, bottom: 9.h),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 54.h,
              width: 80.w,
              child: Image.asset(AppImages.logo),
            ),
            Row(
              children: [
                SizedBox(
                  height: 29.h,
                  width: 29.w,
                  child: Image.asset(AppImages.search),
                ),
                SizedBox(
                  width: 25.w,
                ),
                SizedBox(
                  height: 29.h,
                  width: 29.w,
                  child: Image.asset(AppImages.heart),
                ),
                SizedBox(width: 25.w),
                BlocBuilder<HomeBloc, HomeState>(
                  buildWhen: (previous, current) => previous.loadHomeStatus != current.loadHomeStatus,
                  builder: (context, state) {
                    final cartActive = state.homeData.cartcount != null && state.homeData.cartcount != 0;
                    return Badge.count(
                      isLabelVisible: cartActive,
                      count: cartActive ? state.homeData.cartcount! : 0,
                      child: SizedBox(
                        height: 29.h,
                        width: 29.w,
                        child: Image.asset(AppImages.shop),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
