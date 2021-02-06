import XCTest
@testable import SwiftPro

final class StringTests: XCTestCase {
    
    static var allTests = [
        ("testIsBlankIfEmpty", testIsBlankIfEmpty),
        ("testIsBlankIfWhitespace", testIsBlankIfWhitespace),
        ("testIsBlankIfPresent", testIsBlankIfPresent)
    ]
    
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
