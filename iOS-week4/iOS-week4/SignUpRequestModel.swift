//
//  SignUpRequestModel.swift
//  iOS-week4
//
//  Created by  정지원 on 2024/04/27.
//

import Foundation

struct SignUpRequestModel: Codable {
    let authenticationId: String
    let password: String
    let nickname: String
    let phone: String
}
