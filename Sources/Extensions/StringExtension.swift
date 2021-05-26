import Foundation

extension String {
    
    /// A Boolean value indicating whether the string only contains whitespace
    public var isBlank: Bool {
        return allSatisfy({ $0.isWhitespace })
    }
    
    /// A Boolean value indicating whether the string is a valid email
    public var isValidEmail: Bool {
        return NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
    
    
    /// A Boolean value indicating whether the string is a strong password with at least 1 lowercase, 1 uppercase, 1 digit, 1 special character, and 8 characters in length
    public func isStrongPassword(minLength: Int = 8) -> Bool {
        let regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[d$@$!%*?&#.])[A-Za-z\\dd$@$!%*?&#.]{\(minLength),}"
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self)
    }
}
