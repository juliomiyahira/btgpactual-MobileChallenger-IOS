//
//  CodeView.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 30/08/21.
//

import Foundation
import SnapKit

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraint()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CodeView {
    
    func setupView() {
        buildViewHierarchy()
        setupConstraint()
        setupAdditionalConfiguration()
    }
}

