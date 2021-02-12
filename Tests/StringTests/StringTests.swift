import XCTest
//@testable import StringExtension
//@testable provides access only for internal functions; fileprivate and private declarations are not visible outside of their usual scope when using testable.
import StringExtension

final class StringTests: XCTestCase {
    
    static var allTests = [
        ("testIsBlankIfEmpty", testIsBlankIfEmpty),
        ("testIsBlankIfWhitespace", testIsBlankIfWhitespace),
        ("testIsBlankIfPresent", testIsBlankIfPresent)
    ]
    
    /// Equivalent to isEmpty
    func testIsBlankIfEmpty() {
        let string = ""
        XCTAssertTrue(string.isBlank)
    }
    
    func testIsBlankIfWhitespace() {
        let string = " "
        XCTAssertTrue(string.isBlank)
    }
    
    func testIsBlankIfPresent() {
        let string = "abc"
        XCTAssertFalse(string.isBlank)
    }
}
