//
//  UserInfoResponseModel.swift
//  iOS-week4
//
//  Created by  정지원 on 2024/04/27.
//

import Foundation

// MARK: - UserInfoResponseModel
struct UserInfoResponseModel: Codable {
    let code: Int
    let message: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let authenticationId, nickname, phone: String
}
