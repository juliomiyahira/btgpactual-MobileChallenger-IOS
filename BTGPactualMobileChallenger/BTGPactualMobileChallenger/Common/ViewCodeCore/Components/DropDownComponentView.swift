//
//  DropDownComponentView.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 30/08/21.
//

import Foundation
import UIKit

final class DropDownComponentView: UIView {
    
    lazy var label: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .red
        return view
    }()
    
    lazy var pickerView: UIPickerView = {
        var view = UIPickerView(frame: .zero)
        return view
    }()
    
 
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DropDownComponentView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(label)
        addSubview(pickerView)
    }
    
    func setupConstraint() {
        
    }
    
    func setupAdditionalConfiguration() {
        
    }
}
