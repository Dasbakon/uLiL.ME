//
//  pessoaTableViewCell.swift
//  uLiL.ME
//
//  Created by student on 12/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class pessoaTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var fotoPessoaImgView: UIImageView!
    
    @IBOutlet weak var nomePessoaLabel: UILabel!
    
    @IBOutlet weak var msgPessoaLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        fotoPessoaImgView.layer.cornerRadius = fotoPessoaImgView.frame.size.width/2
        fotoPessoaImgView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
