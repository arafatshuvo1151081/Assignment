void main() {

  var students = {
    'Alice': [85, 90, 78],
    'Bob': [88, 76, 95],
    'Charlie': [90, 92, 85],
  };


  var averageScores = {};


  students.forEach((name, scores) {
    double sum = 0;
    for (var score in scores) {
      sum += score;
    }
    double avg = sum / scores.length;


    averageScores[name] = double.parse(avg.toStringAsFixed(2));
  });


  var sortedList = averageScores.entries.toList();
  sortedList.sort((a, b) => b.value.compareTo(a.value));


  print('Sorted Averages:');
  for (var entry in sortedList) {
    print('${entry.key}: ${entry.value}');
  }
}