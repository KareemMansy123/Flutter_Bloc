abstract class NewsStatus {}

class NewsInitState extends NewsStatus{}

class NewsBottomNavState extends NewsStatus{}

class NewsBusinessSuccessLoadingState extends NewsStatus{}

class NewsGetBusinessSuccessState extends NewsStatus{}

class NewsGetBusinessErrorState extends NewsStatus{
  final String error ;

  NewsGetBusinessErrorState(this.error);
}

