import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/src/application/home/home_bloc.dart';
import 'package:machine_test/src/presentation/view/home_view/widgets/banner_one.dart';
import 'package:machine_test/src/presentation/view/home_view/widgets/custom_app_bar.dart';
import 'package:machine_test/src/presentation/core/widgets/custom_heading.dart';
import 'package:machine_test/src/presentation/view/home_view/widgets/our_brands.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(LoadHomeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: ScreenUtil().screenWidth,
          height: ScreenUtil().screenHeight,
          child: CustomScrollView(
            slivers: [
              const CustomAppBar(),
              const BannerOne(),
              CustomHeading(
                ontap: () {},
                title: "Our Brands",
              ),
              const OurBrands(),
            ],
          ),
        ),
      ),
    );
  }
}
