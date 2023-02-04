import 'package:users_api/src/data/models/models.dart';

abstract class UserDataSource {
  /// Retourne la liste de tous les [User].
  Future<List<User>> getAllUsers();

  /// Renvoie un [User] en fonction de l'[id] fourni.
  /// Renvoie un [User] en fonction de l'[id] fourni.
  Future<User> getUserById({required String id});
}
