import Foundation

@available(*, deprecated, renamed: "UIElement.Orientation", message: "Provided for drop in replacement, but now the type is located under the `UIElement` namespace.")
public typealias Orientation = UIElement.Orientation
extension UIElement {
    /// Orientations returned by the orientation property.
    /// - seeAlso: [NSAccessibilityOrientation](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSAccessibility_Protocol_Reference/index.html#//apple_ref/c/tdef/NSAccessibilityOrientation)
    public enum Orientation: Int {
        case unknown    = 0
        case vertical   = 1
        case horizontal = 2
    }
}
