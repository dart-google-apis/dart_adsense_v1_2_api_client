part of adsense_v1_2_api;

class Account {

  /** Unique identifier of this account. */
  core.String id;

  /** Kind of resource this is, in this case adsense#account. */
  core.String kind;

  /** Name of this account. */
  core.String name;

  /** Whether this account is premium. */
  core.bool premium;

  /** Sub accounts of the this account. */
  core.List<Account> subAccounts;

  /** Create new Account from JSON data */
  Account.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("premium")) {
      premium = json["premium"];
    }
    if (json.containsKey("subAccounts")) {
      subAccounts = json["subAccounts"].map((subAccountsItem) => new Account.fromJson(subAccountsItem)).toList();
    }
  }

  /** Create JSON Object for Account */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (premium != null) {
      output["premium"] = premium;
    }
    if (subAccounts != null) {
      output["subAccounts"] = subAccounts.map((subAccountsItem) => subAccountsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Account */
  core.String toString() => JSON.encode(this.toJson());

}

class Accounts {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The accounts returned in this list response. */
  core.List<Account> items;

  /** Kind of list this is, in this case adsense#accounts. */
  core.String kind;

  /** Continuation token used to page through accounts. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new Accounts from JSON data */
  Accounts.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Account.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Accounts */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Accounts */
  core.String toString() => JSON.encode(this.toJson());

}

class AdClient {

  /** Whether this ad client is opted in to ARC. */
  core.bool arcOptIn;

  /** Unique identifier of this ad client. */
  core.String id;

  /** Kind of resource this is, in this case adsense#adClient. */
  core.String kind;

  /** This ad client's product code, which corresponds to the PRODUCT_CODE report dimension. */
  core.String productCode;

  /** Whether this ad client supports being reported on. */
  core.bool supportsReporting;

  /** Create new AdClient from JSON data */
  AdClient.fromJson(core.Map json) {
    if (json.containsKey("arcOptIn")) {
      arcOptIn = json["arcOptIn"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCode")) {
      productCode = json["productCode"];
    }
    if (json.containsKey("supportsReporting")) {
      supportsReporting = json["supportsReporting"];
    }
  }

  /** Create JSON Object for AdClient */
  core.Map toJson() {
    var output = new core.Map();

    if (arcOptIn != null) {
      output["arcOptIn"] = arcOptIn;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCode != null) {
      output["productCode"] = productCode;
    }
    if (supportsReporting != null) {
      output["supportsReporting"] = supportsReporting;
    }

    return output;
  }

  /** Return String representation of AdClient */
  core.String toString() => JSON.encode(this.toJson());

}

class AdClients {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ad clients returned in this list response. */
  core.List<AdClient> items;

  /** Kind of list this is, in this case adsense#adClients. */
  core.String kind;

  /** Continuation token used to page through ad clients. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new AdClients from JSON data */
  AdClients.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new AdClient.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdClients */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdClients */
  core.String toString() => JSON.encode(this.toJson());

}

class AdStyle {

  /** The colors which are included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash. */
  AdStyleColors colors;

  /** The style of the corners in the ad. */
  core.String corners;

  /** The font which is included in the style. */
  AdStyleFont font;

  /** Kind this is, in this case adsense#adStyle. */
  core.String kind;

  /** Create new AdStyle from JSON data */
  AdStyle.fromJson(core.Map json) {
    if (json.containsKey("colors")) {
      colors = new AdStyleColors.fromJson(json["colors"]);
    }
    if (json.containsKey("corners")) {
      corners = json["corners"];
    }
    if (json.containsKey("font")) {
      font = new AdStyleFont.fromJson(json["font"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AdStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (colors != null) {
      output["colors"] = colors.toJson();
    }
    if (corners != null) {
      output["corners"] = corners;
    }
    if (font != null) {
      output["font"] = font.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AdStyle */
  core.String toString() => JSON.encode(this.toJson());

}

/** The colors which are included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash. */
class AdStyleColors {

  /** The color of the ad background. */
  core.String background;

  /** The color of the ad border. */
  core.String border;

  /** The color of the ad text. */
  core.String text;

  /** The color of the ad title. */
  core.String title;

  /** The color of the ad url. */
  core.String url;

  /** Create new AdStyleColors from JSON data */
  AdStyleColors.fromJson(core.Map json) {
    if (json.containsKey("background")) {
      background = json["background"];
    }
    if (json.containsKey("border")) {
      border = json["border"];
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AdStyleColors */
  core.Map toJson() {
    var output = new core.Map();

    if (background != null) {
      output["background"] = background;
    }
    if (border != null) {
      output["border"] = border;
    }
    if (text != null) {
      output["text"] = text;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AdStyleColors */
  core.String toString() => JSON.encode(this.toJson());

}

/** The font which is included in the style. */
class AdStyleFont {

  /** The family of the font. */
  core.String family;

  /** The size of the font. */
  core.String size;

  /** Create new AdStyleFont from JSON data */
  AdStyleFont.fromJson(core.Map json) {
    if (json.containsKey("family")) {
      family = json["family"];
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
  }

  /** Create JSON Object for AdStyleFont */
  core.Map toJson() {
    var output = new core.Map();

    if (family != null) {
      output["family"] = family;
    }
    if (size != null) {
      output["size"] = size;
    }

    return output;
  }

  /** Return String representation of AdStyleFont */
  core.String toString() => JSON.encode(this.toJson());

}

class AdUnit {

  /** Identity code of this ad unit, not necessarily unique across ad clients. */
  core.String code;

  /** Settings specific to content ads (AFC) and highend mobile content ads (AFMC). */
  AdUnitContentAdsSettings contentAdsSettings;

  /** Custom style information specific to this ad unit. */
  AdStyle customStyle;

  /** Settings specific to feed ads (AFF). */
  AdUnitFeedAdsSettings feedAdsSettings;

  /** Unique identifier of this ad unit. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adsense#adUnit. */
  core.String kind;

  /** Settings specific to WAP mobile content ads (AFMC). */
  AdUnitMobileContentAdsSettings mobileContentAdsSettings;

  /** Name of this ad unit. */
  core.String name;

  /** ID of the saved ad style which holds this ad unit's style information. */
  core.String savedStyleId;

  /** Status of this ad unit. Possible values are:
NEW: Indicates that the ad unit was created within the last seven days and does not yet have any activity associated with it.

ACTIVE: Indicates that there has been activity on this ad unit in the last seven days.

INACTIVE: Indicates that there has been no activity on this ad unit in the last seven days. */
  core.String status;

  /** Create new AdUnit from JSON data */
  AdUnit.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("contentAdsSettings")) {
      contentAdsSettings = new AdUnitContentAdsSettings.fromJson(json["contentAdsSettings"]);
    }
    if (json.containsKey("customStyle")) {
      customStyle = new AdStyle.fromJson(json["customStyle"]);
    }
    if (json.containsKey("feedAdsSettings")) {
      feedAdsSettings = new AdUnitFeedAdsSettings.fromJson(json["feedAdsSettings"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mobileContentAdsSettings")) {
      mobileContentAdsSettings = new AdUnitMobileContentAdsSettings.fromJson(json["mobileContentAdsSettings"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("savedStyleId")) {
      savedStyleId = json["savedStyleId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for AdUnit */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (contentAdsSettings != null) {
      output["contentAdsSettings"] = contentAdsSettings.toJson();
    }
    if (customStyle != null) {
      output["customStyle"] = customStyle.toJson();
    }
    if (feedAdsSettings != null) {
      output["feedAdsSettings"] = feedAdsSettings.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (mobileContentAdsSettings != null) {
      output["mobileContentAdsSettings"] = mobileContentAdsSettings.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (savedStyleId != null) {
      output["savedStyleId"] = savedStyleId;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of AdUnit */
  core.String toString() => JSON.encode(this.toJson());

}

/** Settings specific to content ads (AFC) and highend mobile content ads (AFMC). */
class AdUnitContentAdsSettings {

  /** The backup option to be used in instances where no ad is available. */
  AdUnitContentAdsSettingsBackupOption backupOption;

  /** Size of this ad unit. */
  core.String size;

  /** Type of this ad unit. */
  core.String type;

  /** Create new AdUnitContentAdsSettings from JSON data */
  AdUnitContentAdsSettings.fromJson(core.Map json) {
    if (json.containsKey("backupOption")) {
      backupOption = new AdUnitContentAdsSettingsBackupOption.fromJson(json["backupOption"]);
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AdUnitContentAdsSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (backupOption != null) {
      output["backupOption"] = backupOption.toJson();
    }
    if (size != null) {
      output["size"] = size;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AdUnitContentAdsSettings */
  core.String toString() => JSON.encode(this.toJson());

}

/** The backup option to be used in instances where no ad is available. */
class AdUnitContentAdsSettingsBackupOption {

  /** Color to use when type is set to COLOR. */
  core.String color;

  /** Type of the backup option. Possible values are BLANK, COLOR and URL. */
  core.String type;

  /** URL to use when type is set to URL. */
  core.String url;

  /** Create new AdUnitContentAdsSettingsBackupOption from JSON data */
  AdUnitContentAdsSettingsBackupOption.fromJson(core.Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AdUnitContentAdsSettingsBackupOption */
  core.Map toJson() {
    var output = new core.Map();

    if (color != null) {
      output["color"] = color;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AdUnitContentAdsSettingsBackupOption */
  core.String toString() => JSON.encode(this.toJson());

}

/** Settings specific to feed ads (AFF). */
class AdUnitFeedAdsSettings {

  /** The position of the ads relative to the feed entries. */
  core.String adPosition;

  /** The frequency at which ads should appear in the feed (i.e. every N entries). */
  core.int frequency;

  /** The minimum length an entry should be in order to have attached ads. */
  core.int minimumWordCount;

  /** The type of ads which should appear. */
  core.String type;

  /** Create new AdUnitFeedAdsSettings from JSON data */
  AdUnitFeedAdsSettings.fromJson(core.Map json) {
    if (json.containsKey("adPosition")) {
      adPosition = json["adPosition"];
    }
    if (json.containsKey("frequency")) {
      frequency = json["frequency"];
    }
    if (json.containsKey("minimumWordCount")) {
      minimumWordCount = json["minimumWordCount"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AdUnitFeedAdsSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (adPosition != null) {
      output["adPosition"] = adPosition;
    }
    if (frequency != null) {
      output["frequency"] = frequency;
    }
    if (minimumWordCount != null) {
      output["minimumWordCount"] = minimumWordCount;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AdUnitFeedAdsSettings */
  core.String toString() => JSON.encode(this.toJson());

}

/** Settings specific to WAP mobile content ads (AFMC). */
class AdUnitMobileContentAdsSettings {

  /** The markup language to use for this ad unit. */
  core.String markupLanguage;

  /** The scripting language to use for this ad unit. */
  core.String scriptingLanguage;

  /** Size of this ad unit. */
  core.String size;

  /** Type of this ad unit. */
  core.String type;

  /** Create new AdUnitMobileContentAdsSettings from JSON data */
  AdUnitMobileContentAdsSettings.fromJson(core.Map json) {
    if (json.containsKey("markupLanguage")) {
      markupLanguage = json["markupLanguage"];
    }
    if (json.containsKey("scriptingLanguage")) {
      scriptingLanguage = json["scriptingLanguage"];
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AdUnitMobileContentAdsSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (markupLanguage != null) {
      output["markupLanguage"] = markupLanguage;
    }
    if (scriptingLanguage != null) {
      output["scriptingLanguage"] = scriptingLanguage;
    }
    if (size != null) {
      output["size"] = size;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AdUnitMobileContentAdsSettings */
  core.String toString() => JSON.encode(this.toJson());

}

class AdUnits {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ad units returned in this list response. */
  core.List<AdUnit> items;

  /** Kind of list this is, in this case adsense#adUnits. */
  core.String kind;

  /** Continuation token used to page through ad units. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new AdUnits from JSON data */
  AdUnits.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new AdUnit.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdUnits */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdUnits */
  core.String toString() => JSON.encode(this.toJson());

}

class AdsenseReportsGenerateResponse {

  /** The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  core.List<core.String> averages;

  /** The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request. */
  core.List<AdsenseReportsGenerateResponseHeaders> headers;

  /** Kind this is, in this case adsense#report. */
  core.String kind;

  /** The output rows of the report. Each row is a list of cells; one for each dimension in the request, followed by one for each metric in the request. The dimension cells contain strings, and the metric cells contain numbers. */
  core.List<core.List<core.String>> rows;

  /** The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit. */
  core.int totalMatchedRows;

  /** The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  core.List<core.String> totals;

  /** Any warnings associated with generation of the report. */
  core.List<core.String> warnings;

  /** Create new AdsenseReportsGenerateResponse from JSON data */
  AdsenseReportsGenerateResponse.fromJson(core.Map json) {
    if (json.containsKey("averages")) {
      averages = json["averages"].toList();
    }
    if (json.containsKey("headers")) {
      headers = json["headers"].map((headersItem) => new AdsenseReportsGenerateResponseHeaders.fromJson(headersItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => rowsItem.toList()).toList();
    }
    if (json.containsKey("totalMatchedRows")) {
      totalMatchedRows = (json["totalMatchedRows"] is core.String) ? core.int.parse(json["totalMatchedRows"]) : json["totalMatchedRows"];
    }
    if (json.containsKey("totals")) {
      totals = json["totals"].toList();
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].toList();
    }
  }

  /** Create JSON Object for AdsenseReportsGenerateResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (averages != null) {
      output["averages"] = averages.toList();
    }
    if (headers != null) {
      output["headers"] = headers.map((headersItem) => headersItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toList()).toList();
    }
    if (totalMatchedRows != null) {
      output["totalMatchedRows"] = totalMatchedRows;
    }
    if (totals != null) {
      output["totals"] = totals.toList();
    }
    if (warnings != null) {
      output["warnings"] = warnings.toList();
    }

    return output;
  }

  /** Return String representation of AdsenseReportsGenerateResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class AdsenseReportsGenerateResponseHeaders {

  /** The currency of this column. Only present if the header type is METRIC_CURRENCY. */
  core.String currency;

  /** The name of the header. */
  core.String name;

  /** The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or METRIC_CURRENCY. */
  core.String type;

  /** Create new AdsenseReportsGenerateResponseHeaders from JSON data */
  AdsenseReportsGenerateResponseHeaders.fromJson(core.Map json) {
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AdsenseReportsGenerateResponseHeaders */
  core.Map toJson() {
    var output = new core.Map();

    if (currency != null) {
      output["currency"] = currency;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AdsenseReportsGenerateResponseHeaders */
  core.String toString() => JSON.encode(this.toJson());

}

class CustomChannel {

  /** Code of this custom channel, not necessarily unique across ad clients. */
  core.String code;

  /** Unique identifier of this custom channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adsense#customChannel. */
  core.String kind;

  /** Name of this custom channel. */
  core.String name;

  /** The targeting information of this custom channel, if activated. */
  CustomChannelTargetingInfo targetingInfo;

  /** Create new CustomChannel from JSON data */
  CustomChannel.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("targetingInfo")) {
      targetingInfo = new CustomChannelTargetingInfo.fromJson(json["targetingInfo"]);
    }
  }

  /** Create JSON Object for CustomChannel */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (targetingInfo != null) {
      output["targetingInfo"] = targetingInfo.toJson();
    }

    return output;
  }

  /** Return String representation of CustomChannel */
  core.String toString() => JSON.encode(this.toJson());

}

/** The targeting information of this custom channel, if activated. */
class CustomChannelTargetingInfo {

  /** The name used to describe this channel externally. */
  core.String adsAppearOn;

  /** The external description of the channel. */
  core.String description;

  /** The locations in which ads appear. (Only valid for content and mobile content ads). Acceptable values for content ads are: TOP_LEFT, TOP_CENTER, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT, MULTIPLE_LOCATIONS. Acceptable values for mobile content ads are: TOP, MIDDLE, BOTTOM, MULTIPLE_LOCATIONS. */
  core.String location;

  /** The language of the sites ads will be displayed on. */
  core.String siteLanguage;

  /** Create new CustomChannelTargetingInfo from JSON data */
  CustomChannelTargetingInfo.fromJson(core.Map json) {
    if (json.containsKey("adsAppearOn")) {
      adsAppearOn = json["adsAppearOn"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("siteLanguage")) {
      siteLanguage = json["siteLanguage"];
    }
  }

  /** Create JSON Object for CustomChannelTargetingInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (adsAppearOn != null) {
      output["adsAppearOn"] = adsAppearOn;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (siteLanguage != null) {
      output["siteLanguage"] = siteLanguage;
    }

    return output;
  }

  /** Return String representation of CustomChannelTargetingInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class CustomChannels {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The custom channels returned in this list response. */
  core.List<CustomChannel> items;

  /** Kind of list this is, in this case adsense#customChannels. */
  core.String kind;

  /** Continuation token used to page through custom channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new CustomChannels from JSON data */
  CustomChannels.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new CustomChannel.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CustomChannels */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of CustomChannels */
  core.String toString() => JSON.encode(this.toJson());

}

class SavedAdStyle {

  /** The AdStyle itself. */
  AdStyle adStyle;

  /** Unique identifier of this saved ad style. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adsense#savedAdStyle. */
  core.String kind;

  /** The user selected name of this SavedAdStyle. */
  core.String name;

  /** Create new SavedAdStyle from JSON data */
  SavedAdStyle.fromJson(core.Map json) {
    if (json.containsKey("adStyle")) {
      adStyle = new AdStyle.fromJson(json["adStyle"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for SavedAdStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (adStyle != null) {
      output["adStyle"] = adStyle.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of SavedAdStyle */
  core.String toString() => JSON.encode(this.toJson());

}

class SavedAdStyles {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The saved ad styles returned in this list response. */
  core.List<SavedAdStyle> items;

  /** Kind of list this is, in this case adsense#savedAdStyles. */
  core.String kind;

  /** Continuation token used to page through ad units. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new SavedAdStyles from JSON data */
  SavedAdStyles.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new SavedAdStyle.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for SavedAdStyles */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of SavedAdStyles */
  core.String toString() => JSON.encode(this.toJson());

}

class SavedReport {

  /** Unique identifier of this saved report. */
  core.String id;

  /** Kind of resource this is, in this case adsense#savedReport. */
  core.String kind;

  /** This saved report's name. */
  core.String name;

  /** Create new SavedReport from JSON data */
  SavedReport.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for SavedReport */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of SavedReport */
  core.String toString() => JSON.encode(this.toJson());

}

class SavedReports {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The saved reports returned in this list response. */
  core.List<SavedReport> items;

  /** Kind of list this is, in this case adsense#savedReports. */
  core.String kind;

  /** Continuation token used to page through saved reports. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new SavedReports from JSON data */
  SavedReports.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new SavedReport.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for SavedReports */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of SavedReports */
  core.String toString() => JSON.encode(this.toJson());

}

class UrlChannel {

  /** Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adsense#urlChannel. */
  core.String kind;

  /** URL Pattern of this URL channel. Does not include "http://" or "https://". Example: www.example.com/home */
  core.String urlPattern;

  /** Create new UrlChannel from JSON data */
  UrlChannel.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("urlPattern")) {
      urlPattern = json["urlPattern"];
    }
  }

  /** Create JSON Object for UrlChannel */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (urlPattern != null) {
      output["urlPattern"] = urlPattern;
    }

    return output;
  }

  /** Return String representation of UrlChannel */
  core.String toString() => JSON.encode(this.toJson());

}

class UrlChannels {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The URL channels returned in this list response. */
  core.List<UrlChannel> items;

  /** Kind of list this is, in this case adsense#urlChannels. */
  core.String kind;

  /** Continuation token used to page through URL channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new UrlChannels from JSON data */
  UrlChannels.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new UrlChannel.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for UrlChannels */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of UrlChannels */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
