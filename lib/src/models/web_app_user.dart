part of '../../twa.dart';

final class WebAppUser extends Equatable {
  final int id;

  final bool? isBot;

  final String firstName;

  final String? lastName;

  final String? username;

  final String? languageCode;

  final bool? isPremium;

  final bool? addedToAttachmentMenu;

  final bool? allowsWriteToPm;

  final String? photoUrl;

  const WebAppUser({
    required this.id,
    required this.isBot,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.languageCode,
    required this.isPremium,
    required this.addedToAttachmentMenu,
    required this.allowsWriteToPm,
    required this.photoUrl,
  });

  WebAppUser.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int,
      isBot = json['is_bot'] as bool?,
      firstName = json['first_name'] as String,
      lastName = json['last_name'] as String?,
      username = json['username'] as String?,
      languageCode = json['language_code'] as String?,
      isPremium = json['is_premium'] as bool?,
      addedToAttachmentMenu = json['added_to_attachment_menu'] as bool?,
      allowsWriteToPm = json['allows_write_to_pm'] as bool?,
      photoUrl = json['photo_url'] as String?;

  const WebAppUser.fake({
    this.id = -1,
    this.isBot = false,
    this.firstName = 'fake',
    this.lastName = 'fake',
    this.username = 'fake',
    this.languageCode = 'fake',
    this.isPremium = false,
    this.addedToAttachmentMenu = false,
    this.allowsWriteToPm = false,
    this.photoUrl = 'fake',
  });

  @override
  List<String> get props => [
    "id: $id",
    "isBot: $isBot",
    "firstName: $firstName",
    "lastName: $lastName",
    "username: $username",
    "languageCode: $languageCode",
    "isPremium: $isPremium",
    "addedToAttachmentMenu: $addedToAttachmentMenu",
    "allowsWriteToPm: $allowsWriteToPm",
    "photoUrl: $photoUrl",
  ];
}
