//
//  OrigimContainerView.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/09/21.
//

import UIKit

final class OrigimContainerComponentView: UIView {
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()
    
    lazy var image: UIImageView = {
        let view = UIImageView(frame: .zero)
        return view
    }()
    
    lazy var textField: UITextField = {
        let view = UITextField(frame: .zero)
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

extension OrigimContainerComponentView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(stackView)
        stackView.addArrangedSubview(image)
        stackView.addArrangedSubview(textField)
    }
    
    func setupConstraint() {
        stackView.snp.makeConstraints{make in
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
        
        image.snp.makeConstraints{make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.left.equalTo(10)
        }
        
        textField.snp.makeConstraints{make in
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfiguration() {
        stackView.backgroundColor = .green
        textField.backgroundColor = .red
        image.image = UIImage(named: "money-icon")
    }
}
