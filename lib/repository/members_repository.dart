import 'dart:convert';
import 'dart:developer';

import 'package:my_cluster/models/api_response.dart';

import '../service/api_service.dart';

class MemberRepository {
  final ApiService apiService;
  MemberRepository(this.apiService);

  Future<ApiResponse> getMembersData() async {
    final response = await apiService.getRequest();
    return ApiResponse.fromMap(response);
  }
}
