//
//  MainViewController.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/08/21.
//

import UIKit

protocol MainViewProtocol {
    var presenter: MainPresenterProtocol? { get set }
    func update(with currency: Currency)
    func update(with error: String)
}

class MainViewController: UIViewController, MainViewProtocol {
    
    var presenter: MainPresenterProtocol?
    
    override func loadView() {
        let viewScreen = MainViewControllerScreen()
        viewScreen.delegate = self
        self.view = viewScreen
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func getView() -> MainViewControllerScreen {
        return self.view as!MainViewControllerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.getCurrencies()
    }
    
    func update(with error: String) {
        print(error)
    }
    
    func update(with currency: Currency) {
        print(currency)
    }
}

extension MainViewController: MainViewControllerScrennDelegate {

    func buttonOneTap() {
        debugPrint("button one callled")
    }
    
    func buttonTwoTap() {
        debugPrint("button two callled")
    }
}
