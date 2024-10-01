import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/src/application/core/status.dart';
import 'package:machine_test/src/domain/core/failures/api_failure.dart';
import 'package:machine_test/src/domain/core/models/response_models/home_model/home_model.dart';
import 'package:machine_test/src/domain/home/i_home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _iHomeRepository;
  HomeBloc(this._iHomeRepository) : super(const HomeState()) {
    on<LoadHomeEvent>(_loadHome);
  }
  FutureOr<void> _loadHome(LoadHomeEvent event, Emitter<HomeState> emit) async {
    try {
      emit(
        state.copyWith(loadHomeStatus: const StatusInitial(), homeData: const HomeModel()),
      );

      emit(
        state.copyWith(
          loadHomeStatus: StatusLoading(),
        ),
      );

      final res = await _iHomeRepository.loadHome();

      emit(state.copyWith(
        loadHomeStatus: StatusSuccess(),
        homeData: res,
      ));
    } on ApiFailure catch (e) {
      emit(state.copyWith(loadHomeStatus: StatusFailure(e.error!)));
    }
  }
}
