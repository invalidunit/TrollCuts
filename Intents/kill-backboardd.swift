//Created by udevs

import AppIntents

struct kill_backboardd_AppIntent: AppIntent {
	static let title: LocalizedStringResource = "kill backboardd"

	static let description = IntentDescription(
		"kill backboardd",
		categoryName: "Device"
	)

	func perform() async throws -> some IntentResult {
        let background = DispatchQueue.global()
        background.async {
            kill_backboardd()
        } 
        return .result()
	}
}
