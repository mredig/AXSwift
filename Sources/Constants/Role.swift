import Foundation

@available(*, deprecated, renamed: "UIElement.Role", message: "Provided for drop in replacement, but now the type is located under the `UIElement` namespace.")
public typealias Role = UIElement.Role
extension UIElement {
    /// Provides all known UIElement roles.
    /// - seeAlso: [Roles](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSAccessibility_Protocol_Reference/index.html#//apple_ref/doc/constant_group/Roles)
    public struct Role: RawRepresentable, Hashable, Sendable {
        public let rawValue: String
        public var rawCFStringValue: CFString { rawValue as CFString }
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        public static let unknown            = Role(rawValue: "AXUnknown")
        public static let button             = Role(rawValue: "AXButton")
        public static let radioButton        = Role(rawValue: "AXRadioButton")
        public static let checkBox           = Role(rawValue: "AXCheckBox")
        public static let slider             = Role(rawValue: "AXSlider")
        public static let tabGroup           = Role(rawValue: "AXTabGroup")
        public static let textField          = Role(rawValue: "AXTextField")
        public static let staticText         = Role(rawValue: "AXStaticText")
        public static let textArea           = Role(rawValue: "AXTextArea")
        public static let scrollArea         = Role(rawValue: "AXScrollArea")
        public static let popUpButton        = Role(rawValue: "AXPopUpButton")
        public static let menuButton         = Role(rawValue: "AXMenuButton")
        public static let table              = Role(rawValue: "AXTable")
        public static let application        = Role(rawValue: "AXApplication")
        public static let group              = Role(rawValue: "AXGroup")
        public static let radioGroup         = Role(rawValue: "AXRadioGroup")
        public static let list               = Role(rawValue: "AXList")
        public static let scrollBar          = Role(rawValue: "AXScrollBar")
        public static let valueIndicator     = Role(rawValue: "AXValueIndicator")
        public static let image              = Role(rawValue: "AXImage")
        public static let menuBar            = Role(rawValue: "AXMenuBar")
        public static let menu               = Role(rawValue: "AXMenu")
        public static let menuItem           = Role(rawValue: "AXMenuItem")
        public static let menuBarItem        = Role(rawValue: "AXMenuBarItem")
        public static let column             = Role(rawValue: "AXColumn")
        public static let row                = Role(rawValue: "AXRow")
        public static let toolbar            = Role(rawValue: "AXToolbar")
        public static let busyIndicator      = Role(rawValue: "AXBusyIndicator")
        public static let progressIndicator  = Role(rawValue: "AXProgressIndicator")
        public static let window             = Role(rawValue: "AXWindow")
        public static let drawer             = Role(rawValue: "AXDrawer")
        public static let systemWide         = Role(rawValue: "AXSystemWide")
        public static let outline            = Role(rawValue: "AXOutline")
        public static let incrementor        = Role(rawValue: "AXIncrementor")
        public static let browser            = Role(rawValue: "AXBrowser")
        public static let comboBox           = Role(rawValue: "AXComboBox")
        public static let splitGroup         = Role(rawValue: "AXSplitGroup")
        public static let splitter           = Role(rawValue: "AXSplitter")
        public static let colorWell          = Role(rawValue: "AXColorWell")
        public static let growArea           = Role(rawValue: "AXGrowArea")
        public static let sheet              = Role(rawValue: "AXSheet")
        public static let helpTag            = Role(rawValue: "AXHelpTag")
        public static let matte              = Role(rawValue: "AXMatte")
        public static let ruler              = Role(rawValue: "AXRuler")
        public static let rulerMarker        = Role(rawValue: "AXRulerMarker")
        public static let link               = Role(rawValue: "AXLink")
        public static let disclosureTriangle = Role(rawValue: "AXDisclosureTriangle")
        public static let grid               = Role(rawValue: "AXGrid")
        public static let relevanceIndicator = Role(rawValue: "AXRelevanceIndicator")
        public static let levelIndicator     = Role(rawValue: "AXLevelIndicator")
        public static let cell               = Role(rawValue: "AXCell")
        public static let popover            = Role(rawValue: "AXPopover")
        public static let layoutArea         = Role(rawValue: "AXLayoutArea")
        public static let layoutItem         = Role(rawValue: "AXLayoutItem")
        public static let handle             = Role(rawValue: "AXHandle")
    }
}
