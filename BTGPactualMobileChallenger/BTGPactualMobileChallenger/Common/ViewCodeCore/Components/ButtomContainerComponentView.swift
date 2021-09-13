//
//  DropDownComponentView.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 30/08/21.
//

import Foundation
import UIKit

protocol ButtomContainerComponentDelegate {
   func buttonOneTap()
   func buttonTwoTap()
}

final class ButtomContainerComponentView: UIView {
    
    var delegate: ButtomContainerComponentDelegate?
    
    lazy var stackViewContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.backgroundColor = .red
        view.spacing = 8
        return view
    }()
    
   public lazy var selectedButtonOne: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .blue
        view.addTarget(self, action: #selector(buttonTapOne), for: .touchUpInside)
        return view
    }()
    
    public lazy var selectedButtonTwo: UIButton = {
         let view = UIButton(frame: .zero)
         view.backgroundColor = .green
         view.addTarget(self, action: #selector(buttonTapTwo), for: .touchUpInside)
         return view
     }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ButtomContainerComponentView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(stackViewContainer)
        stackViewContainer.addArrangedSubview(selectedButtonOne)
        stackViewContainer.addArrangedSubview(selectedButtonTwo)
    }
    
    func setupConstraint() {
        stackViewContainer.snp.makeConstraints{make in
            make.height.equalTo(50)
            make.width.equalToSuperview()
        }
    }
    
    func setupAdditionalConfiguration() {
    }
}

extension ButtomContainerComponentView {

    @objc func buttonTapOne() {
        self.delegate?.buttonOneTap()
    }
    
    @objc func buttonTapTwo() {
        self.delegate?.buttonTwoTap()
    }
}
