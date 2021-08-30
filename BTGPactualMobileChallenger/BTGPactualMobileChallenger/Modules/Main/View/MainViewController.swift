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
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "MainHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "MainHeaderTableViewCell")
        }
    }
    
    var presenter: MainPresenterProtocol?
    
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

extension MainViewController: UITableViewDelegate {
    
}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainHeaderTableViewCell") as! MainHeaderTableViewCell
        return cell
    }
}
