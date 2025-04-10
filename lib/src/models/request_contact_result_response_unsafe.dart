part of '../../twa.dart';

final class RequestContactResultResponseUnsafe extends RequestContactResultResponse {
  const RequestContactResultResponseUnsafe({required super.contact, required super.authDate, required super.hash})
    : super(raw: "");

  const RequestContactResultResponseUnsafe.fake({
    super.contact = const TelegramContact.fake(),
    super.authDate = 0,
    super.hash = "fake",
  }) : super.fake(raw: "unsafe-fake");
}
