import 'package:flutter_shortener/app/modules/models/urls_view_model.dart';
import 'package:flutter_shortener/app/modules/repositories/isgd_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  IsGdRepository repository;

  @observable
  List<UrlsViewModel> urlsList = [];

  @observable
  String longUrl = '';

  @action
  String setLongUrl(String value) => longUrl = value;

  _HomeControllerBase(this.repository) {
    getList(longUrl);
  }

  @computed
  bool get isValidUrl => longUrl.isNotEmpty;

  @action
  getList(String url) {
    if (isValidUrl) {
      repository.shortingUrl(longUrl).then((url) => urlsList.add(url));
    }
  }
}
