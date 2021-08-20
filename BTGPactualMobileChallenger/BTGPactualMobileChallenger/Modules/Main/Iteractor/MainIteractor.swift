//
//  MainIteractor.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 20/08/21.
//

import Foundation

protocol MainIteractorProtocol {
    var presenter: MainPresenter? { get set }
    func getCurrencies()
}

class MainIteractor: MainIteractorProtocol {
    
    var presenter: MainPresenter?
   
    func getCurrencies() {
        print("Oi")
    }
}
