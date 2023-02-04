import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    required this.email,
  });

  // const User.empty() : this(id: '', name: '', email: '');

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
 
  final String id;

  final String name;

  final String email;

   Map<String, dynamic> toJson() => _$UserToJson(this);


  User copyWith({String? id, String? name, String? email}) => User(
      id: id ?? this.id, name: name ?? this.name, email: email ?? this.email);

  @override
  List<Object?> get props => [id, name, email];
}
