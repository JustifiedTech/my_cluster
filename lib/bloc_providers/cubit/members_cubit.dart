import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/api_response.dart';
import '../../repository/members_repository.dart';

part 'members_state.dart';

class MembersCubit extends Cubit<MembersState> {
  final MemberRepository memberRepository;

  MembersCubit(this.memberRepository) : super(MembersInitial()) {
    init();
  }

  void init() {
    memberRepository.getMembersData().then((value) {
      log(value.data!.toJson());
      emit(MembersLoaded(value.data!));
    }).catchError((e) {
      throw e;
    });
  }
}
