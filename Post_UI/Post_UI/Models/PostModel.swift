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

let listPost = [
    PostModel(dict: [
        "profileName":"Sarayut Thong-un",
        "date":"15/05/2022",
        "caption":"aaaaaaaaaaaaa",
        "postImage":"https://c8.alamy.com/zooms/9/ece0745d430e41f4a45e947817e9285d/w8tgbd.jpg",
        "profileImage":"https://c8.alamy.com/zooms/9/ece0745d430e41f4a45e947817e9285d/w8tgbd.jpg"]),
    PostModel(dict: [
        "profileName":"Somsri Sudsauy",
        "date":"16/05/2022",
        "caption":"bbbbbbbbbbbbb",
        "postImage":"https://i.pinimg.com/736x/1b/d8/55/1bd855e1124a4f5114cba02e0a6acf67.jpg",
        "profileImage":"https://i.pinimg.com/736x/1b/d8/55/1bd855e1124a4f5114cba02e0a6acf67.jpg"]),
    PostModel(dict: [
        "profileName":"Sommaiy",
        "date":"17/05/2022",
        "caption":"ccccccccccc",
        "postImage":"https://www.cuteeasydrawings.com/uploads/allimg/210705/1_210705095847_1.png",
        "profileImage":"https://www.cuteeasydrawings.com/uploads/allimg/210705/1_210705095847_1.png"]),

]
