//Created by udevs

import AppIntents

struct kill_SpringBoard_AppIntent: AppIntent {
	static let title: LocalizedStringResource = "kill SpringBoard"

	static let description = IntentDescription(
		"kill SpringBoard",
		categoryName: "Device"
	)

	func perform() async throws -> some IntentResult {
        let background = DispatchQueue.global()
        background.async {
            kill_SpringBoard()
        } 
        return .result()
	}
}
