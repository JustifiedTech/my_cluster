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
      emit(MembersLoaded(value.data ?? Data()));
    }).catchError((e) {
      throw e;
    });
  }
}
