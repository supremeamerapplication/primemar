class SecurityService {
  static bool isMessageLimitExceeded(int countLastMinute) {
    return countLastMinute >= 30;
  }
}
