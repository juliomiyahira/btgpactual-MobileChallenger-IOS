//
//  MainViewControllerScreenSpec.swift
//  BTGPactualMobileChallengerTests
//
//  Created by Julio Cezar Kenji Miyahira on 31/08/21.
//


import Foundation
import Quick
import Nimble
import Nimble_Snapshots

@testable import BTGPactualMobileChallenger

public class MainViewControllerScreenSpec: QuickSpec {
    
    public override func spec() {
        describe("Start MainView Controller screen Test") {
            it("show me") {
                let frame = CGRect(x: 0, y: 0, width: 500, height: 200)
                let view = MainViewControllerScreen(frame: frame)
                expect(view) == recordSnapshot("MainViewControllerScreen")
            }
        }
    }
}

