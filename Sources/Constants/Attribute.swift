import Foundation

@available(*, deprecated, renamed: "UIElement.Attribute", message: "Provided for drop in replacement, but now the type is located under the `UIElement` namespace.")
public typealias Attribute = UIElement.Attribute
extension UIElement {
    public struct Attribute: RawRepresentable, Hashable, Sendable {
        public let rawValue: String
        public var rawCFStringValue: CFString { rawValue as CFString }

        public init(rawValue: String) {
            self.rawValue = rawValue
        }

        // Standard attributes
        public static let role                                   = Attribute(rawValue: "AXRole") //(NSString *) - type, non-localized (e.g. radioButton)
        public static let roleDescription                        = Attribute(rawValue: "AXRoleDescription") //(NSString *) - user readable role (e.g. "radio button")
        public static let subrole                                = Attribute(rawValue: "AXSubrole") //(NSString *) - type, non-localized (e.g. closeButton)
        public static let help                                   = Attribute(rawValue: "AXHelp") //(NSString *) - instance description (e.g. a tool tip)
        public static let value                                  = Attribute(rawValue: "AXValue") //(id)         - element's value
        public static let minValue                               = Attribute(rawValue: "AXMinValue") //(id)         - element's min value
        public static let maxValue                               = Attribute(rawValue: "AXMaxValue") //(id)         - element's max value
        public static let enabled                                = Attribute(rawValue: "AXEnabled") //(NSNumber *) - (boolValue) responds to user?
        public static let focused                                = Attribute(rawValue: "AXFocused") //(NSNumber *) - (boolValue) has keyboard focus?
        public static let parent                                 = Attribute(rawValue: "AXParent") //(id)         - element containing you
        public static let children                               = Attribute(rawValue: "AXChildren") //(NSArray *)  - elements you contain
        public static let window                                 = Attribute(rawValue: "AXWindow") //(id)         - UIElement for the containing window
        public static let topLevelUIElement                      = Attribute(rawValue: "AXTopLevelUIElement") //(id)         - UIElement for the containing top level element
        public static let selectedChildren                       = Attribute(rawValue: "AXSelectedChildren") //(NSArray *)  - child elements which are selected
        public static let visibleChildren                        = Attribute(rawValue: "AXVisibleChildren") //(NSArray *)  - child elements which are visible
        public static let position                               = Attribute(rawValue: "AXPosition") //(NSValue *)  - (pointValue) position in screen coords
        public static let size                                   = Attribute(rawValue: "AXSize") //(NSValue *)  - (sizeValue) size
        public static let frame                                  = Attribute(rawValue: "AXFrame") //(NSValue *)  - (rectValue) frame
        public static let contents                               = Attribute(rawValue: "AXContents") //(NSArray *)  - main elements
        public static let title                                  = Attribute(rawValue: "AXTitle") //(NSString *) - visible text (e.g. of a push button)
        public static let description                            = Attribute(rawValue: "AXDescription") //(NSString *) - instance description
        public static let shownMenu                              = Attribute(rawValue: "AXShownMenu") //(id)         - menu being displayed
        public static let valueDescription                       = Attribute(rawValue: "AXValueDescription") //(NSString *)  - text description of value

        public static let sharedFocusElements                    = Attribute(rawValue: "AXSharedFocusElements") //(NSArray *)  - elements that share focus

        // Misc attributes
        public static let previousContents                       = Attribute(rawValue: "AXPreviousContents") //(NSArray *)  - main elements
        public static let nextContents                           = Attribute(rawValue: "AXNextContents") //(NSArray *)  - main elements
        public static let header                                 = Attribute(rawValue: "AXHeader") //(id)         - UIElement for header.
        public static let edited                                 = Attribute(rawValue: "AXEdited") //(NSNumber *) - (boolValue) is it dirty?
        public static let tabs                                   = Attribute(rawValue: "AXTabs") //(NSArray *)  - UIElements for tabs
        public static let horizontalScrollBar                    = Attribute(rawValue: "AXHorizontalScrollBar") //(id)       - UIElement for the horizontal scroller
        public static let verticalScrollBar                      = Attribute(rawValue: "AXVerticalScrollBar") //(id)         - UIElement for the vertical scroller
        public static let overflowButton                         = Attribute(rawValue: "AXOverflowButton") //(id)         - UIElement for overflow
        public static let incrementButton                        = Attribute(rawValue: "AXIncrementButton") //(id)         - UIElement for increment
        public static let decrementButton                        = Attribute(rawValue: "AXDecrementButton") //(id)         - UIElement for decrement
        public static let filename                               = Attribute(rawValue: "AXFilename") //(NSString *) - filename
        public static let expanded                               = Attribute(rawValue: "AXExpanded") //(NSNumber *) - (boolValue) is expanded?
        public static let selected                               = Attribute(rawValue: "AXSelected") //(NSNumber *) - (boolValue) is selected?
        public static let splitters                              = Attribute(rawValue: "AXSplitters") //(NSArray *)  - UIElements for splitters
        public static let document                               = Attribute(rawValue: "AXDocument") //(NSString *) - url as string - for open document
        public static let activationPoint                        = Attribute(rawValue: "AXActivationPoint") //(NSValue *)  - (pointValue)

        public static let url                                    = Attribute(rawValue: "AXURL") //(NSURL *)    - url
        public static let index                                  = Attribute(rawValue: "AXIndex") //(NSNumber *)  - (intValue)

        public static let rowCount                               = Attribute(rawValue: "AXRowCount") //(NSNumber *)  - (intValue) number of rows

        public static let columnCount                            = Attribute(rawValue: "AXColumnCount") //(NSNumber *)  - (intValue) number of columns

        public static let orderedByRow                           = Attribute(rawValue: "AXOrderedByRow") //(NSNumber *)  - (boolValue) is ordered by row?

        public static let warningValue                           = Attribute(rawValue: "AXWarningValue") //(id)  - warning value of a level indicator, typically a number

        public static let criticalValue                          = Attribute(rawValue: "AXCriticalValue") //(id)  - critical value of a level indicator, typically a number

        public static let placeholderValue                       = Attribute(rawValue: "AXPlaceholderValue") //(NSString *)  - placeholder value of a control such as a text field

        public static let containsProtectedContent               = Attribute(rawValue: "AXContainsProtectedContent") // (NSNumber *) - (boolValue) contains protected content?
        public static let alternateUIVisible                     = Attribute(rawValue: "AXAlternateUIVisible") //(NSNumber *) - (boolValue)

        // Linkage attributes
        public static let titleUIElement                         = Attribute(rawValue: "AXTitleUIElement") //(id)       - UIElement for the title
        public static let servesAsTitleForUIElements             = Attribute(rawValue: "AXServesAsTitleForUIElements") //(NSArray *) - UIElements this titles
        public static let linkedUIElements                       = Attribute(rawValue: "AXLinkedUIElements") //(NSArray *) - corresponding UIElements

        // Text-specific attributes
        public static let selectedText                           = Attribute(rawValue: "AXSelectedText") //(NSString *) - selected text
        public static let selectedTextRange                      = Attribute(rawValue: "AXSelectedTextRange") //(NSValue *)  - (rangeValue) range of selected text
        public static let numberOfCharacters                     = Attribute(rawValue: "AXNumberOfCharacters") //(NSNumber *) - number of characters
        public static let visibleCharacterRange                  = Attribute(rawValue: "AXVisibleCharacterRange") //(NSValue *)  - (rangeValue) range of visible text
        public static let sharedTextUIElements                   = Attribute(rawValue: "AXSharedTextUIElements") //(NSArray *)  - text views sharing text
        public static let sharedCharacterRange                   = Attribute(rawValue: "AXSharedCharacterRange") //(NSValue *)  - (rangeValue) part of shared text in this view
        public static let insertionPointLineNumber               = Attribute(rawValue: "AXInsertionPointLineNumber") //(NSNumber *) - line# containing caret
        public static let selectedTextRanges                     = Attribute(rawValue: "AXSelectedTextRanges") //(NSArray<NSValue *> *) - array of NSValue (rangeValue) ranges of selected text
                                                                                                                /// - note: private/undocumented attribute
        public static let textInputMarkedRange                   = Attribute(rawValue: "AXTextInputMarkedRange")

        // Parameterized text-specific attributes
        public static let lineForIndexParameterized              = Attribute(rawValue: "AXLineForIndexParameterized") //(NSNumber *) - line# for char index; param:(NSNumber *)
        public static let rangeForLineParameterized              = Attribute(rawValue: "AXRangeForLineParameterized") //(NSValue *)  - (rangeValue) range of line; param:(NSNumber *)
        public static let stringForRangeParameterized            = Attribute(rawValue: "AXStringForRangeParameterized") //(NSString *) - substring; param:(NSValue * - rangeValue)
        public static let rangeForPositionParameterized          = Attribute(rawValue: "AXRangeForPositionParameterized") //(NSValue *)  - (rangeValue) composed char range; param:(NSValue * - pointValue)
        public static let rangeForIndexParameterized             = Attribute(rawValue: "AXRangeForIndexParameterized") //(NSValue *)  - (rangeValue) composed char range; param:(NSNumber *)
        public static let boundsForRangeParameterized            = Attribute(rawValue: "AXBoundsForRangeParameterized") //(NSValue *)  - (rectValue) bounds of text; param:(NSValue * - rangeValue)
        public static let rtfForRangeParameterized               = Attribute(rawValue: "AXRTFForRangeParameterized") //(NSData *)   - rtf for text; param:(NSValue * - rangeValue)
        public static let styleRangeForIndexParameterized        = Attribute(rawValue: "AXStyleRangeForIndexParameterized") //(NSValue *)  - (rangeValue) extent of style run; param:(NSNumber *)
        public static let attributedStringForRangeParameterized  = Attribute(rawValue: "AXAttributedStringForRangeParameterized") //(NSAttributedString *) - does _not_ use attributes from Appkit/AttributedString.h

        // Text attributed string attributes and constants
        public static let fontText                               = Attribute(rawValue: "AXFontText") //(NSDictionary *)  - NSAccessibilityFontXXXKey's
        public static let foregroundColorText                    = Attribute(rawValue: "AXForegroundColorText") //CGColorRef
        public static let backgroundColorText                    = Attribute(rawValue: "AXBackgroundColorText") //CGColorRef
        public static let underlineColorText                     = Attribute(rawValue: "AXUnderlineColorText") //CGColorRef
        public static let strikethroughColorText                 = Attribute(rawValue: "AXStrikethroughColorText") //CGColorRef
        public static let underlineText                          = Attribute(rawValue: "AXUnderlineText") //(NSNumber *)     - underline style
        public static let superscriptText                        = Attribute(rawValue: "AXSuperscriptText") //(NSNumber *)     - superscript>0, subscript<0
        public static let strikethroughText                      = Attribute(rawValue: "AXStrikethroughText") //(NSNumber *)     - (boolValue)
        public static let shadowText                             = Attribute(rawValue: "AXShadowText") //(NSNumber *)     - (boolValue)
        public static let attachmentText                         = Attribute(rawValue: "AXAttachmentText") //id - corresponding element
        public static let linkText                               = Attribute(rawValue: "AXLinkText") //id - corresponding element
        public static let autocorrectedText                      = Attribute(rawValue: "AXAutocorrectedText") //(NSNumber *)     - (boolValue)

        // Textual list attributes and constants. Examples: unordered or ordered lists in a document.
        public static let listItemPrefixText                     = Attribute(rawValue: "AXListItemPrefixText") // NSAttributedString, the prepended string of the list item. If the string is a common unicode character (e.g. a bullet •), return that unicode character. For lists with images before the text, return a reasonable label of the image.
        public static let listItemIndexText                      = Attribute(rawValue: "AXListItemIndexText") // NSNumber, integerValue of the line index. Each list item increments the index, even for unordered lists. The first item should have index 0.
        public static let listItemLevelText                      = Attribute(rawValue: "AXListItemLevelText") // NSNumber, integerValue of the indent level. Each sublist increments the level. The first item should have level 0.

        // MisspelledText attributes
        public static let misspelledText                         = Attribute(rawValue: "AXMisspelledText") //(NSNumber *)     - (boolValue)
        public static let markedMisspelledText                   = Attribute(rawValue: "AXMarkedMisspelledText") //(NSNumber *) - (boolValue)

        // Window-specific attributes
        public static let main                                   = Attribute(rawValue: "AXMain") //(NSNumber *) - (boolValue) is it the main window?
        public static let minimized                              = Attribute(rawValue: "AXMinimized") //(NSNumber *) - (boolValue) is window minimized?
        public static let closeButton                            = Attribute(rawValue: "AXCloseButton") //(id) - UIElement for close box (or nil)
        public static let zoomButton                             = Attribute(rawValue: "AXZoomButton") //(id) - UIElement for zoom box (or nil)
        public static let minimizeButton                         = Attribute(rawValue: "AXMinimizeButton") //(id) - UIElement for miniaturize box (or nil)
        public static let toolbarButton                          = Attribute(rawValue: "AXToolbarButton") //(id) - UIElement for toolbar box (or nil)
        public static let proxy                                  = Attribute(rawValue: "AXProxy") //(id) - UIElement for title's icon (or nil)
        public static let growArea                               = Attribute(rawValue: "AXGrowArea") //(id) - UIElement for grow box (or nil)
        public static let modal                                  = Attribute(rawValue: "AXModal") //(NSNumber *) - (boolValue) is the window modal
        public static let defaultButton                          = Attribute(rawValue: "AXDefaultButton") //(id) - UIElement for default button
        public static let cancelButton                           = Attribute(rawValue: "AXCancelButton") //(id) - UIElement for cancel button
        public static let fullScreenButton                       = Attribute(rawValue: "AXFullScreenButton") //(id) - UIElement for full screen button (or nil)
                                                                                                              /// - note: private/undocumented attribute
        public static let fullScreen                             = Attribute(rawValue: "AXFullScreen") //(NSNumber *) - (boolValue) is the window fullscreen

        // Application-specific attributes
        public static let menuBar                                = Attribute(rawValue: "AXMenuBar") //(id)         - UIElement for the menu bar
        public static let windows                                = Attribute(rawValue: "AXWindows") //(NSArray *)  - UIElements for the windows
        public static let frontmost                              = Attribute(rawValue: "AXFrontmost") //(NSNumber *) - (boolValue) is the app active?
        public static let hidden                                 = Attribute(rawValue: "AXHidden") //(NSNumber *) - (boolValue) is the app hidden?
        public static let mainWindow                             = Attribute(rawValue: "AXMainWindow") //(id)         - UIElement for the main window.
        public static let focusedWindow                          = Attribute(rawValue: "AXFocusedWindow") //(id)         - UIElement for the key window.
        public static let focusedUIElement                       = Attribute(rawValue: "AXFocusedUIElement") //(id)         - Currently focused UIElement.
        public static let extrasMenuBar                          = Attribute(rawValue: "AXExtrasMenuBar") //(id)         - UIElement for the application extras menu bar.
                                                                                                           /// - note: private/undocumented attribute
        public static let enhancedUserInterface                  = Attribute(rawValue: "AXEnhancedUserInterface") //(NSNumber *) - (boolValue) is the enhanced user interface active?

        public static let orientation                            = Attribute(rawValue: "AXOrientation") //(NSString *) - NSAccessibilityXXXOrientationValue

        public static let columnTitles                           = Attribute(rawValue: "AXColumnTitles") //(NSArray *)  - UIElements for titles

        public static let searchButton                           = Attribute(rawValue: "AXSearchButton") //(id)         - UIElement for search field search btn
        public static let searchMenu                             = Attribute(rawValue: "AXSearchMenu") //(id)         - UIElement for search field menu
        public static let clearButton                            = Attribute(rawValue: "AXClearButton") //(id)         - UIElement for search field clear btn

        // Table/outline view attributes
        public static let rows                                   = Attribute(rawValue: "AXRows") //(NSArray *)  - UIElements for rows
        public static let visibleRows                            = Attribute(rawValue: "AXVisibleRows") //(NSArray *)  - UIElements for visible rows
        public static let selectedRows                           = Attribute(rawValue: "AXSelectedRows") //(NSArray *)  - UIElements for selected rows
        public static let columns                                = Attribute(rawValue: "AXColumns") //(NSArray *)  - UIElements for columns
        public static let visibleColumns                         = Attribute(rawValue: "AXVisibleColumns") //(NSArray *)  - UIElements for visible columns
        public static let selectedColumns                        = Attribute(rawValue: "AXSelectedColumns") //(NSArray *)  - UIElements for selected columns
        public static let sortDirection                          = Attribute(rawValue: "AXSortDirection") //(NSString *) - see sort direction values below

        // Cell-based table attributes
        public static let selectedCells                          = Attribute(rawValue: "AXSelectedCells") //(NSArray *)  - UIElements for selected cells
        public static let visibleCells                           = Attribute(rawValue: "AXVisibleCells") //(NSArray *)  - UIElements for visible cells
        public static let rowHeaderUIElements                    = Attribute(rawValue: "AXRowHeaderUIElements") //(NSArray *)  - UIElements for row headers
        public static let columnHeaderUIElements                 = Attribute(rawValue: "AXColumnHeaderUIElements") //(NSArray *)  - UIElements for column headers

        // Cell-based table parameterized attributes.  The parameter for this attribute is an NSArray containing two NSNumbers, the first NSNumber specifies the column index, the second NSNumber specifies the row index.
        public static let cellForColumnAndRowParameterized       = Attribute(rawValue: "AXCellForColumnAndRowParameterized") // (id) - UIElement for cell at specified row and column

        // Cell attributes.  The index range contains both the starting index, and the index span in a table.
        public static let rowIndexRange                          = Attribute(rawValue: "AXRowIndexRange") //(NSValue *)  - (rangeValue) location and row span
        public static let columnIndexRange                       = Attribute(rawValue: "AXColumnIndexRange") //(NSValue *)  - (rangeValue) location and column span

        // Layout area attributes
        public static let horizontalUnits                        = Attribute(rawValue: "AXHorizontalUnits") //(NSString *) - see ruler unit values below
        public static let verticalUnits                          = Attribute(rawValue: "AXVerticalUnits") //(NSString *) - see ruler unit values below
        public static let horizontalUnitDescription              = Attribute(rawValue: "AXHorizontalUnitDescription") //(NSString *)
        public static let verticalUnitDescription                = Attribute(rawValue: "AXVerticalUnitDescription") //(NSString *)

        // Layout area parameterized attributes
        public static let layoutPointForScreenPointParameterized = "Attribute(rawValue: AXLayoutPointForScreenPointParameterized" //)(NSValue *)  - (pointValue); param:(NSValue * - pointValue)
        public static let layoutSizeForScreenSizeParameterized   = Attribute(rawValue: "AXLayoutSizeForScreenSizeParameterized") //(NSValue *)  - (sizeValue); param:(NSValue * - sizeValue)
        public static let screenPointForLayoutPointParameterized = "Attribute(rawValue: AXScreenPointForLayoutPointParameterized" //)(NSValue *)  - (pointValue); param:(NSValue * - pointValue)
        public static let screenSizeForLayoutSizeParameterized   = Attribute(rawValue: "AXScreenSizeForLayoutSizeParameterized") //(NSValue *)  - (sizeValue); param:(NSValue * - sizeValue)

        // Layout item attributes
        public static let handles                                = Attribute(rawValue: "AXHandles") //(NSArray *)  - UIElements for handles

        // Outline attributes
        public static let disclosing                             = Attribute(rawValue: "AXDisclosing") //(NSNumber *) - (boolValue) is disclosing rows?
        public static let disclosedRows                          = Attribute(rawValue: "AXDisclosedRows") //(NSArray *)  - UIElements for disclosed rows
        public static let disclosedByRow                         = Attribute(rawValue: "AXDisclosedByRow") //(id)         - UIElement for disclosing row
        public static let disclosureLevel                        = Attribute(rawValue: "AXDisclosureLevel") //(NSNumber *) - indentation level

        // Slider attributes
        public static let allowedValues                          = Attribute(rawValue: "AXAllowedValues") //(NSArray<NSNumber *> *) - array of allowed values
        public static let labelUIElements                        = Attribute(rawValue: "AXLabelUIElements") //(NSArray *) - array of label UIElements
        public static let labelValue                             = Attribute(rawValue: "AXLabelValue") //(NSNumber *) - value of a label UIElement

        // Matte attributes
        // Attributes no longer supported
        public static let matteHole                              = Attribute(rawValue: "AXMatteHole") //(NSValue *) - (rect value) bounds of matte hole in screen coords
        public static let matteContentUIElement                  = Attribute(rawValue: "AXMatteContentUIElement") //(id) - UIElement clipped by the matte

        // Ruler view attributes
        public static let markerUIElements                       = Attribute(rawValue: "AXMarkerUIElements") //(NSArray *)
        public static let markerValues                           = Attribute(rawValue: "AXMarkerValues") //
        public static let markerGroupUIElement                   = Attribute(rawValue: "AXMarkerGroupUIElement") //(id)
        public static let units                                  = Attribute(rawValue: "AXUnits") //(NSString *) - see ruler unit values below
        public static let unitDescription                        = Attribute(rawValue: "AXUnitDescription") //(NSString *)
        public static let markerType                             = Attribute(rawValue: "AXMarkerType") //(NSString *) - see ruler marker type values below
        public static let markerTypeDescription                  = Attribute(rawValue: "AXMarkerTypeDescription") //(NSString *)

        // UI element identification attributes
        public static let identifier                             = Attribute(rawValue: "AXIdentifier") //(NSString *)

        // System-wide attributes
        public static let focusedApplication                     = Attribute(rawValue: "AXFocusedApplication")

        // Unknown attributes
        public static let functionRowTopLevelElements            = Attribute(rawValue: "AXFunctionRowTopLevelElements")
        public static let childrenInNavigationOrder              = Attribute(rawValue: "AXChildrenInNavigationOrder")
    }
}
