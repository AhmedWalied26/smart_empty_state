import 'package:flutter/material.dart';

import '../enums/empty_state_type.dart';
import '../models/empty_state_options.dart';

class EmptyStateDefaults {
  static EmptyStateOptions get(EmptyStateType type) {
    switch (type) {
      case EmptyStateType.noData:
        return const EmptyStateOptions(
          icon: Icons.inbox_outlined,
          title: 'No Data',
          message: 'There is no data to display.',
        );

      case EmptyStateType.searchNotFound:
        return const EmptyStateOptions(
          icon: Icons.search_off_outlined,
          title: 'No Results Found',
          message: 'We couldn\'t find what you\'re looking for.',
        );

      case EmptyStateType.noInternet:
        return const EmptyStateOptions(
          icon: Icons.wifi_off_outlined,
          title: 'No Internet Connection',
          message: 'Please check your internet connection and try again.',
          actionText: 'Retry',
        );

      case EmptyStateType.error:
        return const EmptyStateOptions(
          icon: Icons.error_outline,
          title: 'Something Went Wrong',
          message: 'Something went wrong. Please try again.',
          actionText: 'Try Again',
        );

      case EmptyStateType.permissionDenied:
        return const EmptyStateOptions(
          icon: Icons.lock_outline,
          title: 'Permission Required',
          message: 'This feature requires additional permission.',
          actionText: 'Allow',
        );
    }
  }
}
