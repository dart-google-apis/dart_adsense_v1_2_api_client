part of adsense_v1_2_api_client;

class AccountsResource_ extends Resource {

  AccountsAdclientsResource_ _adclients;
  AccountsAdclientsResource_ get adclients => _adclients;
  AccountsAdunitsResource_ _adunits;
  AccountsAdunitsResource_ get adunits => _adunits;
  AccountsCustomchannelsResource_ _customchannels;
  AccountsCustomchannelsResource_ get customchannels => _customchannels;
  AccountsReportsResource_ _reports;
  AccountsReportsResource_ get reports => _reports;
  AccountsSavedadstylesResource_ _savedadstyles;
  AccountsSavedadstylesResource_ get savedadstyles => _savedadstyles;
  AccountsUrlchannelsResource_ _urlchannels;
  AccountsUrlchannelsResource_ get urlchannels => _urlchannels;

  AccountsResource_(Client client) : super(client) {
  _adclients = new AccountsAdclientsResource_(client);
  _adunits = new AccountsAdunitsResource_(client);
  _customchannels = new AccountsCustomchannelsResource_(client);
  _reports = new AccountsReportsResource_(client);
  _savedadstyles = new AccountsSavedadstylesResource_(client);
  _urlchannels = new AccountsUrlchannelsResource_(client);
  }

  /**
   * Get information about the selected AdSense account.
   *
   * [accountId] - Account to get information about.
   *
   * [tree] - Whether the tree of sub accounts should be returned.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> get(core.String accountId, {core.bool tree, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (tree != null) queryParams["tree"] = tree;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Account.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all accounts available to this AdSense account.
   *
   * [maxResults] - The maximum number of accounts to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through accounts. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Accounts> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Accounts.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsAdclientsResource_ extends Resource {

  AccountsAdclientsResource_(Client client) : super(client) {
  }

  /**
   * List all ad clients in the specified account.
   *
   * [accountId] - Account for which to list ad clients.
   *
   * [maxResults] - The maximum number of ad clients to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdClients> list(core.String accountId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/adclients";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdClients.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsAdunitsResource_ extends Resource {

  AccountsAdunitsCustomchannelsResource_ _customchannels;
  AccountsAdunitsCustomchannelsResource_ get customchannels => _customchannels;

  AccountsAdunitsResource_(Client client) : super(client) {
  _customchannels = new AccountsAdunitsCustomchannelsResource_(client);
  }

  /**
   * Gets the specified ad unit in the specified ad client for the specified account.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client for which to get the ad unit.
   *
   * [adUnitId] - Ad unit to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnit> get(core.String accountId, core.String adClientId, core.String adUnitId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnit.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all ad units in the specified ad client for the specified account.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client for which to list ad units.
   *
   * [includeInactive] - Whether to include inactive ad units. Default: true.
   *
   * [maxResults] - The maximum number of ad units to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnits> list(core.String accountId, core.String adClientId, {core.bool includeInactive, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (includeInactive != null) queryParams["includeInactive"] = includeInactive;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnits.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsAdunitsCustomchannelsResource_ extends Resource {

  AccountsAdunitsCustomchannelsResource_(Client client) : super(client) {
  }

  /**
   * List all custom channels which the specified ad unit belongs to.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client which contains the ad unit.
   *
   * [adUnitId] - Ad unit for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannels> list(core.String accountId, core.String adClientId, core.String adUnitId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsCustomchannelsResource_ extends Resource {

  AccountsCustomchannelsAdunitsResource_ _adunits;
  AccountsCustomchannelsAdunitsResource_ get adunits => _adunits;

  AccountsCustomchannelsResource_(Client client) : super(client) {
  _adunits = new AccountsCustomchannelsAdunitsResource_(client);
  }

  /**
   * Get the specified custom channel from the specified ad client for the specified account.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client which contains the custom channel.
   *
   * [customChannelId] - Custom channel to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannel> get(core.String accountId, core.String adClientId, core.String customChannelId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/customchannels/{customChannelId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all custom channels in the specified ad client for the specified account.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannels> list(core.String accountId, core.String adClientId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsCustomchannelsAdunitsResource_ extends Resource {

  AccountsCustomchannelsAdunitsResource_(Client client) : super(client) {
  }

  /**
   * List all ad units in the specified custom channel.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client which contains the custom channel.
   *
   * [customChannelId] - Custom channel for which to list ad units.
   *
   * [includeInactive] - Whether to include inactive ad units. Default: true.
   *
   * [maxResults] - The maximum number of ad units to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnits> list(core.String accountId, core.String adClientId, core.String customChannelId, {core.bool includeInactive, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/customchannels/{customChannelId}/adunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (includeInactive != null) queryParams["includeInactive"] = includeInactive;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnits.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsReportsResource_ extends Resource {

  AccountsReportsSavedResource_ _saved;
  AccountsReportsSavedResource_ get saved => _saved;

  AccountsReportsResource_(Client client) : super(client) {
  _saved = new AccountsReportsSavedResource_(client);
  }

  /**
   * Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.
   *
   * [accountId] - Account upon which to report.
   *
   * [startDate] - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [endDate] - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [currency] - Optional currency to use when reporting on monetary metrics. Defaults to the account's currency if not set.
   *
   * [dimension] - Dimensions to base the report on.
   *
   * [filter] - Filters to be run on the report.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [metric] - Numeric columns to include in the report.
   *
   * [sort] - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdsenseReportsGenerateResponse> generate(core.String accountId, core.String startDate, core.String endDate, {core.String currency, core.String dimension, core.String filter, core.String locale, core.int maxResults, core.String metric, core.String sort, core.int startIndex, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (currency != null) queryParams["currency"] = currency;
    if (dimension != null) queryParams["dimension"] = dimension;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (filter != null) queryParams["filter"] = filter;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (metric != null) queryParams["metric"] = metric;
    if (sort != null) queryParams["sort"] = sort;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdsenseReportsGenerateResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsReportsSavedResource_ extends Resource {

  AccountsReportsSavedResource_(Client client) : super(client) {
  }

  /**
   * Generate an AdSense report based on the saved report ID sent in the query parameters.
   *
   * [accountId] - Account to which the saved reports belong.
   *
   * [savedReportId] - The saved report to retrieve.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdsenseReportsGenerateResponse> generate(core.String accountId, core.String savedReportId, {core.String locale, core.int maxResults, core.int startIndex, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/reports/{savedReportId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (savedReportId == null) paramErrors.add("savedReportId is required");
    if (savedReportId != null) urlParams["savedReportId"] = savedReportId;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdsenseReportsGenerateResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all saved reports in the specified AdSense account.
   *
   * [accountId] - Account to which the saved reports belong.
   *
   * [maxResults] - The maximum number of saved reports to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - A continuation token, used to page through saved reports. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SavedReports> list(core.String accountId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/reports/saved";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SavedReports.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsSavedadstylesResource_ extends Resource {

  AccountsSavedadstylesResource_(Client client) : super(client) {
  }

  /**
   * List a specific saved ad style for the specified account.
   *
   * [accountId] - Account for which to get the saved ad style.
   *
   * [savedAdStyleId] - Saved ad style to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SavedAdStyle> get(core.String accountId, core.String savedAdStyleId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/savedadstyles/{savedAdStyleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (savedAdStyleId == null) paramErrors.add("savedAdStyleId is required");
    if (savedAdStyleId != null) urlParams["savedAdStyleId"] = savedAdStyleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SavedAdStyle.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all saved ad styles in the specified account.
   *
   * [accountId] - Account for which to list saved ad styles.
   *
   * [maxResults] - The maximum number of saved ad styles to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through saved ad styles. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SavedAdStyles> list(core.String accountId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/savedadstyles";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SavedAdStyles.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsUrlchannelsResource_ extends Resource {

  AccountsUrlchannelsResource_(Client client) : super(client) {
  }

  /**
   * List all URL channels in the specified ad client for the specified account.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client for which to list URL channels.
   *
   * [maxResults] - The maximum number of URL channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlChannels> list(core.String accountId, core.String adClientId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/urlchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UrlChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AdclientsResource_ extends Resource {

  AdclientsResource_(Client client) : super(client) {
  }

  /**
   * List all ad clients in this AdSense account.
   *
   * [maxResults] - The maximum number of ad clients to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdClients> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "adclients";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdClients.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AdunitsResource_ extends Resource {

  AdunitsCustomchannelsResource_ _customchannels;
  AdunitsCustomchannelsResource_ get customchannels => _customchannels;

  AdunitsResource_(Client client) : super(client) {
  _customchannels = new AdunitsCustomchannelsResource_(client);
  }

  /**
   * Gets the specified ad unit in the specified ad client.
   *
   * [adClientId] - Ad client for which to get the ad unit.
   *
   * [adUnitId] - Ad unit to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnit> get(core.String adClientId, core.String adUnitId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "adclients/{adClientId}/adunits/{adUnitId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnit.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all ad units in the specified ad client for this AdSense account.
   *
   * [adClientId] - Ad client for which to list ad units.
   *
   * [includeInactive] - Whether to include inactive ad units. Default: true.
   *
   * [maxResults] - The maximum number of ad units to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnits> list(core.String adClientId, {core.bool includeInactive, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "adclients/{adClientId}/adunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (includeInactive != null) queryParams["includeInactive"] = includeInactive;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnits.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AdunitsCustomchannelsResource_ extends Resource {

  AdunitsCustomchannelsResource_(Client client) : super(client) {
  }

  /**
   * List all custom channels which the specified ad unit belongs to.
   *
   * [adClientId] - Ad client which contains the ad unit.
   *
   * [adUnitId] - Ad unit for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannels> list(core.String adClientId, core.String adUnitId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "adclients/{adClientId}/adunits/{adUnitId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CustomchannelsResource_ extends Resource {

  CustomchannelsAdunitsResource_ _adunits;
  CustomchannelsAdunitsResource_ get adunits => _adunits;

  CustomchannelsResource_(Client client) : super(client) {
  _adunits = new CustomchannelsAdunitsResource_(client);
  }

  /**
   * Get the specified custom channel from the specified ad client.
   *
   * [adClientId] - Ad client which contains the custom channel.
   *
   * [customChannelId] - Custom channel to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannel> get(core.String adClientId, core.String customChannelId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "adclients/{adClientId}/customchannels/{customChannelId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all custom channels in the specified ad client for this AdSense account.
   *
   * [adClientId] - Ad client for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannels> list(core.String adClientId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CustomchannelsAdunitsResource_ extends Resource {

  CustomchannelsAdunitsResource_(Client client) : super(client) {
  }

  /**
   * List all ad units in the specified custom channel.
   *
   * [adClientId] - Ad client which contains the custom channel.
   *
   * [customChannelId] - Custom channel for which to list ad units.
   *
   * [includeInactive] - Whether to include inactive ad units. Default: true.
   *
   * [maxResults] - The maximum number of ad units to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnits> list(core.String adClientId, core.String customChannelId, {core.bool includeInactive, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "adclients/{adClientId}/customchannels/{customChannelId}/adunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (includeInactive != null) queryParams["includeInactive"] = includeInactive;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnits.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ReportsResource_ extends Resource {

  ReportsSavedResource_ _saved;
  ReportsSavedResource_ get saved => _saved;

  ReportsResource_(Client client) : super(client) {
  _saved = new ReportsSavedResource_(client);
  }

  /**
   * Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.
   *
   * [startDate] - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [endDate] - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [accountId] - Accounts upon which to report.
   *
   * [currency] - Optional currency to use when reporting on monetary metrics. Defaults to the account's currency if not set.
   *
   * [dimension] - Dimensions to base the report on.
   *
   * [filter] - Filters to be run on the report.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [metric] - Numeric columns to include in the report.
   *
   * [sort] - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdsenseReportsGenerateResponse> generate(core.String startDate, core.String endDate, {core.String accountId, core.String currency, core.String dimension, core.String filter, core.String locale, core.int maxResults, core.String metric, core.String sort, core.int startIndex, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId != null) queryParams["accountId"] = accountId;
    if (currency != null) queryParams["currency"] = currency;
    if (dimension != null) queryParams["dimension"] = dimension;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (filter != null) queryParams["filter"] = filter;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (metric != null) queryParams["metric"] = metric;
    if (sort != null) queryParams["sort"] = sort;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdsenseReportsGenerateResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ReportsSavedResource_ extends Resource {

  ReportsSavedResource_(Client client) : super(client) {
  }

  /**
   * Generate an AdSense report based on the saved report ID sent in the query parameters.
   *
   * [savedReportId] - The saved report to retrieve.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdsenseReportsGenerateResponse> generate(core.String savedReportId, {core.String locale, core.int maxResults, core.int startIndex, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "reports/{savedReportId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (savedReportId == null) paramErrors.add("savedReportId is required");
    if (savedReportId != null) urlParams["savedReportId"] = savedReportId;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdsenseReportsGenerateResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all saved reports in this AdSense account.
   *
   * [maxResults] - The maximum number of saved reports to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - A continuation token, used to page through saved reports. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SavedReports> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "reports/saved";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SavedReports.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class SavedadstylesResource_ extends Resource {

  SavedadstylesResource_(Client client) : super(client) {
  }

  /**
   * Get a specific saved ad style from the user's account.
   *
   * [savedAdStyleId] - Saved ad style to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SavedAdStyle> get(core.String savedAdStyleId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "savedadstyles/{savedAdStyleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (savedAdStyleId == null) paramErrors.add("savedAdStyleId is required");
    if (savedAdStyleId != null) urlParams["savedAdStyleId"] = savedAdStyleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SavedAdStyle.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all saved ad styles in the user's account.
   *
   * [maxResults] - The maximum number of saved ad styles to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through saved ad styles. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SavedAdStyles> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "savedadstyles";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SavedAdStyles.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UrlchannelsResource_ extends Resource {

  UrlchannelsResource_(Client client) : super(client) {
  }

  /**
   * List all URL channels in the specified ad client for this AdSense account.
   *
   * [adClientId] - Ad client for which to list URL channels.
   *
   * [maxResults] - The maximum number of URL channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlChannels> list(core.String adClientId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "adclients/{adClientId}/urlchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UrlChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

