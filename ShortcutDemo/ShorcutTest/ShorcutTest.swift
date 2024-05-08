//
//  ShorcutTest.swift
//  ShorcutTest
//
//  Created by fate on 2023/9/1.
//

import XCTest

final class ShorcutTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
//        let app = XCUIApplication(bundleIdentifier: "com.apple.shortcuts")
//        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        

        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {

            // 启动捷径 App
                let shortcutApp = XCUIApplication(bundleIdentifier: "g")
                shortcutApp.launch()
                   // 点击运行 "test" 命令
                let runButton = shortcutApp.buttons["批量一键发送"]
                XCTAssertTrue(runButton.waitForExistence(timeout: 10), "按钮未出现")
                runButton.press(forDuration: 2)
                let eidtBtn = shortcutApp.buttons["编辑"]
                eidtBtn.tap();
            
            
            
            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
        }
    }
}
