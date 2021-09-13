//
//  TargetContainerComponent.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 13/09/21.
//

import UIKit

final class TargetContainerComponentView: UIView {
    
    var stackViewContainer: UIStackView = {
        let view  = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 10
        view.backgroundColor = .blue
        return view
    }()
    
    var image: UIImageView = {
        let image = UIImageView(frame: .zero)
        return image
    }()
    
    var label: UILabel = {
        let view = UILabel(frame: .zero)
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

extension TargetContainerComponentView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(stackViewContainer)
        stackViewContainer.addArrangedSubview(image)
        stackViewContainer.addArrangedSubview(label)
    }
    
    func setupConstraint() {
        stackViewContainer.snp.makeConstraints{make in
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
        
        image.snp.makeConstraints{make in
            make.width.height.equalTo(50)
        }
        
        label.snp.makeConstraints{make in
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfiguration() {
        image.image = UIImage(named: "exchange-icon")
        image.backgroundColor = .red
        label.backgroundColor = .green
    }
}
