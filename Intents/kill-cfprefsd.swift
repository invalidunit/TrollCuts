//Created by udevs

import AppIntents

struct kill_cfprefsd_AppIntent: AppIntent {
	static let title: LocalizedStringResource = "kill cfprefsd"

	static let description = IntentDescription(
		"kill cfprefsd",
		categoryName: "Device"
	)

	func perform() async throws -> some IntentResult {
        let background = DispatchQueue.global()
        background.async {
            kill_cfprefsd()
        } 
        return .result()
	}
}
