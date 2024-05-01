//
//  LogoutView.swift
//  SocialLogin
//
//  Created by 정기현 on 2024/04/23.
//

import UIKit

class LogoutView: UIView {
    init() {
        super.init(frame: .zero)
        backgroundColor = .gray
        makeUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var message: UILabel = {
        let lb = UILabel()
        lb.text = "로그인 됨"
        lb.textAlignment = .center
        lb.textColor = .black
        lb.backgroundColor = .white
        return lb
    }()

    lazy var logoutBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Logout", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .white
        return btn
    }()

    func makeUI() {
        addSubview(logoutBtn)
        addSubview(message)
        message.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(50)
        }
        logoutBtn.snp.makeConstraints {
            $0.top.equalTo(message.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(50)
        }
    }
}
