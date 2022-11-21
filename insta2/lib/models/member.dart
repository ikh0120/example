class Member {
  late String name;
  late String id;
  late String password;

  List<Member> Members = [];

  Member({
    required this.name,
    required this.id,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': name,
      'title': id,
      'password': password,
    };
  }

  void addMember(Member member) {
    Member newMember =
        Member(name: member.name, id: member.id, password: member.password);

    Members.add(newMember);
  }

  void deleteMember(Member member) {
    for (int i = 0; i < Members.length; i++) {
      if (Members[i].id == member.id) {
        Members.removeAt(i);
      }
    }
  }
}
