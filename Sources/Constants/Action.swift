import Foundation

@available(*, deprecated, renamed: "UIElement.Action", message: "Provided for drop in replacement, but now the type is located under the `UIElement` namespace.")
public typealias Action = UIElement.Action
extension UIElement {
    /// Provides all known actions a `UIElement` can support.
    /// - seeAlso: [Actions](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Protocols/NSAccessibility_Protocol/#//apple_ref/doc/constant_group/Actions)
    public struct Action: RawRepresentable, Hashable, Sendable {
        public let rawValue: String
        public var rawCFStringValue: CFString { rawValue as CFString }
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        public static let press           = Action(rawValue: "AXPress")
        public static let increment       = Action(rawValue: "AXIncrement")
        public static let decrement       = Action(rawValue: "AXDecrement")
        public static let confirm         = Action(rawValue: "AXConfirm")
        public static let pick            = Action(rawValue: "AXPick")
        public static let cancel          = Action(rawValue: "AXCancel")
        public static let raise           = Action(rawValue: "AXRaise")
        public static let showMenu        = Action(rawValue: "AXShowMenu")
        public static let delete          = Action(rawValue: "AXDelete")
        public static let showAlternateUI = Action(rawValue: "AXShowAlternateUI")
        public static let showDefaultUI   = Action(rawValue: "AXShowDefaultUI")
    }
}
