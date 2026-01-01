import Foundation

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("tauri-plugin-iap_PluginTests.bundle").path
        let buildPath = "/Users/elliotdunk/Documents/PocketSolver/src-tauri/plugins/tauri-plugin-iap/macos/.index-build/x86_64-apple-macosx/debug/tauri-plugin-iap_PluginTests.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            // Users can write a function called fatalError themselves, we should be resilient against that.
            Swift.fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}