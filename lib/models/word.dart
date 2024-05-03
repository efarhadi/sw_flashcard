class Word {
  String name;
  String meaning;
  String sound;

  Word(this.name, this.meaning, this.sound);

  factory Word.fromJson(Map<String, dynamic> jsonMapObject) {
    return Word(
      jsonMapObject['name'],
      jsonMapObject['meaning'],
      jsonMapObject['sound'],
    );
  }
}
