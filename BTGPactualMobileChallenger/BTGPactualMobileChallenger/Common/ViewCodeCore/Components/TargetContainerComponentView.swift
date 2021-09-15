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
        return view
    }()
    
    var currencyLabel: UILabel = {
        let view = UILabel(frame: .zero)
        return view
    }()
    
    var convertValueLabel: UILabel = {
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
        stackViewContainer.addArrangedSubview(currencyLabel)
        stackViewContainer.addArrangedSubview(convertValueLabel)
    }
    
    func setupConstraint() {
        stackViewContainer.snp.makeConstraints{make in
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
        
        currencyLabel.snp.makeConstraints{make in
            make.left.equalToSuperview().inset(40)
            make.width.equalTo(60)
            make.height.equalTo(50)
        }
        
        convertValueLabel.snp.makeConstraints{make in
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfiguration() {
        currencyLabel.font = currencyLabel.font.withSize(20)
        currencyLabel.textColor = UIColor(hexaRGB: "#001e61")
        currencyLabel.textAlignment = .left
        
        convertValueLabel.font = convertValueLabel.font.withSize(70)
        convertValueLabel.textColor = UIColor(hexaRGB: "#001e61")
    }
}
