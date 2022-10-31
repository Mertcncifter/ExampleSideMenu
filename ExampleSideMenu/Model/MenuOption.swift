//
//  MenuOption.swift
//  ExampleSideMenu
//
//  Created by mert can çifter on 31.10.2022.
//

import Foundation
import UIKit


enum MenuOption: Int,CustomStringConvertible {
    
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile:
            return "Profile"
        case .Inbox:
            return "Inbox"
        case .Notifications:
            return "Notifications"
        case .Settings:
            return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile:
            return UIImage(systemName: "person")?.withRenderingMode(.alwaysOriginal) ?? UIImage()
        case .Inbox:
            return UIImage(systemName: "envelope")?.withRenderingMode(.alwaysOriginal) ?? UIImage()
        case .Notifications:
            return UIImage(systemName: "bell")?.withRenderingMode(.alwaysOriginal) ?? UIImage()
        case .Settings:
            return UIImage(systemName: "gear")?.withRenderingMode(.alwaysOriginal) ?? UIImage()
        }
    }
}
