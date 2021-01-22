import 'package:flutter_shortener/app/modules/models/urls_model.dart';
import 'package:flutter_shortener/app/modules/repositories/isgd_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  IsGdRepository repository;

  _HomeControllerBase(this.repository) {
    getUrls(longUrl);
  }

  @observable
  ObservableList<List<UrlsModel>> urlsList = ObservableList();

  @observable
  String longUrl = '';

  @action
  String setLongUrl(String value) => longUrl = value;

  @computed
  bool get isValidUrlsList => urlsList.isNotEmpty;

  @computed
  bool get isValidUrl => longUrl.isNotEmpty;

  @action
  getUrls(String url) {
    if (isValidUrl) {
      repository
          .shortingUrl(url)
          .then((urls) => urlsList.add(urls))
          .asObservable();
    }
  }
}
