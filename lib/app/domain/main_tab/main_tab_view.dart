import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_tab_view.freezed.dart';

@freezed
class MainTabView with _$MainTabView {
  const factory MainTabView.home() = _Home;
  const factory MainTabView.profile() = _Profile;
}
