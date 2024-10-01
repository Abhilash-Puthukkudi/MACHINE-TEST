import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/src/application/core/status.dart';
import 'package:machine_test/src/application/home/home_bloc.dart';
import 'package:machine_test/src/domain/core/app_url/app_urls.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BannerOne extends StatelessWidget {
  const BannerOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous.loadHomeStatus != current.loadHomeStatus,
        builder: (context, state) {
          if (state.loadHomeStatus is StatusLoading) {
            return SizedBox(
              height: 240.h,
              child: Skeletonizer(
                enabled: true,
                child: Container(
                  height: 240.h,
                ),
              ),
            );
          } else if (state.loadHomeStatus is StatusSuccess && state.homeData.banner1 != null) {
            // Show the actual content when the data is successfully fetched
            return SizedBox(
              child: Container(
                padding: EdgeInsets.only(bottom: 10.h), // Padding of 10 at the bottom
                height: 240.h,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(AppUrls.bannerImageBaseUrl + state.homeData.banner1![0].image!),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomRight, // Align the yellow container to bottom right
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.h, right: 10.w), // Adding padding around the container
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      width: 100.w, // Example width for the yellow container
                      height: 30.h, // Example height for the yellow container
                      child: Center(
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else if (state.loadHomeStatus is StatusFailure) {
            final status = state.loadHomeStatus as StatusFailure;
            return Center(
              child: Text(status.errorMessage),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
