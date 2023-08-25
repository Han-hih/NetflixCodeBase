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
        label.font = .boldSystemFont(ofSize: 40)
        
        return label
    }()
    
    let informationEnterView = {
        let view = UIView()
        view.backgroundColor = .gray

        return view
    }()
    
    let idTextField = {
        let textField = LoginViewTextField()
            textField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return textField
    }()
    
    let pwTextField = {
        let textField = LoginViewTextField()
        textField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return textField
    }()
    
    let nicknameTextField = {
        let textField = LoginViewTextField()
        textField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return textField
    }()

    let locationTexField = {
        let textField = LoginViewTextField()
        textField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return textField
    }()
    
    let recommedTextField = {
        let textField = LoginViewTextField()
        textField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        [netflixLabel, informationEnterView, idTextField, pwTextField, nicknameTextField, locationTexField, recommedTextField].forEach { view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
      
        }
        
        setupAutoLayout()
    }
    
    
    func setupAutoLayout() {
        NSLayoutConstraint.activate([
        // 넷플릭스 레이블
        netflixLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        netflixLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
        
        // 정보 입력 뷰
        informationEnterView.topAnchor.constraint(equalTo: netflixLabel.bottomAnchor, constant: 50),
//        informationEnterView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
//        informationEnterView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
        informationEnterView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.45),
        informationEnterView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
        informationEnterView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        // 이메일 입력 텍스트필드
        idTextField.topAnchor.constraint(equalTo: informationEnterView.topAnchor, constant: 10),
        idTextField.leadingAnchor.constraint(equalTo: informationEnterView.leadingAnchor),
        idTextField.trailingAnchor.constraint(equalTo: informationEnterView.trailingAnchor),
        idTextField.heightAnchor.constraint(equalTo: informationEnterView.heightAnchor, multiplier: 0.12),
        //비밀번호 텍스트필드
        pwTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 10),
        pwTextField.leadingAnchor.constraint(equalTo: informationEnterView.leadingAnchor),
        pwTextField.trailingAnchor.constraint(equalTo: informationEnterView.trailingAnchor),
        pwTextField.heightAnchor.constraint(equalTo: informationEnterView.heightAnchor, multiplier: 0.12),
        
        //닉네임 텍스트필드
        nicknameTextField.topAnchor.constraint(equalTo: pwTextField.bottomAnchor, constant: 10),
        nicknameTextField.leadingAnchor.constraint(equalTo: informationEnterView.leadingAnchor),
        nicknameTextField.trailingAnchor.constraint(equalTo: informationEnterView.trailingAnchor),
        nicknameTextField.heightAnchor.constraint(equalTo: informationEnterView.heightAnchor, multiplier: 0.12),
        //위치 텍스트필드
        locationTexField.topAnchor.constraint(equalTo: nicknameTextField.bottomAnchor, constant: 10),
        locationTexField.leadingAnchor.constraint(equalTo: informationEnterView.leadingAnchor),
        locationTexField.trailingAnchor.constraint(equalTo: informationEnterView.trailingAnchor),
        locationTexField.heightAnchor.constraint(equalTo: informationEnterView.heightAnchor, multiplier: 0.12),
        // 추천 텍스트필드
        recommedTextField.topAnchor.constraint(equalTo: locationTexField.bottomAnchor, constant: 10),
        recommedTextField.leadingAnchor.constraint(equalTo: informationEnterView.leadingAnchor),
        recommedTextField.trailingAnchor.constraint(equalTo: informationEnterView.trailingAnchor),
        recommedTextField.heightAnchor.constraint(equalTo: informationEnterView.heightAnchor, multiplier: 0.12)
        ])
    }
}
