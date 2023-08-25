//
//  LoginViewController.swift
//  NetflixCodeBase
//
//  Created by 황인호 on 2023/08/25.
//

import UIKit

class LoginViewController: UIViewController {

    let netflixLabel = {
        let label = UILabel()
        label.text = "NETFLIX"
        label.textColor = .red
        label.font = .boldSystemFont(ofSize: 80)
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        [netflixLabel].forEach { view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
      
        }
        
        setupAutoLayout()
    }
    
    
    func setupAutoLayout() {
        NSLayoutConstraint.activate([
        // 넷플릭스 레이블
        netflixLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        netflixLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70)
        
        
        
        ])
    }
}
