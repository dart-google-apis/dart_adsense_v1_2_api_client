part of adsense_v1_2_api_console;

/** Client to access the adsense v1.2 API */
/** Gives AdSense publishers access to their inventory and the ability to generate reports */
class Adsense extends ConsoleClient {

  AccountsResource _accounts;
  AccountsResource get accounts => _accounts;
  AdclientsResource _adclients;
  AdclientsResource get adclients => _adclients;
  AdunitsResource _adunits;
  AdunitsResource get adunits => _adunits;
  CustomchannelsResource _customchannels;
  CustomchannelsResource get customchannels => _customchannels;
  ReportsResource _reports;
  ReportsResource get reports => _reports;
  SavedadstylesResource _savedadstyles;
  SavedadstylesResource get savedadstyles => _savedadstyles;
  UrlchannelsResource _urlchannels;
  UrlchannelsResource get urlchannels => _urlchannels;

  /** OAuth Scope2: View and manage your AdSense data */
  static const String ADSENSE_SCOPE = "https://www.googleapis.com/auth/adsense";

  /** OAuth Scope2: View your AdSense data */
  static const String ADSENSE_READONLY_SCOPE = "https://www.googleapis.com/auth/adsense.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Adsense([Object auth]) : super(auth) {
    basePath = "/adsense/v1.2/";
    rootUrl = "https://www.googleapis.com:443/";
    _accounts = new AccountsResource(this);
    _adclients = new AdclientsResource(this);
    _adunits = new AdunitsResource(this);
    _customchannels = new CustomchannelsResource(this);
    _reports = new ReportsResource(this);
    _savedadstyles = new SavedadstylesResource(this);
    _urlchannels = new UrlchannelsResource(this);
  }
}
