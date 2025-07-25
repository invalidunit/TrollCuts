import AppIntents

struct TextInput {
    static var title: LocalizedStringResource = "process"
    static var description: LocalizedStringResource? = "give me process name"
    
    var text: String
}

struct killall_AppIntent: AppIntent {
    static let title: LocalizedStringResource = "killall"
    
    static let description = IntentDescription(
        "killall process",
        categoryName: "Device"
    )
    
    @Parameter(title: "process")
    var inputText: String?
    
    func perform() async throws -> some IntentResult {
        if let inputText = self.inputText {
            let background = DispatchQueue.global()
            background.async {
                killall(inputText)
            }
            return .result()
        }
        return .result()
    }
}
