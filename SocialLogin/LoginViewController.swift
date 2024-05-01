//
//  ViewController.swift
//  SocialLogin
//
//  Created by 정기현 on 2024/04/23.
//

import SnapKit
import UIKit

class LoginViewController: UIViewController {
    let loginView = LoginView()
    var userStatus = UserStatus()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .brown
    }
    override func loadView() {
        super.loadView()
        view.addSubview(loginView)
        loginView.loginBtn.addTarget(self, action: #selector(LoginViewController.loginButtonTapped), for: .touchUpInside)
        loginView.snp.makeConstraints {
            $0.top.equalTo(self.view)
            $0.leading.bottom.trailing.equalToSuperview()
        }
    }

    @objc func loginButtonTapped() {
        print("로그인 버튼 눌림\(userStatus.loginCheck)")
        userStatus.loginCheck = true
        userStatus.saveLoginCheck()

        let logoutVC = LogoutViewController()
        navigationController?.pushViewController(logoutVC, animated: true)
        print("로그인 버튼 페이지 이동\(userStatus.loginCheck)")
    }
}
