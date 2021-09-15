//
//  OrigimContainerView.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/09/21.
//

import UIKit

final class OrigimContainerComponentView: UIView {
    
    lazy var image: UIImageView = {
        let view = UIImageView(frame: .zero)
        return view
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.placeholder = "Place Holder"
        textField.delegate = self
        return textField
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension OrigimContainerComponentView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(image)
        addSubview(textField)
    }
    
    func setupConstraint() {

        image.snp.makeConstraints{make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.left.equalTo(10)
        }
        
        textField.snp.makeConstraints{make in
            make.top.equalToSuperview()
            make.left.equalTo(image.snp.right).offset(10)
            make.right.equalToSuperview().inset(10)
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfiguration() {
        image.image = UIImage(named: "money-icon")
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1.0
        textField.layer.cornerRadius = 5
    }
}


extension OrigimContainerComponentView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
