// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
internal enum L10n {

  internal enum Modalvc {
    /// Close
    internal static let closeButton = L10n.tr("DemoSwiftGen", "modalVC.closeButton")
    /// Third VC
    internal static let title = L10n.tr("DemoSwiftGen", "modalVC.title")
  }

  internal enum Viewcontroller1 {
    /// This text was generate with swiftgen
    internal static let labelText = L10n.tr("DemoSwiftGen", "viewController1.labelText")
    /// Show Modal
    internal static let showModalVCButton = L10n.tr("DemoSwiftGen", "viewController1.showModalVCButton")
    /// Go to second VC
    internal static let showSecondVCButton = L10n.tr("DemoSwiftGen", "viewController1.showSecondVCButton")
    /// First VC
    internal static let title = L10n.tr("DemoSwiftGen", "viewController1.title")
  }

  internal enum Viewcontroller2 {
    /// Second VC
    internal static let title = L10n.tr("DemoSwiftGen", "viewController2.title")
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
