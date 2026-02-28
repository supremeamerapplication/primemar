import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/message_model.dart';
import '../services/chat_service.dart';

final chatProvider = StateNotifierProvider<ChatNotifier, List<MessageModel>>((ref) => ChatNotifier());

class ChatNotifier extends StateNotifier<List<MessageModel>> {
  ChatNotifier(): super([]);

  Future<void> loadConversation(String user1, String user2) async {
    state = await ChatService.fetchConversation(user1, user2);
  }

  Future<void> sendMessage(MessageModel msg) async {
    await ChatService.sendMessage(msg);
    state = [...state, msg];
  }
}
