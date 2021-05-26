import XCTest
//@testable import StringExtension
//@testable provides access only for internal functions; fileprivate and private declarations are not visible outside of their usual scope when using testable.
//since we are not testing internal functions and only public facing ones, we don't need to use testable.
import StringExtension

final class StringTests: XCTestCase {
    
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
    
    func testEmailIsInvalid() {
        let string = "email@com"
        XCTAssertFalse(string.isValidEmail)
    }
    
    func testEmailIsBlank() {
        let string = "  "
        XCTAssertFalse(string.isValidEmail)
    }
    
    func testEmailIsValid() {
        let string = "email@mail.com"
        XCTAssertTrue(string.isValidEmail)
    }
    
    func testPasswordIsWeak() {
        let string = "abcd1234"
        XCTAssertFalse(string.isStrongPassword())
    }
    
    func testPasswordIsBlank() {
        let string = "  "
        XCTAssertFalse(string.isStrongPassword())
    }
    
    func testPasswordIsShort() {
        let string = "Pw123!"
        XCTAssertFalse(string.isStrongPassword())
    }
    
    func testPasswordIsLong() {
        let string = "Password123!Password123!Password123!"
        XCTAssertTrue(string.isStrongPassword())
    }
    
    func testPasswordMinLength() {
        let string = "Pw123!"
        XCTAssertTrue(string.isStrongPassword(minLength: 4))
    }
    
    func testPasswordIsStrong() {
        let string = "Password123!"
        XCTAssertTrue(string.isStrongPassword())
    }
}
