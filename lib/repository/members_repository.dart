import '../service/api_service.dart';

class MemberRepository {
  final ApiService apiService;
  MemberRepository(this.apiService)

  Future<ApiResponse> getMembersData(int page) async {
    return apiService.getRequest<ApiResponse>(
      transform: (dynamic res) {
        final response = ApiResponse.fromMap(res['data']);
        return response;
      },
    );
  }
}
