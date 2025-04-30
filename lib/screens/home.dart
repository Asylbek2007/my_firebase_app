import 'package:flutter/material.dart';
import 'domain/workout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text('MaxFit'),
          leading: Icon(Icons.fitness_center),
        ),
        body: WorkoutsList(),
      ),
    );
  }
}

class WorkoutsList extends StatelessWidget {
  final workouts = <Workout>[
    Workout(
      title: 'Test1',
      author: 'Max1',
      description: 'Test Workout1',
      level: 'Beginner',
    ),
    Workout(
      title: 'Test2',
      author: 'Max2',
      description: 'Test Workout2',
      level: 'Intermediate',
    ),
    Workout(
      title: 'Test3',
      author: 'Max3',
      description: 'Test Workout3',
      level: 'Advanced',
    ),
    Workout(
      title: 'Test4',
      author: 'Max4',
      description: 'Test Workout4',
      level: 'Beginner',
    ),
    Workout(
      title: 'Test5',
      author: 'Max5',
      description: 'Test Workout5',
      level: 'Intermediate',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView.builder(
          itemCount: workouts.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(50, 65, 85, 0.9),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.fitness_center, color: Colors.white),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 2, color: Colors.white24),
                      ),
                    ),
                  ),
                  title: Text(
                    workouts[i].title,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.titleMedium?.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white24,
                  ),
                  subtitle: subtitle(context, workouts[i]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget subtitle(BuildContext context, Workout workout) {
  var color = Colors.grey;
  double indicatorLevel = 0;
  switch (workout.level) {
    case 'Beginner':
      indicatorLevel = 0.33;
      color = Colors.green;
      break;
    case 'Intermediate':
      indicatorLevel = 0.66;
      color = Colors.orange;
      break;
    case 'Advanced':
      indicatorLevel = 1;
      color = Colors.red;
      break;
  }
  return Row(
    children: <Widget>[
      Expanded(
        flex: 1,
        child: LinearProgressIndicator(
          backgroundColor: Colors.white,
          value: indicatorLevel,
          valueColor: AlwaysStoppedAnimation(color),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(workout.level, style: TextStyle(color: Colors.white54)),
        flex: 3,
      ),
    ],
  );
}
