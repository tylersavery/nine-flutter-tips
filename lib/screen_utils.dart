import 'package:flutter/material.dart';

enum ScreenSize {
  sm,
  md,
  lg,
}

class ScreenUtils {
  static const breakpointSm = 576.0;
  static const breakpointMd = 992.0;

  static ScreenSize size(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width < breakpointSm) {
      return ScreenSize.sm;
    }

    if (width < breakpointMd) {
      return ScreenSize.md;
    }

    return ScreenSize.lg;
  }
}
