//
//  SwiftyTabBarTransitionExamplesUITests.swift
//  SwiftyTabBarTransitionExamplesUITests
//
//  Created by NP2 on 5/25/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import XCTest

class SwiftyTabBarTransitionExamplesUITests: XCTestCase {

    override func setUp() {
//        continueAfterFailure = false
//        XCUIApplication().launch()
        testExample()
    }

    override func tearDown() {
    }

    func testExample() {
        
        
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        let item2Button = tabBarsQuery.buttons["Item 2"]
        item2Button.tap()
        
        let item1Button = tabBarsQuery.buttons["Item 1"]
        item1Button.tap()
        XCUIDevice.shared.orientation = .landscapeRight
        item2Button.tap()
        item1Button.tap()
        XCUIDevice.shared.orientation = .portraitUpsideDown
        XCUIDevice.shared.orientation = .landscapeLeft
        item2Button.tap()
        item1Button.tap()
        XCUIDevice.shared.orientation = .portrait
        app.statusBars.otherElements["3 of 3 Wi-Fi bars"].tap()
        XCUIDevice.shared.orientation = .portrait
        
        let theTabBarInterfaceDisplaysTabsAtTheBottomOfTheWindowForSelectingBetweenTheDifferentModesAndForDisplayingTheViewsForThatModeThisClassIsGenerallyUsedAsIsButMayAlsoBeSubclassedEachTabOfATabBarControllerInterfaceIsAssociatedWithACustomViewControllerWhenTheUserSelectsASpecificTabTheTabBarControllerDisplaysTheRootViewOfTheCorrespondingViewControllerReplacingAnyPreviousViewsStaticText = app.staticTexts["The tab bar interface displays tabs at the bottom of the window for selecting between the different modes and for displaying the views for that mode. This class is generally used as-is, but may also be subclassed.\n\nEach tab of a tab bar controller interface is associated with a custom view controller. When the user selects a specific tab, the tab bar controller displays the root view of the corresponding view controller, replacing any previous views."]
        theTabBarInterfaceDisplaysTabsAtTheBottomOfTheWindowForSelectingBetweenTheDifferentModesAndForDisplayingTheViewsForThatModeThisClassIsGenerallyUsedAsIsButMayAlsoBeSubclassedEachTabOfATabBarControllerInterfaceIsAssociatedWithACustomViewControllerWhenTheUserSelectsASpecificTabTheTabBarControllerDisplaysTheRootViewOfTheCorrespondingViewControllerReplacingAnyPreviousViewsStaticText.swipeDown()
        XCUIDevice.shared.orientation = .portrait
        app/*@START_MENU_TOKEN@*/.scrollViews/*[[".windows[\"SBCoverSheetWindow\"].scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.otherElements.collectionViews.containing(.other, identifier:"No Older Notifications").element.tap()
        XCUIDevice.shared.orientation = .portrait
        theTabBarInterfaceDisplaysTabsAtTheBottomOfTheWindowForSelectingBetweenTheDifferentModesAndForDisplayingTheViewsForThatModeThisClassIsGenerallyUsedAsIsButMayAlsoBeSubclassedEachTabOfATabBarControllerInterfaceIsAssociatedWithACustomViewControllerWhenTheUserSelectsASpecificTabTheTabBarControllerDisplaysTheRootViewOfTheCorrespondingViewControllerReplacingAnyPreviousViewsStaticText.swipeUp()
        XCUIDevice.shared.orientation = .portrait
        item2Button.tap()
        item1Button.tap()
        
    }

}
