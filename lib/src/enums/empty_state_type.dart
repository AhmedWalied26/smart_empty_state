/// The type of empty state to display.
enum EmptyStateType {
  /// Indicates that there is no data to display.
  noData,

  /// Indicates that a search returned no results.
  searchNotFound,

  /// Indicates that there is no internet connection.
  noInternet,

  /// Indicates that an error occurred.
  error,

  /// Indicates that a required permission was denied.
  permissionDenied,
}
