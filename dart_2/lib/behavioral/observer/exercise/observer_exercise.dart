class ObserverExercise {
  final Map<SubscriptionType, List<Subscriber>> subscribers;
  final List<Post> posts = [];
  final List<NewsLetter> newsletter = [];

  ObserverExercise()
      : subscribers = {
          SubscriptionType.post: [],
          SubscriptionType.newsLitter: [],
        };

  void subscribe(SubscriptionType type, Subscriber subscriber) {
    subscribers[type]!.add(subscriber);
  }

  void unSubscribe(SubscriptionType type, Subscriber subscriber) {
    subscribers[type]!.remove(subscriber);
  }

  void addNewPost(Post post) {
    posts.add(post);
    notifySubscribers(
      SubscriptionType.post,
      'New Post is published with title ${post.title}',
    );
  }

  void addNewsLetter(NewsLetter newsLetter) {
    newsletter.add(newsLetter);
    notifySubscribers(
      SubscriptionType.newsLitter,
      'New newsletter is published with title ${newsLetter.title}',
    );
  }

  void notifySubscribers(SubscriptionType type, String message) {
    for (var subscriber in subscribers[type]!) {
      subscriber.notify(message);
    }
  }
}

abstract class Subscriber {
  void notify(String message);
}

enum SubscriptionType { post, newsLitter }

class User implements Subscriber {
  final String name;

  User(this.name);

  @override
  notify(String message) {
    print('Notifying $name with $message');
  }
}

class Post {
  final String title;
  final String content;

  Post({required this.title, required this.content});
}

class NewsLetter {
  final String title;
  final String content;

  NewsLetter({required this.title, required this.content});
}
