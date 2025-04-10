part of '../../twa.dart';

final class TelegramContact extends Equatable {
  final String phoneNumber;

  final String firstName;

  final String lastName;

  final int userId;

  const TelegramContact({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.userId,
  });

  const TelegramContact.fake({
    this.phoneNumber = 'fake',
    this.firstName = 'fake',
    this.lastName = 'fake',
    this.userId = -1,
  });

  @override
  List<String> get props => [
    "phoneNumber: $phoneNumber",
    "firstName: $firstName",
    "lastName: $lastName",
    "userId: $userId",
  ];
}
