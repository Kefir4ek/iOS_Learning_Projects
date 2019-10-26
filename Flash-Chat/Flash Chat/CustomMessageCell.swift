//
//  CustomMessageCell.swift
//  Flash Chat
//
//  Created by Evgeny Ovodkov on 30/08/2018.
//  Copyright (c) 2018 Evgeny Ovodkov. All rights reserved.
//

import UIKit

class CustomMessageCell: UITableViewCell {


    @IBOutlet var messageBackground: UIView!
    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var messageBody: UILabel!
    @IBOutlet var senderUsername: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
        
    }


}

