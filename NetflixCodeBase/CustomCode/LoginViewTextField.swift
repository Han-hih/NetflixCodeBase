//
//  LoginViewTextField.swift
//  NetflixCodeBase
//
//  Created by 황인호 on 2023/08/25.
//

import UIKit

class LoginViewTextField: UITextField {
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
  
    
    func setTextField() {
        layer.cornerRadius = 8
        backgroundColor = .lightGray
        
}
}
