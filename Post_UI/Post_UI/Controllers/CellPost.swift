//
//  CellPost.swift
//  Post_UI
//
//  Created by BOICOMP21070028 on 9/2/2565 BE.
//

import UIKit

protocol CellPostDelegate{
    func btnPress(title:String)
}

class CellPost: UITableViewCell {
    var delegate:CellPostDelegate?

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var captionImage: UIImageView!
    
    var postItem: PostModel!
    
    let targetSize = CGSize(width: 50, height: 50)
    let screenSize = UIScreen.main.bounds
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        profileImage.frame.size = CGSize(width: screenWidth*0.2, height: screenWidth * 0.2)
        profileImage.connerCircle()
    }
    @IBAction func btnLike(_ sender: Any) {
        
        if let delegate = delegate {
            delegate.btnPress(title: "Pressed Like")
//            print("Pressed Like")
        }
    }
    @IBAction func btnComment(_ sender: Any) {
        
        if let delegate = delegate {
            delegate.btnPress(title: "Pressed Comment")
        }
    }
    @IBAction func btnShare(_ sender: Any) {
        
        if let delegate = delegate {
            delegate.btnPress(title: "Pressed Share")
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(postItem: PostModel){
        name.text = postItem.profileName
        dateTime.text = postItem.date
        caption.text = postItem.caption
        if let image = postItem.profileImage{
            profileImage.load(url: image)
        }
        if let image = postItem.postImage{
            captionImage.load(url: image)
        }
    }
}

extension UIImageView {
    func connerCircle(borderWidth: CGFloat = 1){
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }
}
