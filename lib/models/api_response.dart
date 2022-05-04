// To parse this JSON data, do
//
//     final apiResponse = apiResponseFromMap(jsonString);

import 'dart:convert';

class ApiResponse {
  ApiResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  Data? data;

  factory ApiResponse.fromJson(String str) =>
      ApiResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ApiResponse.fromMap(Map<String, dynamic> json) => ApiResponse(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": data?.toMap(),
      };
}

class Data {
  Data({
    this.clusterPurseBalance,
    this.totalInterestEarned,
    this.totalOwedByMembers,
    this.overdueAgents,
    this.clusterName,
    this.clusterRepaymentRate,
    this.clusterRepaymentDay,
    this.dueAgents,
    this.activeAgents,
    this.inactiveAgents,
  });

  int? clusterPurseBalance;
  int? totalInterestEarned;
  int? totalOwedByMembers;
  List<AgentInfo>? overdueAgents;
  String? clusterName;
  double? clusterRepaymentRate;
  String? clusterRepaymentDay;
  List<AgentInfo>? dueAgents;
  List<AgentInfo>? activeAgents;
  List<AgentInfo>? inactiveAgents;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        clusterPurseBalance: json["cluster_purse_balance"],
        totalInterestEarned: json["total_interest_earned"],
        totalOwedByMembers: json["total_owed_by_members"],
        overdueAgents: json["overdue_agents"] == null
            ? null
            : List<AgentInfo>.from(json["overdue_agents"].map((x) => AgentInfo.fromMap(x))),
        clusterName: json["cluster_name"],
        clusterRepaymentRate: json["cluster_repayment_rate"]?.toDouble(),
        clusterRepaymentDay: json["cluster_repayment_day"],
        dueAgents: json["due_agents"] == null
            ? null
            : List<AgentInfo>.from(json["due_agents"].map((x) => AgentInfo.fromMap(x))),
        activeAgents: json["active_agents"] == null
            ? null
            : List<AgentInfo>.from(
                json["active_agents"].map((x) => AgentInfo.fromMap(x))),
        inactiveAgents: json["inactive_agents"] == null
            ? null
            : List<AgentInfo>.from(
                json["inactive_agents"].map((x) => AgentInfo.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "cluster_purse_balance": clusterPurseBalance,
        "total_interest_earned": totalInterestEarned,
        "total_owed_by_members": totalOwedByMembers,
        "overdue_agents": overdueAgents == null
            ? null
            : List<dynamic>.from(overdueAgents!.map((x) => x)),
        "cluster_name": clusterName,
        "cluster_repayment_rate": clusterRepaymentRate,
        "cluster_repayment_day": clusterRepaymentDay,
        "due_agents": dueAgents == null
            ? null
            : List<dynamic>.from(dueAgents!.map((x) => x)),
        "active_agents": activeAgents == null
            ? null
            : List<dynamic>.from(activeAgents!.map((x) => x.toMap())),
        "inactive_agents": inactiveAgents == null
            ? null
            : List<dynamic>.from(inactiveAgents!.map((x) => x.toMap())),
      };
}

class AgentInfo {
  AgentInfo({
    this.id,
    this.userId,
    this.agentId,
    this.clusterId,
    this.statusId,
    this.acceptedAt,
    this.createdAt,
    this.agent,
  });

  String? id;
  String? userId;
  String? agentId;
  String? clusterId;
  int? statusId;
  DateTime? acceptedAt;
  DateTime? createdAt;
  Agent? agent;

  factory AgentInfo.fromJson(String str) =>
      AgentInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AgentInfo.fromMap(Map<String, dynamic> json) => AgentInfo(
        id: json["id"],
        userId: json["user_id"],
        agentId: json["agent_id"],
        clusterId: json["cluster_id"],
        statusId: json["status_id"],
        acceptedAt: json["accepted_at"] == null
            ? null
            : DateTime.parse(json["accepted_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        agent: json["agent"] == null ? null : Agent.fromMap(json["agent"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "agent_id": agentId,
        "cluster_id": clusterId,
        "status_id": statusId,
        "accepted_at": acceptedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "agent": agent?.toMap(),
      };
}

class Agent {
  Agent({
    this.id,
    this.userId,
    this.moniId,
    this.eligibleLoanId,
    this.firstName,
    this.middleName,
    this.lastName,
    this.nickname,
    this.birthDate,
    this.gender,
    this.businessName,
    this.maritalStatus,
    this.education,
    this.houseAddress,
    this.shopAddress,
    this.lga,
    this.city,
    this.state,
    this.country,
    this.phoneNumber,
    this.emailAddress,
    this.bvn,
    this.hasCreditHistory,
    this.verified,
    this.referralLink,
    this.mediaUrl,
    this.channel,
    this.agentRepaymentRate,
    this.bvnVerifiedAfter,
    this.loanEnabled,
    this.statusId,
    this.eligibleLoanModifiedAt,
    this.createdAt,
    this.modifiedAt,
    this.capAgentLoan,
    this.loanCount,
    this.recentLoan,
    this.suspended,
  });

  String? id;
  String? userId;
  dynamic moniId;
  String? eligibleLoanId;
  String? firstName;
  String? middleName;
  String? lastName;
  String? nickname;
  DateTime? birthDate;
  String? gender;
  String? businessName;
  String? maritalStatus;
  String? education;
  String? houseAddress;
  String? shopAddress;
  String? lga;
  String? city;
  String? state;
  dynamic country;
  String? phoneNumber;
  String? emailAddress;
  String? bvn;
  int? hasCreditHistory;
  int? verified;
  String? referralLink;
  String? mediaUrl;
  String? channel;
  int? agentRepaymentRate;
  int? bvnVerifiedAfter;
  int? loanEnabled;
  int? statusId;
  DateTime? eligibleLoanModifiedAt;
  DateTime? createdAt;
  DateTime? modifiedAt;
  int? capAgentLoan;
  int? loanCount;
  RecentLoan? recentLoan;
  bool? suspended;

  factory Agent.fromJson(String str) => Agent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Agent.fromMap(Map<String, dynamic> json) => Agent(
        id: json["id"],
        userId: json["user_id"],
        moniId: json["moni_id"],
        eligibleLoanId: json["eligible_loan_id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        nickname: json["nickname"],
        birthDate: json["birth_date"] == null
            ? null
            : DateTime?.parse(json["birth_date"]),
        gender: json["gender"],
        businessName: json["business_name"],
        maritalStatus: json["marital_status"],
        education: json["education"],
        houseAddress: json["house_address"],
        shopAddress: json["shop_address"],
        lga: json["lga"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        phoneNumber: json["phone_number"],
        emailAddress: json["email_address"],
        bvn: json["bvn"],
        hasCreditHistory: json["has_credit_history"],
        verified: json["verified"],
        referralLink: json["referral_link"],
        mediaUrl: json["media_url"],
        channel: json["channel"],
        agentRepaymentRate: json["agent_repayment_rate"],
        bvnVerifiedAfter: json["bvn_verified_after"],
        loanEnabled: json["loan_enabled"],
        statusId: json["status_id"],
        eligibleLoanModifiedAt: json["eligible_loan_modified_at"] == null
            ? null
            : DateTime.parse(json["eligible_loan_modified_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        modifiedAt: json["modified_at"] == null
            ? null
            : DateTime.parse(json["modified_at"]),
        capAgentLoan: json["cap_agent_loan"],
        loanCount: json["loan_count"],
        recentLoan: json["recent_loan"] == null
            ? null
            : RecentLoan.fromMap(json["recent_loan"]),
        suspended: json["suspended"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "moni_id": moniId,
        "eligible_loan_id": eligibleLoanId,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "nickname": nickname,
        "birth_date": birthDate?.toIso8601String(),
        "gender": gender,
        "business_name": businessName,
        "marital_status": maritalStatus,
        "education": education,
        "house_address": houseAddress,
        "shop_address": shopAddress,
        "lga": lga,
        "city": city,
        "state": state,
        "country": country,
        "phone_number": phoneNumber,
        "email_address": emailAddress,
        "bvn": bvn,
        "has_credit_history": hasCreditHistory,
        "verified": verified,
        "referral_link": referralLink,
        "media_url": mediaUrl,
        "channel": channel,
        "agent_repayment_rate": agentRepaymentRate,
        "bvn_verified_after": bvnVerifiedAfter,
        "loan_enabled": loanEnabled,
        "status_id": statusId,
        "eligible_loan_modified_at": eligibleLoanModifiedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "modified_at": modifiedAt?.toIso8601String(),
        "cap_agent_loan": capAgentLoan,
        "loan_count": loanCount,
        "recent_loan": recentLoan?.toMap(),
        "suspended": suspended,
      };
}

class RecentLoan {
  RecentLoan({
    this.id,
    this.agentId,
    this.clusterId,
    this.agentLoanId,
    this.loanAmount,
    this.createdAt,
    this.agentLoan,
  });

  String? id;
  String? agentId;
  String? clusterId;
  String? agentLoanId;
  int? loanAmount;
  DateTime? createdAt;
  AgentLoan? agentLoan;

  factory RecentLoan.fromJson(String str) =>
      RecentLoan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RecentLoan.fromMap(Map<String, dynamic> json) => RecentLoan(
        id: json["id"],
        agentId: json["agent_id"],
        clusterId: json["cluster_id"],
        agentLoanId: json["agent_loan_id"],
        loanAmount: json["loan_amount"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        agentLoan: json["agent_loan"] == null
            ? null
            : AgentLoan.fromMap(json["agent_loan"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "agent_id": agentId,
        "cluster_id": clusterId,
        "agent_loan_id": agentLoanId,
        "loan_amount": loanAmount,
        "created_at": createdAt?.toIso8601String(),
        "agent_loan": agentLoan?.toMap(),
      };
}

class AgentLoan {
  AgentLoan({
    this.id,
    this.agentId,
    this.agentCreditScoreId,
    this.loanId,
    this.agentCardId,
    this.interestType,
    this.interestValue,
    this.loanDurationType,
    this.loanDuration,
    this.loanDueDate,
    this.daysPastDue,
    this.loanAmount,
    this.loanAmountDue,
    this.loanInterestDue,
    this.loanPaymentDate,
    this.loanPaymentRate,
    this.loanAmountPaid,
    this.penaltyOutstanding,
    this.penaltyPaid,
    this.principalPaid,
    this.principalOutstanding,
    this.interestPaid,
    this.interestOutstanding,
    this.penaltyAmount,
    this.loanStatus,
    this.isMax,
    this.statusId,
    this.acceptTerms,
    this.createdAt,
    this.modifiedAt,
    this.status,
  });

  String? id;
  String? agentId;
  String? agentCreditScoreId;
  String? loanId;
  String? agentCardId;
  String? interestType;
  double? interestValue;
  String? loanDurationType;
  int? loanDuration;
  DateTime? loanDueDate;
  int? daysPastDue;
  int? loanAmount;
  int? loanAmountDue;
  int? loanInterestDue;
  DateTime? loanPaymentDate;
  int? loanPaymentRate;
  int? loanAmountPaid;
  int? penaltyOutstanding;
  int? penaltyPaid;
  int? principalPaid;
  int? principalOutstanding;
  int? interestPaid;
  int? interestOutstanding;
  int? penaltyAmount;
  Status? loanStatus;
  int? isMax;
  int? statusId;
  int? acceptTerms;
  DateTime? createdAt;
  DateTime? modifiedAt;
  Status? status;

  factory AgentLoan.fromJson(String str) => AgentLoan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AgentLoan.fromMap(Map<String, dynamic> json) => AgentLoan(
        id: json["id"],
        agentId: json["agent_id"],
        agentCreditScoreId: json["agent_credit_score_id"],
        loanId: json["loan_id"],
        agentCardId: json["agent_card_id"],
        interestType: json["interest_type"],
        interestValue: json["interest_value"]?.toDouble(),
        loanDurationType: json["loan_duration_type"],
        loanDuration: json["loan_duration"],
        loanDueDate: json["loan_due_date"] == null
            ? null
            : DateTime.parse(json["loan_due_date"]),
        daysPastDue: json["days_past_due"],
        loanAmount: json["loan_amount"],
        loanAmountDue: json["loan_amount_due"],
        loanInterestDue: json["loan_interest_due"],
        loanPaymentDate: json["loan_payment_date"] == null
            ? null
            : DateTime.parse(json["loan_payment_date"]),
        loanPaymentRate: json["loan_payment_rate"],
        loanAmountPaid: json["loan_amount_paid"],
        penaltyOutstanding: json["penalty_outstanding"],
        penaltyPaid: json["penalty_paid"],
        principalPaid: json["principal_paid"],
        principalOutstanding: json["principal_outstanding"],
        interestPaid: json["interest_paid"],
        interestOutstanding: json["interest_outstanding"],
        penaltyAmount: json["penalty_amount"],
        loanStatus: json["loan_status"] == null
            ? null
            : Status.fromMap(json["loan_status"]),
        isMax: json["is_max"],
        statusId: json["status_id"],
        acceptTerms: json["accept_terms"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        modifiedAt: json["modified_at"] == null
            ? null
            : DateTime.parse(json["modified_at"]),
        status: json["status"] == null ? null : Status.fromMap(json["status"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "agent_id": agentId,
        "agent_credit_score_id": agentCreditScoreId,
        "loan_id": loanId,
        "agent_card_id": agentCardId,
        "interest_type": interestType,
        "interest_value": interestValue,
        "loan_duration_type": loanDurationType,
        "loan_duration": loanDuration,
        "loan_due_date": loanDueDate?.toIso8601String(),
        "days_past_due": daysPastDue,
        "loan_amount": loanAmount,
        "loan_amount_due": loanAmountDue,
        "loan_interest_due": loanInterestDue,
        "loan_payment_date": loanPaymentDate?.toIso8601String(),
        "loan_payment_rate": loanPaymentRate,
        "loan_amount_paid": loanAmountPaid,
        "penalty_outstanding": penaltyOutstanding,
        "penalty_paid": penaltyPaid,
        "principal_paid": principalPaid,
        "principal_outstanding": principalOutstanding,
        "interest_paid": interestPaid,
        "interest_outstanding": interestOutstanding,
        "penalty_amount": penaltyAmount,
        "loan_status": loanStatus?.toMap(),
        "is_max": isMax,
        "status_id": statusId,
        "accept_terms": acceptTerms,
        "created_at": createdAt?.toIso8601String(),
        "modified_at": modifiedAt?.toIso8601String(),
        "status": status?.toMap(),
      };
}

class Status {
  Status({
    this.id,
    this.name,
    this.label,
    this.description,
    this.createdAt,
    this.modifiedAt,
  });

  int? id;
  String? name;
  String? label;
  String? description;
  DateTime? createdAt;
  DateTime? modifiedAt;

  factory Status.fromJson(String str) => Status.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Status.fromMap(Map<String, dynamic> json) => Status(
        id: json["id"],
        name: json["name"],
        label: json["label"],
        description: json["description"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        modifiedAt: json["modified_at"] == null
            ? null
            : DateTime.parse(json["modified_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "label": label,
        "description": description,
        "created_at": createdAt?.toIso8601String(),
        "modified_at": modifiedAt?.toIso8601String(),
      };
}
