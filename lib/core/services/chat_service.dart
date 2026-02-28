import 'supabase_service.dart';
import '../models/message_model.dart';

class ChatService {
  static Future<List<MessageModel>> fetchConversation(String user1, String user2) async {
    final res = await SupabaseService.client
        .from('messages')
        .select()
        .or('sender_id.eq.$user1,receiver_id.eq.$user2')
        .order('created_at', ascending: true);
    return (res as List).map((e) => MessageModel.fromJson(e)).toList();
  }

  static Future<void> sendMessage(MessageModel message) async {
    await SupabaseService.client.from('messages').insert({
      'sender_id': message.senderId,
      'receiver_id': message.receiverId,
      'content': message.content,
      'is_read': message.isRead,
    });
  }
}
