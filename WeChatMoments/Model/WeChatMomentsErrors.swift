//
//  WeChatMomentsErrors.swift
//  WeChatMoments
//
//  Created by Vinicius Valvassori on 28/05/23.
//

import Foundation

enum WeChatMomentsError: Error {
    case userNotFound
}

extension WeChatMomentsError: LocalizedError {
    public var title: String? {
        switch self {
        case .userNotFound:
            return "User not found"
        }
    }

    public var errorDescription: String? {
        switch self {
        case .userNotFound:
            return "User not found"
        }
    }
}

extension WeChatMomentsError: Identifiable {
    var id: String? {
        errorDescription
    }
}
