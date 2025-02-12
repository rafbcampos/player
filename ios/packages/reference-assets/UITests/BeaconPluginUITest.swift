import Foundation
import XCTest

class BeaconPluginUITests: BaseTestCase {
    override func navigateToAssetCollection() {
        app.otherElements.buttons["Plugins + Managed Player"].firstMatch.tap()
    }

    func testBeaconPluginAction() {
        withEyes("beacon action") { check in
            check("beacons on loaded")
            XCTAssertTrue(app.alerts["Info"].staticTexts.element(boundBy: 1).label.contains("action"))

            app.buttons["OK"].firstMatch.tap()
            let button = app.buttons["action"].firstMatch
            waitFor(button)
            button.tap()

            XCTAssertTrue(app.alerts["Info"].staticTexts.element(boundBy: 1).label.contains("some-data"))

            check("Multiple beacons alert")

        }
    }
}
