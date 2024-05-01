//
//  LogoutViewController.swift
//  SocialLogin
//
//  Created by 정기현 on 2024/04/23.
//

import UIKit

class LogoutViewController: UIViewController {
    let logoutView = LogoutView()
    var userStatus = UserStatus()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .brown
    }

    override func loadView() {
        super.loadView()
        view.addSubview(logoutView)
        logoutView.logoutBtn.addTarget(self, action: #selector(LogoutViewController.logoutButtonTapped), for: .touchUpInside)
        logoutView.snp.makeConstraints {
            $0.top.equalTo(self.view)
            $0.leading.bottom.trailing.equalToSuperview()
        }
    }

    @objc func logoutButtonTapped() {
        print("로그아웃 버튼 눌림\(userStatus.loginCheck)")
        userStatus.loginCheck = false
        userStatus.saveLoginCheck()

        let logoutVC = LoginViewController()
        navigationController?.pushViewController(logoutVC, animated: true)
        print("로그아웃 버튼 페이지이동\(userStatus.loginCheck)")
    }
}
