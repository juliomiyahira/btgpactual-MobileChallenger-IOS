//
//  Currency.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 20/08/21.
//

import Foundation

struct Currency: Codable {
    let success: Bool?
    let currencies: [String: String]
}
