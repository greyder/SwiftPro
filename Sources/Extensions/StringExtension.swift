extension String {
    
    /// A Boolean value indicating whether the string only contains whitespace
    public var isBlank: Bool {
        return allSatisfy({ $0.isWhitespace })
    }
}
