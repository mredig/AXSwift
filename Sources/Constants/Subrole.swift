import Foundation

@available(*, deprecated, renamed: "UIElement.Role.Subrole", message: "Provided for drop in replacement, but now the type is located under the `UIElement.Role` namespace.")
public typealias Subrole = UIElement.Role.Subrole
extension UIElement.Role {
	/// Provides all known UIElement subroles.
	/// - seeAlso: [Subroles](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSAccessibility_Protocol_Reference/index.html#//apple_ref/doc/constant_group/Subroles)
	public struct Subrole: RawRepresentable, Hashable, Sendable {
		public let rawValue: String
		public var rawCFStringValue: CFString { rawValue as CFString }

		public init(rawValue: String) {
			self.rawValue = rawValue
		}

		public static let unknown              = Subrole(rawValue: "AXUnknown")
		public static let closeButton          = Subrole(rawValue: "AXCloseButton")
		public static let zoomButton           = Subrole(rawValue: "AXZoomButton")
		public static let minimizeButton       = Subrole(rawValue: "AXMinimizeButton")
		public static let toolbarButton        = Subrole(rawValue: "AXToolbarButton")
		public static let tableRow             = Subrole(rawValue: "AXTableRow")
		public static let outlineRow           = Subrole(rawValue: "AXOutlineRow")
		public static let secureTextField      = Subrole(rawValue: "AXSecureTextField")
		public static let standardWindow       = Subrole(rawValue: "AXStandardWindow")
		public static let dialog               = Subrole(rawValue: "AXDialog")
		public static let systemDialog         = Subrole(rawValue: "AXSystemDialog")
		public static let floatingWindow       = Subrole(rawValue: "AXFloatingWindow")
		public static let systemFloatingWindow = Subrole(rawValue: "AXSystemFloatingWindow")
		public static let incrementArrow       = Subrole(rawValue: "AXIncrementArrow")
		public static let decrementArrow       = Subrole(rawValue: "AXDecrementArrow")
		public static let incrementPage        = Subrole(rawValue: "AXIncrementPage")
		public static let decrementPage        = Subrole(rawValue: "AXDecrementPage")
		public static let searchField          = Subrole(rawValue: "AXSearchField")
		public static let textAttachment       = Subrole(rawValue: "AXTextAttachment")
		public static let textLink             = Subrole(rawValue: "AXTextLink")
		public static let timeline             = Subrole(rawValue: "AXTimeline")
		public static let sortButton           = Subrole(rawValue: "AXSortButton")
		public static let ratingIndicator      = Subrole(rawValue: "AXRatingIndicator")
		public static let contentList          = Subrole(rawValue: "AXContentList")
		public static let definitionList       = Subrole(rawValue: "AXDefinitionList")
		public static let fullScreenButton     = Subrole(rawValue: "AXFullScreenButton")
		public static let toggle               = Subrole(rawValue: "AXToggle")
		public static let switchSubrole        = Subrole(rawValue: "AXSwitch")
		public static let descriptionList      = Subrole(rawValue: "AXDescriptionList")
	}
}
