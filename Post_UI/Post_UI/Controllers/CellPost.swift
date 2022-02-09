//
//  CellPost.swift
//  Post_UI
//
//  Created by BOICOMP21070028 on 9/2/2565 BE.
//

import UIKit

class CellPost: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var captionImage: UIImageView!
    
    let targetSize = CGSize(width: 50, height: 50)
    let screenSize = UIScreen.main.bounds
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        profileImage.frame.size = CGSize(width: screenWidth*0.2, height: screenWidth * 0.2)
        profileImage.connerCircle()
        self.reloadInputViews()
    }
    @IBAction func btnLike(_ sender: Any) {
        print("Pressed Like")
    }
    @IBAction func btnComment(_ sender: Any) {
        print("Pressed Comment")
    }
    @IBAction func btnShare(_ sender: Any) {
        print("Pressed Share")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
