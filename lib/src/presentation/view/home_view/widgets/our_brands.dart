import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/src/application/core/status.dart';
import 'package:machine_test/src/application/home/home_bloc.dart';
import 'package:machine_test/src/domain/core/app_url/app_urls.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OurBrands extends StatelessWidget {
  const OurBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
      height: 180.h,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.loadHomeStatus is StatusLoading) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Skeletonizer(
                  enabled: true,
                  child: Container(
                    margin: EdgeInsets.only(left: index == 0 ? 16 : 0, right: 16.w),
                    width: 114.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://swan.alisonsnewdemo.online/images/banner/1695716382_1_sH4k9mEPpOeGBInBvUUc9G2X3tXUhPE41ZH3Vp5B.webp",
                            ),
                            fit: BoxFit.fitHeight)),
                  ),
                );
              },
            );
          } else if (state.loadHomeStatus is StatusSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.homeData.banner3?.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: index == 0 ? 16 : 0, right: 16.w),
                  width: 114.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      image: DecorationImage(
                          image: NetworkImage(
                            AppUrls.bannerImageBaseUrl + state.homeData.banner3![index].image.toString(),
                          ),
                          fit: BoxFit.fitHeight)),
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    ));
  }
}
