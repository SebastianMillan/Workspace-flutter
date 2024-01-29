import 'dart:convert';

class RequestTokenResponse {
	bool? success;
	String? expiresAt;
	String? requestToken;

	RequestTokenResponse({this.success, this.expiresAt, this.requestToken});

	factory RequestTokenResponse.fromMap(Map<String, dynamic> data) {
		return RequestTokenResponse(
			success: data['success'] as bool?,
			expiresAt: data['expires_at'] as String?,
			requestToken: data['request_token'] as String?,
		);
	}



	Map<String, dynamic> toMap() => {
				'success': success,
				'expires_at': expiresAt,
				'request_token': requestToken,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RequestTokenResponse].
	factory RequestTokenResponse.fromJson(String data) {
		return RequestTokenResponse.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [RequestTokenResponse] to a JSON string.
	String toJson() => json.encode(toMap());
}
