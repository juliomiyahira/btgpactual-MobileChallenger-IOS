//
//  MainViewController.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/08/21.
//

import UIKit

protocol MainViewProtocol {
    var presenter: MainPresenterProtocol? { get set }
    func update(with currency: [Currency])
    func update(with error: String)
}

class MainViewController: UIViewController, MainViewProtocol {
    
    var presenter: MainPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.getCurrencies()
    }
    
    func update(with error: String) {
        print(error)
    }
    
    func update(with currency: [Currency]) {
        print(currency)
    }
}
