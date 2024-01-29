import 'dart:convert';

class SessionResponse {
	bool? success;
	String? sessionId;

	SessionResponse({this.success, this.sessionId});

	factory SessionResponse.fromMap(Map<String, dynamic> data) {
		return SessionResponse(
			success: data['success'] as bool?,
			sessionId: data['session_id'] as String?,
		);
	}



	Map<String, dynamic> toMap() => {
				'success': success,
				'session_id': sessionId,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SessionResponse].
	factory SessionResponse.fromJson(String data) {
		return SessionResponse.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [SessionResponse] to a JSON string.
	String toJson() => json.encode(toMap());
}
