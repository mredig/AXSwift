import Foundation

@available(*, deprecated, renamed: "UIElement.AXNotification", message: "Provided for drop in replacement, but now the type is located under the `UIElement` namespace.")
public typealias AXNotification = UIElement.AXNotification
extension UIElement {
    /// Provides all known possible notifications you can subscribe to with `Observer`.
    /// - seeAlso: [Notificatons](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSAccessibility_Protocol_Reference/index.html#//apple_ref/c/data/NSAccessibilityAnnouncementRequestedNotification)
    public struct AXNotification: RawRepresentable, Hashable, Sendable {
        public let rawValue: String
        public var rawCFStringValue: CFString { rawValue as CFString }
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        // Focus notifications
        public static let mainWindowChanged       = AXNotification(rawValue: "AXMainWindowChanged")
        public static let focusedWindowChanged    = AXNotification(rawValue: "AXFocusedWindowChanged")
        public static let focusedUIElementChanged = AXNotification(rawValue: "AXFocusedUIElementChanged")
        public static let focusedTabChanged       = AXNotification(rawValue: "AXFocusedTabChanged")
        
        // Application notifications
        public static let applicationActivated    = AXNotification(rawValue: "AXApplicationActivated")
        public static let applicationDeactivated  = AXNotification(rawValue: "AXApplicationDeactivated")
        public static let applicationHidden       = AXNotification(rawValue: "AXApplicationHidden")
        public static let applicationShown        = AXNotification(rawValue: "AXApplicationShown")
        
        // Window notifications
        public static let windowCreated           = AXNotification(rawValue: "AXWindowCreated")
        public static let windowMoved             = AXNotification(rawValue: "AXWindowMoved")
        public static let windowResized           = AXNotification(rawValue: "AXWindowResized")
        public static let windowMiniaturized      = AXNotification(rawValue: "AXWindowMiniaturized")
        public static let windowDeminiaturized    = AXNotification(rawValue: "AXWindowDeminiaturized")
        
        // Drawer & sheet notifications
        public static let drawerCreated           = AXNotification(rawValue: "AXDrawerCreated")
        public static let sheetCreated            = AXNotification(rawValue: "AXSheetCreated")
        
        // Element notifications
        public static let uiElementDestroyed      = AXNotification(rawValue: "AXUIElementDestroyed")
        public static let valueChanged            = AXNotification(rawValue: "AXValueChanged")
        public static let titleChanged            = AXNotification(rawValue: "AXTitleChanged")
        public static let resized                 = AXNotification(rawValue: "AXResized")
        public static let moved                   = AXNotification(rawValue: "AXMoved")
        public static let created                 = AXNotification(rawValue: "AXCreated")
        
        // Used when UI changes require the attention of assistive application.  Pass along a user info
        // dictionary with the key NSAccessibilityUIElementsKey and an array of elements that have been
        // added or changed as a result of this layout change.
        public static let layoutChanged           = AXNotification(rawValue: "AXLayoutChanged")
        
        // Misc notifications
        public static let helpTagCreated          = AXNotification(rawValue: "AXHelpTagCreated")
        public static let selectedTextChanged     = AXNotification(rawValue: "AXSelectedTextChanged")
        public static let rowCountChanged         = AXNotification(rawValue: "AXRowCountChanged")
        public static let selectedChildrenChanged = AXNotification(rawValue: "AXSelectedChildrenChanged")
        public static let selectedRowsChanged     = AXNotification(rawValue: "AXSelectedRowsChanged")
        public static let selectedColumnsChanged  = AXNotification(rawValue: "AXSelectedColumnsChanged")
        public static let loadComplete            = AXNotification(rawValue: "AXLoadComplete")
        
        public static let rowExpanded             = AXNotification(rawValue: "AXRowExpanded")
        public static let rowCollapsed            = AXNotification(rawValue: "AXRowCollapsed")
        
        // Cell-table notifications
        public static let selectedCellsChanged    = AXNotification(rawValue: "AXSelectedCellsChanged")
        
        // Layout area notifications
        public static let unitsChanged            = AXNotification(rawValue: "AXUnitsChanged")
        public static let selectedChildrenMoved   = AXNotification(rawValue: "AXSelectedChildrenMoved")
        
        // This notification allows an application to request that an announcement be made to the user
        // by an assistive application such as VoiceOver.  The notification requires a user info
        // dictionary with the key NSAccessibilityAnnouncementKey and the announcement as a localized
        // string.  In addition, the key NSAccessibilityAnnouncementPriorityKey should also be used to
        // help an assistive application determine the importance of this announcement.  This
        // notification should be posted for the application element.
        public static let announcementRequested   = AXNotification(rawValue: "AXAnnouncementRequested")
    }
}
