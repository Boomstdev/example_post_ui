//
//  PostModel.swift
//  Post_UI
//
//  Created by BOICOMP21070028 on 10/2/2565 BE.
//

import Foundation

struct PostModel{
    var profileName: String?
    var date:String?
    var caption:String?
    var postImage:String?
    var profileImage:String?
    var isLike:Bool
    init(dict: Dictionary<String, Any>) {
        self.profileName = dict["profileName"] as? String
        self.date = dict["date"] as? String
        self.caption = dict["caption"] as? String
        self.postImage = dict["postImage"] as? String
        self.profileImage = dict["profileImage"] as? String
        self.isLike = dict["isLike"] as? Bool ?? false
    }
}
