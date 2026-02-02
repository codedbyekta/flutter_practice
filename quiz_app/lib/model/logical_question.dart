class LogicalQuestion {
  late String question;
  late List<String> answer;
  late List<String> Ans;

    LogicalQuestion(question,answer){
      this.question = question;
      this.answer = answer;
      this.Ans = List.from(answer);
      this.Ans.shuffle();
    }
} 
