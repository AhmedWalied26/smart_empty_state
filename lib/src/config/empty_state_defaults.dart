import 'package:flutter/material.dart';

import '../enums/empty_state_type.dart';
import '../models/empty_state_config.dart';

class EmptyStateDefaults {
  static EmptyStateConfig get(EmptyStateType type) {
    switch (type) {
      case EmptyStateType.noData:
        return const EmptyStateConfig(
          icon: Icons.inbox_outlined,
          title: 'No Data',
          message: 'There is no data to display.',
        );

      case EmptyStateType.searchNotFound:
        return const EmptyStateConfig(
          icon: Icons.search_off_outlined,
          title: 'No Results Found',
          message: 'We couldn\'t find what you\'re looking for.',
        );

      case EmptyStateType.noInternet:
        return const EmptyStateConfig(
          icon: Icons.wifi_off_outlined,
          title: 'No Internet Connection',
          message: 'Please check your internet connection and try again.',
          actionText: 'Retry',
        );

      case EmptyStateType.error:
        return const EmptyStateConfig(
          icon: Icons.error_outline,
          title: 'Something Went Wrong',
          message: 'Something went wrong. Please try again.',
          actionText: 'Try Again',
        );

      case EmptyStateType.permissionDenied:
        return const EmptyStateConfig(
          icon: Icons.lock_outline,
          title: 'Permission Required',
          message: 'This feature requires additional permission.',
          actionText: 'Allow',
        );
    }
  }
}
