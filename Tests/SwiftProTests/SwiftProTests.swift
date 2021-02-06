import XCTest
@testable import SwiftPro

final class SwiftProTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftPro().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
