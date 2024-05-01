//
//  MainView.swift
//  SocialLogin
//
//  Created by 정기현 on 2024/04/23.
//

import SnapKit
import UIKit

class LoginView: UIView {
    init() {
        super.init(frame: .zero)
        backgroundColor = .yellow
        makeUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "이메일을 입력해주세요"
        tf.layer.cornerRadius = 0.5
        tf.layer.borderWidth = 1
        return tf
    }()

    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "비밀번호를 입력해주세요"
        tf.layer.cornerRadius = 0.5
        tf.layer.borderWidth = 1
        return tf
    }()

    lazy var message: UILabel = {
        let lb = UILabel()
        lb.text = "로그인 안됨"
        lb.textAlignment = .center
        lb.textColor = .white
        lb.backgroundColor = .darkGray
        return lb
    }()

    lazy var loginBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
        btn.backgroundColor = .darkGray
        return btn
    }()

    func makeUI() {
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginBtn)
        addSubview(message)
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(50)
        }
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(emailTextField.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(50)
        }

        message.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(50)
        }
        loginBtn.snp.makeConstraints {
            $0.top.equalTo(message.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(50)
        }
    }
}
