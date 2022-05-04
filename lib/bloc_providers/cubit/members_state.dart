part of 'members_cubit.dart';

abstract class MembersState extends Equatable {
  const MembersState();
}
class MembersInitial extends MembersState {
  
  @override
  List<Object> get props => [];
}
class MembersLoaded extends MembersState {
  final Data memberData;

  const MembersLoaded(this.memberData);

  @override
  List<Object?> get props => [memberData];
}
