// // To parse this JSON data, do
// //
// //     final apiResponse = apiResponseFromMap(jsonString);

// import 'dart:convert';

// class ApiResponse {
//   ApiResponse({
//     this.success,
//     this.message,
//     this.data,
//   });

//   final bool success;
//   final String message;
//   final Data data;

//   factory ApiResponse.fromJson(String str) =>
//       ApiResponse.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory ApiResponse.fromMap(Map<String, dynamic> json) => ApiResponse(
//         success: json["success"] == null ? null : json["success"],
//         message: json["message"] == null ? null : json["message"],
//         data: json["data"] == null ? null : Data.fromMap(json["data"]),
//       );

//   Map<String, dynamic> toMap() => {
//         "success": success == null ? null : success,
//         "message": message == null ? null : message,
//         "data": data == null ? null : data.toMap(),
//       };
// }

// class Data {
//   Data({
//     this.clusterPurseBalance,
//     this.totalInterestEarned,
//     this.totalOwedByMembers,
//     this.overdueAgents,
//     this.clusterName,
//     this.clusterRepaymentRate,
//     this.clusterRepaymentDay,
//     this.dueAgents,
//     this.activeAgents,
//     this.inactiveAgents,
//   });

//   final int clusterPurseBalance;
//   final int totalInterestEarned;
//   final int totalOwedByMembers;
//   final List<dynamic> overdueAgents;
//   final String clusterName;
//   final double clusterRepaymentRate;
//   final String clusterRepaymentDay;
//   final List<dynamic> dueAgents;
//   final List<ActiveAgent> activeAgents;
//   final List<ActiveAgent> inactiveAgents;

//   factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Data.fromMap(Map<String, dynamic> json) => Data(
//         clusterPurseBalance: json["cluster_purse_balance"] == null
//             ? null
//             : json["cluster_purse_balance"],
//         totalInterestEarned: json["total_interest_earned"] == null
//             ? null
//             : json["total_interest_earned"],
//         totalOwedByMembers: json["total_owed_by_members"] == null
//             ? null
//             : json["total_owed_by_members"],
//         overdueAgents: json["overdue_agents"] == null
//             ? null
//             : List<dynamic>.from(json["overdue_agents"].map((x) => x)),
//         clusterName: json["cluster_name"] == null ? null : json["cluster_name"],
//         clusterRepaymentRate: json["cluster_repayment_rate"] == null
//             ? null
//             : json["cluster_repayment_rate"].toDouble(),
//         clusterRepaymentDay: json["cluster_repayment_day"] == null
//             ? null
//             : json["cluster_repayment_day"],
//         dueAgents: json["due_agents"] == null
//             ? null
//             : List<dynamic>.from(json["due_agents"].map((x) => x)),
//         activeAgents: json["active_agents"] == null
//             ? null
//             : List<ActiveAgent>.from(
//                 json["active_agents"].map((x) => ActiveAgent.fromMap(x))),
//         inactiveAgents: json["inactive_agents"] == null
//             ? null
//             : List<ActiveAgent>.from(
//                 json["inactive_agents"].map((x) => ActiveAgent.fromMap(x))),
//       );

//   Map<String, dynamic> toMap() => {
//         "cluster_purse_balance":
//             clusterPurseBalance == null ? null : clusterPurseBalance,
//         "total_interest_earned":
//             totalInterestEarned == null ? null : totalInterestEarned,
//         "total_owed_by_members":
//             totalOwedByMembers == null ? null : totalOwedByMembers,
//         "overdue_agents": overdueAgents == null
//             ? null
//             : List<dynamic>.from(overdueAgents.map((x) => x)),
//         "cluster_name": clusterName == null ? null : clusterName,
//         "cluster_repayment_rate":
//             clusterRepaymentRate == null ? null : clusterRepaymentRate,
//         "cluster_repayment_day":
//             clusterRepaymentDay == null ? null : clusterRepaymentDay,
//         "due_agents": dueAgents == null
//             ? null
//             : List<dynamic>.from(dueAgents.map((x) => x)),
//         "active_agents": activeAgents == null
//             ? null
//             : List<dynamic>.from(activeAgents.map((x) => x.toMap())),
//         "inactive_agents": inactiveAgents == null
//             ? null
//             : List<dynamic>.from(inactiveAgents.map((x) => x.toMap())),
//       };
// }

// class ActiveAgent {
//   ActiveAgent({
//     this.id,
//     this.userId,
//     this.agentId,
//     this.clusterId,
//     this.statusId,
//     this.acceptedAt,
//     this.createdAt,
//     this.agent,
//   });

//   final String id;
//   final String userId;
//   final String agentId;
//   final String clusterId;
//   final int statusId;
//   final DateTime acceptedAt;
//   final DateTime createdAt;
//   final Agent agent;

//   factory ActiveAgent.fromJson(String str) =>
//       ActiveAgent.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory ActiveAgent.fromMap(Map<String, dynamic> json) => ActiveAgent(
//         id: json["id"] == null ? null : json["id"],
//         userId: json["user_id"] == null ? null : json["user_id"],
//         agentId: json["agent_id"] == null ? null : json["agent_id"],
//         clusterId: json["cluster_id"] == null ? null : json["cluster_id"],
//         statusId: json["status_id"] == null ? null : json["status_id"],
//         acceptedAt: json["accepted_at"] == null
//             ? null
//             : DateTime.parse(json["accepted_at"]),
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         agent: json["agent"] == null ? null : Agent.fromMap(json["agent"]),
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id == null ? null : id,
//         "user_id": userId == null ? null : userId,
//         "agent_id": agentId == null ? null : agentId,
//         "cluster_id": clusterId == null ? null : clusterId,
//         "status_id": statusId == null ? null : statusId,
//         "accepted_at": acceptedAt == null ? null : acceptedAt.toIso8601String(),
//         "created_at": createdAt == null ? null : createdAt.toIso8601String(),
//         "agent": agent == null ? null : agent.toMap(),
//       };
// }

// class Agent {
//   Agent({
//     this.id,
//     this.userId,
//     this.moniId,
//     this.eligibleLoanId,
//     this.firstName,
//     this.middleName,
//     this.lastName,
//     this.nickname,
//     this.birthDate,
//     this.gender,
//     this.businessName,
//     this.maritalStatus,
//     this.education,
//     this.houseAddress,
//     this.shopAddress,
//     this.lga,
//     this.city,
//     this.state,
//     this.country,
//     this.phoneNumber,
//     this.emailAddress,
//     this.bvn,
//     this.hasCreditHistory,
//     this.verified,
//     this.referralLink,
//     this.mediaUrl,
//     this.channel,
//     this.agentRepaymentRate,
//     this.bvnVerifiedAfter,
//     this.loanEnabled,
//     this.statusId,
//     this.eligibleLoanModifiedAt,
//     this.createdAt,
//     this.modifiedAt,
//     this.capAgentLoan,
//     this.loanCount,
//     this.recentLoan,
//     this.suspended,
//   });

//   final String id;
//   final String userId;
//   final dynamic moniId;
//   final String eligibleLoanId;
//   final String firstName;
//   final String middleName;
//   final String lastName;
//   final String nickname;
//   final DateTime birthDate;
//   final String gender;
//   final String businessName;
//   final String maritalStatus;
//   final String education;
//   final String houseAddress;
//   final String shopAddress;
//   final String lga;
//   final String city;
//   final String state;
//   final dynamic country;
//   final String phoneNumber;
//   final String emailAddress;
//   final String bvn;
//   final int hasCreditHistory;
//   final int verified;
//   final String referralLink;
//   final String mediaUrl;
//   final String channel;
//   final int agentRepaymentRate;
//   final int bvnVerifiedAfter;
//   final int loanEnabled;
//   final int statusId;
//   final DateTime eligibleLoanModifiedAt;
//   final DateTime createdAt;
//   final DateTime modifiedAt;
//   final int capAgentLoan;
//   final int loanCount;
//   final RecentLoan recentLoan;
//   final bool suspended;

//   factory Agent.fromJson(String str) => Agent.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Agent.fromMap(Map<String, dynamic> json) => Agent(
//         id: json["id"] == null ? null : json["id"],
//         userId: json["user_id"] == null ? null : json["user_id"],
//         moniId: json["moni_id"],
//         eligibleLoanId:
//             json["eligible_loan_id"] == null ? null : json["eligible_loan_id"],
//         firstName: json["first_name"] == null ? null : json["first_name"],
//         middleName: json["middle_name"] == null ? null : json["middle_name"],
//         lastName: json["last_name"] == null ? null : json["last_name"],
//         nickname: json["nickname"] == null ? null : json["nickname"],
//         birthDate: json["birth_date"] == null
//             ? null
//             : DateTime.parse(json["birth_date"]),
//         gender: json["gender"] == null ? null : json["gender"],
//         businessName:
//             json["business_name"] == null ? null : json["business_name"],
//         maritalStatus:
//             json["marital_status"] == null ? null : json["marital_status"],
//         education: json["education"] == null ? null : json["education"],
//         houseAddress:
//             json["house_address"] == null ? null : json["house_address"],
//         shopAddress: json["shop_address"] == null ? null : json["shop_address"],
//         lga: json["lga"] == null ? null : json["lga"],
//         city: json["city"] == null ? null : json["city"],
//         state: json["state"] == null ? null : json["state"],
//         country: json["country"],
//         phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
//         emailAddress:
//             json["email_address"] == null ? null : json["email_address"],
//         bvn: json["bvn"] == null ? null : json["bvn"],
//         hasCreditHistory: json["has_credit_history"] == null
//             ? null
//             : json["has_credit_history"],
//         verified: json["verified"] == null ? null : json["verified"],
//         referralLink:
//             json["referral_link"] == null ? null : json["referral_link"],
//         mediaUrl: json["media_url"] == null ? null : json["media_url"],
//         channel: json["channel"] == null ? null : json["channel"],
//         agentRepaymentRate: json["agent_repayment_rate"] == null
//             ? null
//             : json["agent_repayment_rate"],
//         bvnVerifiedAfter: json["bvn_verified_after"] == null
//             ? null
//             : json["bvn_verified_after"],
//         loanEnabled: json["loan_enabled"] == null ? null : json["loan_enabled"],
//         statusId: json["status_id"] == null ? null : json["status_id"],
//         eligibleLoanModifiedAt: json["eligible_loan_modified_at"] == null
//             ? null
//             : DateTime.parse(json["eligible_loan_modified_at"]),
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         modifiedAt: json["modified_at"] == null
//             ? null
//             : DateTime.parse(json["modified_at"]),
//         capAgentLoan:
//             json["cap_agent_loan"] == null ? null : json["cap_agent_loan"],
//         loanCount: json["loan_count"] == null ? null : json["loan_count"],
//         recentLoan: json["recent_loan"] == null
//             ? null
//             : RecentLoan.fromMap(json["recent_loan"]),
//         suspended: json["suspended"] == null ? null : json["suspended"],
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id == null ? null : id,
//         "user_id": userId == null ? null : userId,
//         "moni_id": moniId,
//         "eligible_loan_id": eligibleLoanId == null ? null : eligibleLoanId,
//         "first_name": firstName == null ? null : firstName,
//         "middle_name": middleName == null ? null : middleName,
//         "last_name": lastName == null ? null : lastName,
//         "nickname": nickname == null ? null : nickname,
//         "birth_date": birthDate == null ? null : birthDate.toIso8601String(),
//         "gender": gender == null ? null : gender,
//         "business_name": businessName == null ? null : businessName,
//         "marital_status": maritalStatus == null ? null : maritalStatus,
//         "education": education == null ? null : education,
//         "house_address": houseAddress == null ? null : houseAddress,
//         "shop_address": shopAddress == null ? null : shopAddress,
//         "lga": lga == null ? null : lga,
//         "city": city == null ? null : city,
//         "state": state == null ? null : state,
//         "country": country,
//         "phone_number": phoneNumber == null ? null : phoneNumber,
//         "email_address": emailAddress == null ? null : emailAddress,
//         "bvn": bvn == null ? null : bvn,
//         "has_credit_history":
//             hasCreditHistory == null ? null : hasCreditHistory,
//         "verified": verified == null ? null : verified,
//         "referral_link": referralLink == null ? null : referralLink,
//         "media_url": mediaUrl == null ? null : mediaUrl,
//         "channel": channel == null ? null : channel,
//         "agent_repayment_rate":
//             agentRepaymentRate == null ? null : agentRepaymentRate,
//         "bvn_verified_after":
//             bvnVerifiedAfter == null ? null : bvnVerifiedAfter,
//         "loan_enabled": loanEnabled == null ? null : loanEnabled,
//         "status_id": statusId == null ? null : statusId,
//         "eligible_loan_modified_at": eligibleLoanModifiedAt == null
//             ? null
//             : eligibleLoanModifiedAt.toIso8601String(),
//         "created_at": createdAt == null ? null : createdAt.toIso8601String(),
//         "modified_at": modifiedAt == null ? null : modifiedAt.toIso8601String(),
//         "cap_agent_loan": capAgentLoan == null ? null : capAgentLoan,
//         "loan_count": loanCount == null ? null : loanCount,
//         "recent_loan": recentLoan == null ? null : recentLoan.toMap(),
//         "suspended": suspended == null ? null : suspended,
//       };
// }

// class RecentLoan {
//   RecentLoan({
//     this.id,
//     this.agentId,
//     this.clusterId,
//     this.agentLoanId,
//     this.loanAmount,
//     this.createdAt,
//     this.agentLoan,
//   });

//   final String id;
//   final String agentId;
//   final String clusterId;
//   final String agentLoanId;
//   final int loanAmount;
//   final DateTime createdAt;
//   final AgentLoan agentLoan;

//   factory RecentLoan.fromJson(String str) =>
//       RecentLoan.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory RecentLoan.fromMap(Map<String, dynamic> json) => RecentLoan(
//         id: json["id"] == null ? null : json["id"],
//         agentId: json["agent_id"] == null ? null : json["agent_id"],
//         clusterId: json["cluster_id"] == null ? null : json["cluster_id"],
//         agentLoanId:
//             json["agent_loan_id"] == null ? null : json["agent_loan_id"],
//         loanAmount: json["loan_amount"] == null ? null : json["loan_amount"],
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         agentLoan: json["agent_loan"] == null
//             ? null
//             : AgentLoan.fromMap(json["agent_loan"]),
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id == null ? null : id,
//         "agent_id": agentId == null ? null : agentId,
//         "cluster_id": clusterId == null ? null : clusterId,
//         "agent_loan_id": agentLoanId == null ? null : agentLoanId,
//         "loan_amount": loanAmount == null ? null : loanAmount,
//         "created_at": createdAt == null ? null : createdAt.toIso8601String(),
//         "agent_loan": agentLoan == null ? null : agentLoan.toMap(),
//       };
// }

// class AgentLoan {
//   AgentLoan({
//     this.id,
//     this.agentId,
//     this.agentCreditScoreId,
//     this.loanId,
//     this.agentCardId,
//     this.interestType,
//     this.interestValue,
//     this.loanDurationType,
//     this.loanDuration,
//     this.loanDueDate,
//     this.daysPastDue,
//     this.loanAmount,
//     this.loanAmountDue,
//     this.loanInterestDue,
//     this.loanPaymentDate,
//     this.loanPaymentRate,
//     this.loanAmountPaid,
//     this.penaltyOutstanding,
//     this.penaltyPaid,
//     this.principalPaid,
//     this.principalOutstanding,
//     this.interestPaid,
//     this.interestOutstanding,
//     this.penaltyAmount,
//     this.loanStatus,
//     this.isMax,
//     this.statusId,
//     this.acceptTerms,
//     this.createdAt,
//     this.modifiedAt,
//     this.status,
//   });

//   final String id;
//   final String agentId;
//   final String agentCreditScoreId;
//   final String loanId;
//   final String agentCardId;
//   final String interestType;
//   final double interestValue;
//   final String loanDurationType;
//   final int loanDuration;
//   final DateTime loanDueDate;
//   final int daysPastDue;
//   final int loanAmount;
//   final int loanAmountDue;
//   final int loanInterestDue;
//   final DateTime loanPaymentDate;
//   final int loanPaymentRate;
//   final int loanAmountPaid;
//   final int penaltyOutstanding;
//   final int penaltyPaid;
//   final int principalPaid;
//   final int principalOutstanding;
//   final int interestPaid;
//   final int interestOutstanding;
//   final int penaltyAmount;
//   final Status loanStatus;
//   final int isMax;
//   final int statusId;
//   final int acceptTerms;
//   final DateTime createdAt;
//   final DateTime modifiedAt;
//   final Status status;

//   factory AgentLoan.fromJson(String str) => AgentLoan.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory AgentLoan.fromMap(Map<String, dynamic> json) => AgentLoan(
//         id: json["id"] == null ? null : json["id"],
//         agentId: json["agent_id"] == null ? null : json["agent_id"],
//         agentCreditScoreId: json["agent_credit_score_id"] == null
//             ? null
//             : json["agent_credit_score_id"],
//         loanId: json["loan_id"] == null ? null : json["loan_id"],
//         agentCardId:
//             json["agent_card_id"] == null ? null : json["agent_card_id"],
//         interestType:
//             json["interest_type"] == null ? null : json["interest_type"],
//         interestValue: json["interest_value"] == null
//             ? null
//             : json["interest_value"].toDouble(),
//         loanDurationType: json["loan_duration_type"] == null
//             ? null
//             : json["loan_duration_type"],
//         loanDuration:
//             json["loan_duration"] == null ? null : json["loan_duration"],
//         loanDueDate: json["loan_due_date"] == null
//             ? null
//             : DateTime.parse(json["loan_due_date"]),
//         daysPastDue:
//             json["days_past_due"] == null ? null : json["days_past_due"],
//         loanAmount: json["loan_amount"] == null ? null : json["loan_amount"],
//         loanAmountDue:
//             json["loan_amount_due"] == null ? null : json["loan_amount_due"],
//         loanInterestDue: json["loan_interest_due"] == null
//             ? null
//             : json["loan_interest_due"],
//         loanPaymentDate: json["loan_payment_date"] == null
//             ? null
//             : DateTime.parse(json["loan_payment_date"]),
//         loanPaymentRate: json["loan_payment_rate"] == null
//             ? null
//             : json["loan_payment_rate"],
//         loanAmountPaid:
//             json["loan_amount_paid"] == null ? null : json["loan_amount_paid"],
//         penaltyOutstanding: json["penalty_outstanding"] == null
//             ? null
//             : json["penalty_outstanding"],
//         penaltyPaid: json["penalty_paid"] == null ? null : json["penalty_paid"],
//         principalPaid:
//             json["principal_paid"] == null ? null : json["principal_paid"],
//         principalOutstanding: json["principal_outstanding"] == null
//             ? null
//             : json["principal_outstanding"],
//         interestPaid:
//             json["interest_paid"] == null ? null : json["interest_paid"],
//         interestOutstanding: json["interest_outstanding"] == null
//             ? null
//             : json["interest_outstanding"],
//         penaltyAmount:
//             json["penalty_amount"] == null ? null : json["penalty_amount"],
//         loanStatus: json["loan_status"] == null
//             ? null
//             : Status.fromMap(json["loan_status"]),
//         isMax: json["is_max"] == null ? null : json["is_max"],
//         statusId: json["status_id"] == null ? null : json["status_id"],
//         acceptTerms: json["accept_terms"] == null ? null : json["accept_terms"],
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         modifiedAt: json["modified_at"] == null
//             ? null
//             : DateTime.parse(json["modified_at"]),
//         status: json["status"] == null ? null : Status.fromMap(json["status"]),
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id == null ? null : id,
//         "agent_id": agentId == null ? null : agentId,
//         "agent_credit_score_id":
//             agentCreditScoreId == null ? null : agentCreditScoreId,
//         "loan_id": loanId == null ? null : loanId,
//         "agent_card_id": agentCardId == null ? null : agentCardId,
//         "interest_type": interestType == null ? null : interestType,
//         "interest_value": interestValue == null ? null : interestValue,
//         "loan_duration_type":
//             loanDurationType == null ? null : loanDurationType,
//         "loan_duration": loanDuration == null ? null : loanDuration,
//         "loan_due_date":
//             loanDueDate == null ? null : loanDueDate.toIso8601String(),
//         "days_past_due": daysPastDue == null ? null : daysPastDue,
//         "loan_amount": loanAmount == null ? null : loanAmount,
//         "loan_amount_due": loanAmountDue == null ? null : loanAmountDue,
//         "loan_interest_due": loanInterestDue == null ? null : loanInterestDue,
//         "loan_payment_date":
//             loanPaymentDate == null ? null : loanPaymentDate.toIso8601String(),
//         "loan_payment_rate": loanPaymentRate == null ? null : loanPaymentRate,
//         "loan_amount_paid": loanAmountPaid == null ? null : loanAmountPaid,
//         "penalty_outstanding":
//             penaltyOutstanding == null ? null : penaltyOutstanding,
//         "penalty_paid": penaltyPaid == null ? null : penaltyPaid,
//         "principal_paid": principalPaid == null ? null : principalPaid,
//         "principal_outstanding":
//             principalOutstanding == null ? null : principalOutstanding,
//         "interest_paid": interestPaid == null ? null : interestPaid,
//         "interest_outstanding":
//             interestOutstanding == null ? null : interestOutstanding,
//         "penalty_amount": penaltyAmount == null ? null : penaltyAmount,
//         "loan_status": loanStatus == null ? null : loanStatus.toMap(),
//         "is_max": isMax == null ? null : isMax,
//         "status_id": statusId == null ? null : statusId,
//         "accept_terms": acceptTerms == null ? null : acceptTerms,
//         "created_at": createdAt == null ? null : createdAt.toIso8601String(),
//         "modified_at": modifiedAt == null ? null : modifiedAt.toIso8601String(),
//         "status": status == null ? null : status.toMap(),
//       };
// }

// class Status {
//   Status({
//     this.id,
//     this.name,
//     this.label,
//     this.description,
//     this.createdAt,
//     this.modifiedAt,
//   });

//   final int id;
//   final String name;
//   final String label;
//   final String description;
//   final DateTime createdAt;
//   final DateTime modifiedAt;

//   factory Status.fromJson(String str) => Status.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Status.fromMap(Map<String, dynamic> json) => Status(
//         id: json["id"] == null ? null : json["id"],
//         name: json["name"] == null ? null : json["name"],
//         label: json["label"] == null ? null : json["label"],
//         description: json["description"] == null ? null : json["description"],
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         modifiedAt: json["modified_at"] == null
//             ? null
//             : DateTime.parse(json["modified_at"]),
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id == null ? null : id,
//         "name": name == null ? null : name,
//         "label": label == null ? null : label,
//         "description": description == null ? null : description,
//         "created_at": createdAt == null ? null : createdAt.toIso8601String(),
//         "modified_at": modifiedAt == null ? null : modifiedAt.toIso8601String(),
//       };
// }
