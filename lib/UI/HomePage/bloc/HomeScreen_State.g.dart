// GENERATED CODE - DO NOT MODIFY BY HAND

part of HomeScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeScreenState extends HomeScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final String? GetPostserror;
  @override
  final bool? GetPostsisLoading;
  @override
  final bool? GetpostsSuccess;
  @override
  final String? GetAdminserror;
  @override
  final bool? GetAdminsisLoading;
  @override
  final bool? GetAdminsSuccess;
  @override
  final String? GetUrlsserror;
  @override
  final bool? GetUrlsisLoading;
  @override
  final bool? GetUrlsSuccess;
  @override
  final PostsData? posts;
  @override
  final GetUrlDataModel? Urls;
  @override
  final AdminDataModel? Admins;
  @override
  final SendMessageModel? SendMessage;

  factory _$HomeScreenState([void Function(HomeScreenStateBuilder)? updates]) =>
      (new HomeScreenStateBuilder()..update(updates))._build();

  _$HomeScreenState._(
      {this.error,
      this.isLoading,
      this.success,
      this.GetPostserror,
      this.GetPostsisLoading,
      this.GetpostsSuccess,
      this.GetAdminserror,
      this.GetAdminsisLoading,
      this.GetAdminsSuccess,
      this.GetUrlsserror,
      this.GetUrlsisLoading,
      this.GetUrlsSuccess,
      this.posts,
      this.Urls,
      this.Admins,
      this.SendMessage})
      : super._();

  @override
  HomeScreenState rebuild(void Function(HomeScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeScreenStateBuilder toBuilder() =>
      new HomeScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeScreenState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        GetPostserror == other.GetPostserror &&
        GetPostsisLoading == other.GetPostsisLoading &&
        GetpostsSuccess == other.GetpostsSuccess &&
        GetAdminserror == other.GetAdminserror &&
        GetAdminsisLoading == other.GetAdminsisLoading &&
        GetAdminsSuccess == other.GetAdminsSuccess &&
        GetUrlsserror == other.GetUrlsserror &&
        GetUrlsisLoading == other.GetUrlsisLoading &&
        GetUrlsSuccess == other.GetUrlsSuccess &&
        posts == other.posts &&
        Urls == other.Urls &&
        Admins == other.Admins &&
        SendMessage == other.SendMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    error
                                                                        .hashCode),
                                                                isLoading
                                                                    .hashCode),
                                                            success.hashCode),
                                                        GetPostserror.hashCode),
                                                    GetPostsisLoading.hashCode),
                                                GetpostsSuccess.hashCode),
                                            GetAdminserror.hashCode),
                                        GetAdminsisLoading.hashCode),
                                    GetAdminsSuccess.hashCode),
                                GetUrlsserror.hashCode),
                            GetUrlsisLoading.hashCode),
                        GetUrlsSuccess.hashCode),
                    posts.hashCode),
                Urls.hashCode),
            Admins.hashCode),
        SendMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('GetPostserror', GetPostserror)
          ..add('GetPostsisLoading', GetPostsisLoading)
          ..add('GetpostsSuccess', GetpostsSuccess)
          ..add('GetAdminserror', GetAdminserror)
          ..add('GetAdminsisLoading', GetAdminsisLoading)
          ..add('GetAdminsSuccess', GetAdminsSuccess)
          ..add('GetUrlsserror', GetUrlsserror)
          ..add('GetUrlsisLoading', GetUrlsisLoading)
          ..add('GetUrlsSuccess', GetUrlsSuccess)
          ..add('posts', posts)
          ..add('Urls', Urls)
          ..add('Admins', Admins)
          ..add('SendMessage', SendMessage))
        .toString();
  }
}

class HomeScreenStateBuilder
    implements Builder<HomeScreenState, HomeScreenStateBuilder> {
  _$HomeScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _GetPostserror;
  String? get GetPostserror => _$this._GetPostserror;
  set GetPostserror(String? GetPostserror) =>
      _$this._GetPostserror = GetPostserror;

  bool? _GetPostsisLoading;
  bool? get GetPostsisLoading => _$this._GetPostsisLoading;
  set GetPostsisLoading(bool? GetPostsisLoading) =>
      _$this._GetPostsisLoading = GetPostsisLoading;

  bool? _GetpostsSuccess;
  bool? get GetpostsSuccess => _$this._GetpostsSuccess;
  set GetpostsSuccess(bool? GetpostsSuccess) =>
      _$this._GetpostsSuccess = GetpostsSuccess;

  String? _GetAdminserror;
  String? get GetAdminserror => _$this._GetAdminserror;
  set GetAdminserror(String? GetAdminserror) =>
      _$this._GetAdminserror = GetAdminserror;

  bool? _GetAdminsisLoading;
  bool? get GetAdminsisLoading => _$this._GetAdminsisLoading;
  set GetAdminsisLoading(bool? GetAdminsisLoading) =>
      _$this._GetAdminsisLoading = GetAdminsisLoading;

  bool? _GetAdminsSuccess;
  bool? get GetAdminsSuccess => _$this._GetAdminsSuccess;
  set GetAdminsSuccess(bool? GetAdminsSuccess) =>
      _$this._GetAdminsSuccess = GetAdminsSuccess;

  String? _GetUrlsserror;
  String? get GetUrlsserror => _$this._GetUrlsserror;
  set GetUrlsserror(String? GetUrlsserror) =>
      _$this._GetUrlsserror = GetUrlsserror;

  bool? _GetUrlsisLoading;
  bool? get GetUrlsisLoading => _$this._GetUrlsisLoading;
  set GetUrlsisLoading(bool? GetUrlsisLoading) =>
      _$this._GetUrlsisLoading = GetUrlsisLoading;

  bool? _GetUrlsSuccess;
  bool? get GetUrlsSuccess => _$this._GetUrlsSuccess;
  set GetUrlsSuccess(bool? GetUrlsSuccess) =>
      _$this._GetUrlsSuccess = GetUrlsSuccess;

  PostsDataBuilder? _posts;
  PostsDataBuilder get posts => _$this._posts ??= new PostsDataBuilder();
  set posts(PostsDataBuilder? posts) => _$this._posts = posts;

  GetUrlDataModelBuilder? _Urls;
  GetUrlDataModelBuilder get Urls =>
      _$this._Urls ??= new GetUrlDataModelBuilder();
  set Urls(GetUrlDataModelBuilder? Urls) => _$this._Urls = Urls;

  AdminDataModelBuilder? _Admins;
  AdminDataModelBuilder get Admins =>
      _$this._Admins ??= new AdminDataModelBuilder();
  set Admins(AdminDataModelBuilder? Admins) => _$this._Admins = Admins;

  SendMessageModelBuilder? _SendMessage;
  SendMessageModelBuilder get SendMessage =>
      _$this._SendMessage ??= new SendMessageModelBuilder();
  set SendMessage(SendMessageModelBuilder? SendMessage) =>
      _$this._SendMessage = SendMessage;

  HomeScreenStateBuilder();

  HomeScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _GetPostserror = $v.GetPostserror;
      _GetPostsisLoading = $v.GetPostsisLoading;
      _GetpostsSuccess = $v.GetpostsSuccess;
      _GetAdminserror = $v.GetAdminserror;
      _GetAdminsisLoading = $v.GetAdminsisLoading;
      _GetAdminsSuccess = $v.GetAdminsSuccess;
      _GetUrlsserror = $v.GetUrlsserror;
      _GetUrlsisLoading = $v.GetUrlsisLoading;
      _GetUrlsSuccess = $v.GetUrlsSuccess;
      _posts = $v.posts?.toBuilder();
      _Urls = $v.Urls?.toBuilder();
      _Admins = $v.Admins?.toBuilder();
      _SendMessage = $v.SendMessage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeScreenState;
  }

  @override
  void update(void Function(HomeScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeScreenState build() => _build();

  _$HomeScreenState _build() {
    _$HomeScreenState _$result;
    try {
      _$result = _$v ??
          new _$HomeScreenState._(
              error: error,
              isLoading: isLoading,
              success: success,
              GetPostserror: GetPostserror,
              GetPostsisLoading: GetPostsisLoading,
              GetpostsSuccess: GetpostsSuccess,
              GetAdminserror: GetAdminserror,
              GetAdminsisLoading: GetAdminsisLoading,
              GetAdminsSuccess: GetAdminsSuccess,
              GetUrlsserror: GetUrlsserror,
              GetUrlsisLoading: GetUrlsisLoading,
              GetUrlsSuccess: GetUrlsSuccess,
              posts: _posts?.build(),
              Urls: _Urls?.build(),
              Admins: _Admins?.build(),
              SendMessage: _SendMessage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'posts';
        _posts?.build();
        _$failedField = 'Urls';
        _Urls?.build();
        _$failedField = 'Admins';
        _Admins?.build();
        _$failedField = 'SendMessage';
        _SendMessage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HomeScreenState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
