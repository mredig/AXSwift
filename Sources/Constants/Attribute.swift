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
        ///(NSString *) - type, non-localized (e.g. radioButton)
        public static let role                                   = Attribute(rawValue: "AXRole")
        ///(NSString *) - user readable role (e.g. "radio button")
        public static let roleDescription                        = Attribute(rawValue: "AXRoleDescription")
        ///(NSString *) - type, non-localized (e.g. closeButton)
        public static let subrole                                = Attribute(rawValue: "AXSubrole")
        ///(NSString *) - instance description (e.g. a tool tip)
        public static let help                                   = Attribute(rawValue: "AXHelp")
        ///(id)         - element's value
        public static let value                                  = Attribute(rawValue: "AXValue")
        ///(id)         - element's min value
        public static let minValue                               = Attribute(rawValue: "AXMinValue")
        ///(id)         - element's max value
        public static let maxValue                               = Attribute(rawValue: "AXMaxValue")
        ///(NSNumber *) - (boolValue) responds to user?
        public static let enabled                                = Attribute(rawValue: "AXEnabled")
        ///(NSNumber *) - (boolValue) has keyboard focus?
        public static let focused                                = Attribute(rawValue: "AXFocused")
        ///(id)         - element containing you
        public static let parent                                 = Attribute(rawValue: "AXParent")
        ///(NSArray *)  - elements you contain
        public static let children                               = Attribute(rawValue: "AXChildren")
        ///(id)         - UIElement for the containing window
        public static let window                                 = Attribute(rawValue: "AXWindow")
        ///(id)         - UIElement for the containing top level element
        public static let topLevelUIElement                      = Attribute(rawValue: "AXTopLevelUIElement")
        ///(NSArray *)  - child elements which are selected
        public static let selectedChildren                       = Attribute(rawValue: "AXSelectedChildren")
        ///(NSArray *)  - child elements which are visible
        public static let visibleChildren                        = Attribute(rawValue: "AXVisibleChildren")
        ///(NSValue *)  - (pointValue) position in screen coords
        public static let position                               = Attribute(rawValue: "AXPosition")
        ///(NSValue *)  - (sizeValue) size
        public static let size                                   = Attribute(rawValue: "AXSize")
        ///(NSValue *)  - (rectValue) frame
        public static let frame                                  = Attribute(rawValue: "AXFrame")
        ///(NSArray *)  - main elements
        public static let contents                               = Attribute(rawValue: "AXContents")
        ///(NSString *) - visible text (e.g. of a push button)
        public static let title                                  = Attribute(rawValue: "AXTitle")
        ///(NSString *) - instance description
        public static let description                            = Attribute(rawValue: "AXDescription")
        ///(id)         - menu being displayed
        public static let shownMenu                              = Attribute(rawValue: "AXShownMenu")
        ///(NSString *)  - text description of value
        public static let valueDescription                       = Attribute(rawValue: "AXValueDescription")

        ///(NSArray *)  - elements that share focus
        public static let sharedFocusElements                    = Attribute(rawValue: "AXSharedFocusElements")

        // Misc attributes
        ///(NSArray *)  - main elements
        public static let previousContents                       = Attribute(rawValue: "AXPreviousContents")
        ///(NSArray *)  - main elements
        public static let nextContents                           = Attribute(rawValue: "AXNextContents")
        ///(id)         - UIElement for header.
        public static let header                                 = Attribute(rawValue: "AXHeader")
        ///(NSNumber *) - (boolValue) is it dirty?
        public static let edited                                 = Attribute(rawValue: "AXEdited")
        ///(NSArray *)  - UIElements for tabs
        public static let tabs                                   = Attribute(rawValue: "AXTabs")
        ///(id)       - UIElement for the horizontal scroller
        public static let horizontalScrollBar                    = Attribute(rawValue: "AXHorizontalScrollBar")
        ///(id)         - UIElement for the vertical scroller
        public static let verticalScrollBar                      = Attribute(rawValue: "AXVerticalScrollBar")
        ///(id)         - UIElement for overflow
        public static let overflowButton                         = Attribute(rawValue: "AXOverflowButton")
        ///(id)         - UIElement for increment
        public static let incrementButton                        = Attribute(rawValue: "AXIncrementButton")
        ///(id)         - UIElement for decrement
        public static let decrementButton                        = Attribute(rawValue: "AXDecrementButton")
        ///(NSString *) - filename
        public static let filename                               = Attribute(rawValue: "AXFilename")
        ///(NSNumber *) - (boolValue) is expanded?
        public static let expanded                               = Attribute(rawValue: "AXExpanded")
        ///(NSNumber *) - (boolValue) is selected?
        public static let selected                               = Attribute(rawValue: "AXSelected")
        ///(NSArray *)  - UIElements for splitters
        public static let splitters                              = Attribute(rawValue: "AXSplitters")
        ///(NSString *) - url as string - for open document
        public static let document                               = Attribute(rawValue: "AXDocument")
        ///(NSValue *)  - (pointValue)
        public static let activationPoint                        = Attribute(rawValue: "AXActivationPoint")

        ///(NSURL *)    - url
        public static let url                                    = Attribute(rawValue: "AXURL")
        ///(NSNumber *)  - (intValue)
        public static let index                                  = Attribute(rawValue: "AXIndex")

        ///(NSNumber *)  - (intValue) number of rows
        public static let rowCount                               = Attribute(rawValue: "AXRowCount")

        ///(NSNumber *)  - (intValue) number of columns
        public static let columnCount                            = Attribute(rawValue: "AXColumnCount")

        ///(NSNumber *)  - (boolValue) is ordered by row?
        public static let orderedByRow                           = Attribute(rawValue: "AXOrderedByRow")

        ///(id)  - warning value of a level indicator, typically a number
        public static let warningValue                           = Attribute(rawValue: "AXWarningValue")

        ///(id)  - critical value of a level indicator, typically a number
        public static let criticalValue                          = Attribute(rawValue: "AXCriticalValue")

        ///(NSString *)  - placeholder value of a control such as a text field
        public static let placeholderValue                       = Attribute(rawValue: "AXPlaceholderValue")

        /// (NSNumber *) - (boolValue) contains protected content?
        public static let containsProtectedContent               = Attribute(rawValue: "AXContainsProtectedContent")
        ///(NSNumber *) - (boolValue)
        public static let alternateUIVisible                     = Attribute(rawValue: "AXAlternateUIVisible")

        // Linkage attributes
        ///(id)       - UIElement for the title
        public static let titleUIElement                         = Attribute(rawValue: "AXTitleUIElement")
        ///(NSArray *) - UIElements this titles
        public static let servesAsTitleForUIElements             = Attribute(rawValue: "AXServesAsTitleForUIElements")
        ///(NSArray *) - corresponding UIElements
        public static let linkedUIElements                       = Attribute(rawValue: "AXLinkedUIElements")

        // Text-specific attributes
        ///(NSString *) - selected text
        public static let selectedText                           = Attribute(rawValue: "AXSelectedText")
        ///(NSValue *)  - (rangeValue) range of selected text
        public static let selectedTextRange                      = Attribute(rawValue: "AXSelectedTextRange")
        ///(NSNumber *) - number of characters
        public static let numberOfCharacters                     = Attribute(rawValue: "AXNumberOfCharacters")
        ///(NSValue *)  - (rangeValue) range of visible text
        public static let visibleCharacterRange                  = Attribute(rawValue: "AXVisibleCharacterRange")
        ///(NSArray *)  - text views sharing text
        public static let sharedTextUIElements                   = Attribute(rawValue: "AXSharedTextUIElements")
        ///(NSValue *)  - (rangeValue) part of shared text in this view
        public static let sharedCharacterRange                   = Attribute(rawValue: "AXSharedCharacterRange")
        ///(NSNumber *) - line# containing caret
        public static let insertionPointLineNumber               = Attribute(rawValue: "AXInsertionPointLineNumber")
        ///(NSArray<NSValue *> *) - array of NSValue (rangeValue) ranges of selected text
        public static let selectedTextRanges                     = Attribute(rawValue: "AXSelectedTextRanges")
        /// - note: private/undocumented attribute
        public static let textInputMarkedRange                   = Attribute(rawValue: "AXTextInputMarkedRange")

        // Parameterized text-specific attributes
        ///(NSNumber *) - line# for char index; param:(NSNumber *)
        public static let lineForIndexParameterized              = Attribute(rawValue: "AXLineForIndexParameterized")
        ///(NSValue *)  - (rangeValue) range of line; param:(NSNumber *)
        public static let rangeForLineParameterized              = Attribute(rawValue: "AXRangeForLineParameterized")
        ///(NSString *) - substring; param:(NSValue * - rangeValue)
        public static let stringForRangeParameterized            = Attribute(rawValue: "AXStringForRangeParameterized")
        ///(NSValue *)  - (rangeValue) composed char range; param:(NSValue * - pointValue)
        public static let rangeForPositionParameterized          = Attribute(rawValue: "AXRangeForPositionParameterized")
        ///(NSValue *)  - (rangeValue) composed char range; param:(NSNumber *)
        public static let rangeForIndexParameterized             = Attribute(rawValue: "AXRangeForIndexParameterized")
        ///(NSValue *)  - (rectValue) bounds of text; param:(NSValue * - rangeValue)
        public static let boundsForRangeParameterized            = Attribute(rawValue: "AXBoundsForRangeParameterized")
        ///(NSData *)   - rtf for text; param:(NSValue * - rangeValue)
        public static let rtfForRangeParameterized               = Attribute(rawValue: "AXRTFForRangeParameterized")
        ///(NSValue *)  - (rangeValue) extent of style run; param:(NSNumber *)
        public static let styleRangeForIndexParameterized        = Attribute(rawValue: "AXStyleRangeForIndexParameterized")
        ///(NSAttributedString *) - does _not_ use attributes from Appkit/AttributedString.h
        public static let attributedStringForRangeParameterized  = Attribute(rawValue: "AXAttributedStringForRangeParameterized")

        // Text attributed string attributes and constants
        ///(NSDictionary *)  - NSAccessibilityFontXXXKey's
        public static let fontText                               = Attribute(rawValue: "AXFontText")
        ///CGColorRef
        public static let foregroundColorText                    = Attribute(rawValue: "AXForegroundColorText")
        ///CGColorRef
        public static let backgroundColorText                    = Attribute(rawValue: "AXBackgroundColorText")
        ///CGColorRef
        public static let underlineColorText                     = Attribute(rawValue: "AXUnderlineColorText")
        ///CGColorRef
        public static let strikethroughColorText                 = Attribute(rawValue: "AXStrikethroughColorText")
        ///(NSNumber *)     - underline style
        public static let underlineText                          = Attribute(rawValue: "AXUnderlineText")
        ///(NSNumber *)     - superscript>0, subscript<0
        public static let superscriptText                        = Attribute(rawValue: "AXSuperscriptText")
        ///(NSNumber *)     - (boolValue)
        public static let strikethroughText                      = Attribute(rawValue: "AXStrikethroughText")
        ///(NSNumber *)     - (boolValue)
        public static let shadowText                             = Attribute(rawValue: "AXShadowText")
        ///id - corresponding element
        public static let attachmentText                         = Attribute(rawValue: "AXAttachmentText")
        ///id - corresponding element
        public static let linkText                               = Attribute(rawValue: "AXLinkText")
        ///(NSNumber *)     - (boolValue)
        public static let autocorrectedText                      = Attribute(rawValue: "AXAutocorrectedText")

        // Textual list attributes and constants. Examples: unordered or ordered lists in a document.
        /// NSAttributedString, the prepended string of the list item. If the string is a common unicode character (e.g. a bullet •), return that unicode character. For lists with images before the text, return a reasonable label of the image.
        public static let listItemPrefixText                     = Attribute(rawValue: "AXListItemPrefixText")
        /// NSNumber, integerValue of the line index. Each list item increments the index, even for unordered lists. The first item should have index 0.
        public static let listItemIndexText                      = Attribute(rawValue: "AXListItemIndexText")
        /// NSNumber, integerValue of the indent level. Each sublist increments the level. The first item should have level 0.
        public static let listItemLevelText                      = Attribute(rawValue: "AXListItemLevelText")

        // MisspelledText attributes
        ///(NSNumber *)     - (boolValue)
        public static let misspelledText                         = Attribute(rawValue: "AXMisspelledText")
        ///(NSNumber *) - (boolValue)
        public static let markedMisspelledText                   = Attribute(rawValue: "AXMarkedMisspelledText")

        // Window-specific attributes
        ///(NSNumber *) - (boolValue) is it the main window?
        public static let main                                   = Attribute(rawValue: "AXMain")
        ///(NSNumber *) - (boolValue) is window minimized?
        public static let minimized                              = Attribute(rawValue: "AXMinimized")
        ///(id) - UIElement for close box (or nil)
        public static let closeButton                            = Attribute(rawValue: "AXCloseButton")
        ///(id) - UIElement for zoom box (or nil)
        public static let zoomButton                             = Attribute(rawValue: "AXZoomButton")
        ///(id) - UIElement for miniaturize box (or nil)
        public static let minimizeButton                         = Attribute(rawValue: "AXMinimizeButton")
        ///(id) - UIElement for toolbar box (or nil)
        public static let toolbarButton                          = Attribute(rawValue: "AXToolbarButton")
        ///(id) - UIElement for title's icon (or nil)
        public static let proxy                                  = Attribute(rawValue: "AXProxy")
        ///(id) - UIElement for grow box (or nil)
        public static let growArea                               = Attribute(rawValue: "AXGrowArea")
        ///(NSNumber *) - (boolValue) is the window modal
        public static let modal                                  = Attribute(rawValue: "AXModal")
        ///(id) - UIElement for default button
        public static let defaultButton                          = Attribute(rawValue: "AXDefaultButton")
        ///(id) - UIElement for cancel button
        public static let cancelButton                           = Attribute(rawValue: "AXCancelButton")
        ///(id) - UIElement for full screen button (or nil)
        public static let fullScreenButton                       = Attribute(rawValue: "AXFullScreenButton")
        /// - note: private/undocumented attribute
        ///(NSNumber *) - (boolValue) is the window fullscreen
        public static let fullScreen                             = Attribute(rawValue: "AXFullScreen")

        // Application-specific attributes
        ///(id)         - UIElement for the menu bar
        public static let menuBar                                = Attribute(rawValue: "AXMenuBar")
        ///(NSArray *)  - UIElements for the windows
        public static let windows                                = Attribute(rawValue: "AXWindows")
        ///(NSNumber *) - (boolValue) is the app active?
        public static let frontmost                              = Attribute(rawValue: "AXFrontmost")
        ///(NSNumber *) - (boolValue) is the app hidden?
        public static let hidden                                 = Attribute(rawValue: "AXHidden")
        ///(id)         - UIElement for the main window.
        public static let mainWindow                             = Attribute(rawValue: "AXMainWindow")
        ///(id)         - UIElement for the key window.
        public static let focusedWindow                          = Attribute(rawValue: "AXFocusedWindow")
        ///(id)         - Currently focused UIElement.
        public static let focusedUIElement                       = Attribute(rawValue: "AXFocusedUIElement")
        ///(id)         - UIElement for the application extras menu bar.
        public static let extrasMenuBar                          = Attribute(rawValue: "AXExtrasMenuBar")
        /// - note: private/undocumented attribute
        ///(NSNumber *) - (boolValue) is the enhanced user interface active?
        public static let enhancedUserInterface                  = Attribute(rawValue: "AXEnhancedUserInterface")

        ///(NSString *) - NSAccessibilityXXXOrientationValue
        public static let orientation                            = Attribute(rawValue: "AXOrientation")

        ///(NSArray *)  - UIElements for titles
        public static let columnTitles                           = Attribute(rawValue: "AXColumnTitles")

        ///(id)         - UIElement for search field search btn
        public static let searchButton                           = Attribute(rawValue: "AXSearchButton")
        ///(id)         - UIElement for search field menu
        public static let searchMenu                             = Attribute(rawValue: "AXSearchMenu")
        ///(id)         - UIElement for search field clear btn
        public static let clearButton                            = Attribute(rawValue: "AXClearButton")

        // Table/outline view attributes
        ///(NSArray *)  - UIElements for rows
        public static let rows                                   = Attribute(rawValue: "AXRows")
        ///(NSArray *)  - UIElements for visible rows
        public static let visibleRows                            = Attribute(rawValue: "AXVisibleRows")
        ///(NSArray *)  - UIElements for selected rows
        public static let selectedRows                           = Attribute(rawValue: "AXSelectedRows")
        ///(NSArray *)  - UIElements for columns
        public static let columns                                = Attribute(rawValue: "AXColumns")
        ///(NSArray *)  - UIElements for visible columns
        public static let visibleColumns                         = Attribute(rawValue: "AXVisibleColumns")
        ///(NSArray *)  - UIElements for selected columns
        public static let selectedColumns                        = Attribute(rawValue: "AXSelectedColumns")
        ///(NSString *) - see sort direction values below
        public static let sortDirection                          = Attribute(rawValue: "AXSortDirection")

        // Cell-based table attributes
        ///(NSArray *)  - UIElements for selected cells
        public static let selectedCells                          = Attribute(rawValue: "AXSelectedCells")
        ///(NSArray *)  - UIElements for visible cells
        public static let visibleCells                           = Attribute(rawValue: "AXVisibleCells")
        ///(NSArray *)  - UIElements for row headers
        public static let rowHeaderUIElements                    = Attribute(rawValue: "AXRowHeaderUIElements")
        ///(NSArray *)  - UIElements for column headers
        public static let columnHeaderUIElements                 = Attribute(rawValue: "AXColumnHeaderUIElements")

        // Cell-based table parameterized attributes.  The parameter for this attribute is an NSArray containing two NSNumbers, the first NSNumber specifies the column index, the second NSNumber specifies the row index.
        /// (id) - UIElement for cell at specified row and column
        public static let cellForColumnAndRowParameterized       = Attribute(rawValue: "AXCellForColumnAndRowParameterized")

        // Cell attributes.  The index range contains both the starting index, and the index span in a table.
        ///(NSValue *)  - (rangeValue) location and row span
        public static let rowIndexRange                          = Attribute(rawValue: "AXRowIndexRange")
        ///(NSValue *)  - (rangeValue) location and column span
        public static let columnIndexRange                       = Attribute(rawValue: "AXColumnIndexRange")

        // Layout area attributes
        ///(NSString *) - see ruler unit values below
        public static let horizontalUnits                        = Attribute(rawValue: "AXHorizontalUnits")
        ///(NSString *) - see ruler unit values below
        public static let verticalUnits                          = Attribute(rawValue: "AXVerticalUnits")
        ///(NSString *)
        public static let horizontalUnitDescription              = Attribute(rawValue: "AXHorizontalUnitDescription")
        ///(NSString *)
        public static let verticalUnitDescription                = Attribute(rawValue: "AXVerticalUnitDescription")

        // Layout area parameterized attributes
        public static let layoutPointForScreenPointParameterized = "Attribute(rawValue: AXLayoutPointForScreenPointParameterized" //)(NSValue *)  - (pointValue); param:(NSValue * - pointValue)
                                                                                                                                  ///(NSValue *)  - (sizeValue); param:(NSValue * - sizeValue)
        public static let layoutSizeForScreenSizeParameterized   = Attribute(rawValue: "AXLayoutSizeForScreenSizeParameterized")
        public static let screenPointForLayoutPointParameterized = "Attribute(rawValue: AXScreenPointForLayoutPointParameterized" //)(NSValue *)  - (pointValue); param:(NSValue * - pointValue)
                                                                                                                                  ///(NSValue *)  - (sizeValue); param:(NSValue * - sizeValue)
        public static let screenSizeForLayoutSizeParameterized   = Attribute(rawValue: "AXScreenSizeForLayoutSizeParameterized")

        // Layout item attributes
        ///(NSArray *)  - UIElements for handles
        public static let handles                                = Attribute(rawValue: "AXHandles")

        // Outline attributes
        ///(NSNumber *) - (boolValue) is disclosing rows?
        public static let disclosing                             = Attribute(rawValue: "AXDisclosing")
        ///(NSArray *)  - UIElements for disclosed rows
        public static let disclosedRows                          = Attribute(rawValue: "AXDisclosedRows")
        ///(id)         - UIElement for disclosing row
        public static let disclosedByRow                         = Attribute(rawValue: "AXDisclosedByRow")
        ///(NSNumber *) - indentation level
        public static let disclosureLevel                        = Attribute(rawValue: "AXDisclosureLevel")

        // Slider attributes
        ///(NSArray<NSNumber *> *) - array of allowed values
        public static let allowedValues                          = Attribute(rawValue: "AXAllowedValues")
        ///(NSArray *) - array of label UIElements
        public static let labelUIElements                        = Attribute(rawValue: "AXLabelUIElements")
        ///(NSNumber *) - value of a label UIElement
        public static let labelValue                             = Attribute(rawValue: "AXLabelValue")

        // Matte attributes
        // Attributes no longer supported
        ///(NSValue *) - (rect value) bounds of matte hole in screen coords
        public static let matteHole                              = Attribute(rawValue: "AXMatteHole")
        ///(id) - UIElement clipped by the matte
        public static let matteContentUIElement                  = Attribute(rawValue: "AXMatteContentUIElement")

        // Ruler view attributes
        ///(NSArray *)
        public static let markerUIElements                       = Attribute(rawValue: "AXMarkerUIElements")
        ///
        public static let markerValues                           = Attribute(rawValue: "AXMarkerValues")
        ///(id)
        public static let markerGroupUIElement                   = Attribute(rawValue: "AXMarkerGroupUIElement")
        ///(NSString *) - see ruler unit values below
        public static let units                                  = Attribute(rawValue: "AXUnits")
        ///(NSString *)
        public static let unitDescription                        = Attribute(rawValue: "AXUnitDescription")
        ///(NSString *) - see ruler marker type values below
        public static let markerType                             = Attribute(rawValue: "AXMarkerType")
        ///(NSString *)
        public static let markerTypeDescription                  = Attribute(rawValue: "AXMarkerTypeDescription")

        // UI element identification attributes
        ///(NSString *)
        public static let identifier                             = Attribute(rawValue: "AXIdentifier")

        // System-wide attributes
        public static let focusedApplication                     = Attribute(rawValue: "AXFocusedApplication")

        // Unknown attributes
        public static let functionRowTopLevelElements            = Attribute(rawValue: "AXFunctionRowTopLevelElements")
        public static let childrenInNavigationOrder              = Attribute(rawValue: "AXChildrenInNavigationOrder")
    }
}
