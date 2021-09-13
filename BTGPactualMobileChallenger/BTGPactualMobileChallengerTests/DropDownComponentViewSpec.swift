//
//  DropDownComponentViewSpec.swift
//  BTGPactualMobileChallengerTests
//
//  Created by Julio Cezar Kenji Miyahira on 30/08/21.
//

import Foundation
import Quick
import Nimble
import Nimble_Snapshots

@testable import BTGPactualMobileChallenger

public class DropDownComponentViewSpec: QuickSpec {
    
    public override func spec() {
        describe("Start DropDown Test") {
            it("show me") {
                let frame = CGRect(x: 0, y: 0, width: 500, height: 200)
                let view = ButtomContainerComponentView(frame: frame)
                expect(view) == recordSnapshot("DropDownComponentView")
            }
        }
    }
}
