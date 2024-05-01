//
//  UserStatus.swift
//  SocialLogin
//
//  Created by 정기현 on 2024/04/23.
//

import Foundation
class UserStatus {
    var loginCheck: Bool {
        get {
            return UserDefaults.standard.bool(forKey: "LoginCheck")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "LoginCheck")
        }
    }
    func saveLoginCheck() {
           UserDefaults.standard.set(loginCheck, forKey: "LoginCheck")
       }
}
