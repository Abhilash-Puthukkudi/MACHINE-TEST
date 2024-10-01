part of 'home_bloc.dart';

class HomeState extends Equatable {
  final Status loadHomeStatus;
  final HomeModel homeData;
  const HomeState({
    this.loadHomeStatus = const StatusInitial(),
    this.homeData = const HomeModel(),
  });

  @override
  List<Object> get props => [loadHomeStatus, homeData];

  HomeState copyWith({Status? loadHomeStatus, HomeModel? homeData}) {
    return HomeState(homeData: homeData ?? this.homeData, loadHomeStatus: loadHomeStatus ?? this.loadHomeStatus);
  }
}
