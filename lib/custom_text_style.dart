import 'package:address_sf_package/theme_helper.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
    fontSize: 13,
  );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
    fontSize: 15,
  );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray700,
  );
  static get bodyMediumLato => theme.textTheme.bodyMedium!.lato;
  static get bodyMediumLatoPrimary => theme.textTheme.bodyMedium!.lato.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyMediumPrimary13 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 13,
      );
  static get bodyMediumPrimary15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12,
      );
  static get bodySmallRed900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.red900,
  );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallBlue_14 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.Blue500,
    fontSize: 14,
  );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 10,
      );
  static get bodySmallGray700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGray700_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGray400_14 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray700,
    fontSize: 14,
  );
  static get bodySmallGray70011 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray700,
    fontSize: 11,
  );
  static get bodySmallGray400_2 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray400,
  );
  static get labelLargeMontserratGray700 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get bodySmallInterPrimaryContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallLatoGray700 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallLatoGray70010 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray700,
        fontSize: 10,
      );
  static get bodySmallLatoGray700_1 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallLatoPrimary => theme.textTheme.bodySmall!.lato.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallLatoPrimary_1 => theme.textTheme.bodySmall!.lato.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallPrimary1 => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.primary.withOpacity(1),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static get bodySmallPrimaryBold => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.primary.withOpacity(1),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallSVNProductSans =>
      theme.textTheme.bodySmall!.sVNProductSans.copyWith(
        fontSize: 10,
      );
  // Label text style
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserrat =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserratBold =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserratErrorContainer =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserratOnSecondaryContainer =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserratOnSecondaryContainer2 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  static get labelLargeMontserratOnSecondaryContainerBold =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserratRed900 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.red900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get labelMediumErrorContainer => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  // Montserrat text style
  static get titleMediumLato => theme.textTheme.titleMedium!.lato;
  static get montserratPrimary => TextStyle(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 6,
        fontWeight: FontWeight.w500,
      ).montserrat;
  // Title text style
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
    fontSize: 17,
  );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleMediumMontserrat =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratBlack700Bold_16 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 16,
      );
  static get titleMediumMontserratBluegray700 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.blueGray700,
        fontSize: 18,
      );
  static get titleMediumMontserratBluegray700Bold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.blueGray700,
        fontSize: 17,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratBold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratOnSecondaryContainer =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      );
  static get titleMediumMontserratOnSecondaryContainerBold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallAmberA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amberA400,
      );
  static get titleSmallDeeporangeA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get titleSmallDeeporangeA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA70001,
      );
  static get titleSmallLato => theme.textTheme.titleSmall!.lato;
  static get titleSmallLatoOnSecondaryContainer =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallLatoOnSecondaryContainer_1 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallLatoRed900 => theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.red900,
      );
  static get titleSmallLatoSemiBold =>
      theme.textTheme.titleSmall!.lato.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallLato_1 => theme.textTheme.titleSmall!.lato;
  static get titleSmallLightgreen600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen600,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallOnSecondaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallRed900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red900,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
  static get titleSmall_2 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sVNProductSans {
    return copyWith(
      fontFamily: 'SVN-Product Sans',
    );
  }
}
