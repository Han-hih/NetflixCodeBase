//
//  MiddleView.swift
//  NetflixCodeBase
//
//  Created by 황인호 on 2023/08/25.
//

import UIKit

class MiddleView: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setButton()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setButton() {
        let buttonConfig = UIButton.Configuration.plain()
        lazy var button = UIButton(configuration: buttonConfig)
         
        configuration?.imagePlacement = .top
        configuration?.imagePadding = 10
        configuration?.buttonSize = .medium
        button.setTitleColor(.white, for: .normal)
        
    }
    
    
}

