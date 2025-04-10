part of '../../twa.dart';

final class RequestContactResultResponse extends Equatable {
  final TelegramContact contact;
  final int authDate;
  final String hash;

  final String raw;

  const RequestContactResultResponse({
    required this.contact,
    required this.authDate,
    required this.hash,
    required this.raw,
  });

  const RequestContactResultResponse.fake({
    this.contact = const TelegramContact.fake(),
    this.authDate = 0,
    this.hash = 'fake',
    this.raw = 'fake',
  });

  static RequestContactResultResponse fromRawString(String raw) {
    final str = Uri.decodeQueryComponent(raw);
    final Map<String, dynamic> json = {};

    for (final String pair in str.split('&')) {
      final List<String> keyValue = pair.split('=');

      if (keyValue.length == 2) {
        json[keyValue[0]] = keyValue[1];
      }
    }
    if (json['contact'] case String contact) {
      json['contact'] = jsonDecode(contact);
    }
    return RequestContactResultResponse(
      contact: TelegramContact(
        phoneNumber: json['contact']['phone_number'],
        firstName: json['contact']['first_name'],
        lastName: json['contact']['last_name'] ?? '',
        userId: int.parse(json['contact']['user_id'].toString()),
      ),
      authDate: int.parse(json['auth_date']),
      hash: json['hash'],
      raw: raw,
    );
  }

  @override
  List<String> get props => ["contact: $contact", "authDate: $authDate", "hash: $hash", "raw: $raw"];
}
