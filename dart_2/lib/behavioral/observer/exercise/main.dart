import 'package:dart_2/behavioral/observer/exercise/observer_exercise.dart';

void main() {
  final observerExercise = ObserverExercise();
  final taha = User('Taha');
  final mohamed = User('Mohamed');
  final ali = User('Ali');

  observerExercise.subscribe(SubscriptionType.post, taha);
  observerExercise.subscribe(SubscriptionType.newsLitter, taha);

  observerExercise.subscribe(SubscriptionType.post, mohamed);
  observerExercise.subscribe(SubscriptionType.newsLitter, ali);

  observerExercise.addNewPost(
    Post(title: 'First Post', content: 'First Post Content'),
  );
  observerExercise.addNewsLetter(
    NewsLetter(title: 'First NewsLitter', content: 'First NewsLitter Content'),
  );

  observerExercise.unSubscribe(SubscriptionType.post, taha);

  observerExercise.unSubscribe(SubscriptionType.newsLitter, ali);
  observerExercise.subscribe(SubscriptionType.post, ali);

  observerExercise.subscribe(SubscriptionType.newsLitter, mohamed);
  print('-----------------');
  observerExercise.addNewPost(
    Post(title: 'Second Post', content: 'Second Post Content'),
  );
  observerExercise.addNewsLetter(
    NewsLetter(
        title: 'Second NewsLitter', content: 'Second NewsLitter Content'),
  );
}
