//
//  MiddleView.swift
//  NetflixCodeBase
//
//  Created by 황인호 on 2023/08/25.
//

import UIKit

extension UIButton.Configuration {
    
    
    
    enum buttonCase {
        case check
        case information
    
        var image: UIImage {
            switch self {
            case .check:
                return UIImage(systemName: "checkmark") ?? UIImage()
            case .information:
                return UIImage(systemName: "info.circle") ?? UIImage()
            }
        }
        var title: String {
            switch self {
            case .check:
                return "내가 찜한 컨텐츠"
            case .information:
                return "정보"
            }
        }
    }
   
    static func middleViewButton(button: buttonCase) -> UIButton.Configuration {
        var configuraiton = UIButton.Configuration.filled()
        configuraiton.baseBackgroundColor = .clear
        configuraiton.buttonSize = .mini
        configuraiton.image = button.image
        configuraiton.title = button.title
        configuraiton.imagePlacement = .top
        configuraiton.imagePadding = 10
        
        
            return configuraiton
            
            
    }
}









class MiddleView: UIButton {
    
//    enum buttonText: String {
//        case myContent = "내가 찜한 컨텐츠"
//        case information = "정보"
//
//    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        MiddleView.setButton(name: "")
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
   static func setButton(name: String) {
         var buttonConfig = UIButton.Configuration.plain()
         buttonConfig.title = name
         buttonConfig.image = UIImage(systemName: "check")
         buttonConfig.imagePadding = 10
         buttonConfig.imagePlacement = .top
         
        
    }
    
    
}

