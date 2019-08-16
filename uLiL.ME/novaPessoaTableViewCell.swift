//
//  novaPessoaTableViewCell.swift
//  uLiL.ME
//
//  Created by student on 12/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class novaPessoaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeNovaPessoaLabel: UILabel!
    
    @IBOutlet weak var idadeNovaPessoaLabel: UILabel!
    
    @IBOutlet weak var fotoNovaPessoaImgView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        fotoNovaPessoaImgView.layer.cornerRadius = fotoNovaPessoaImgView.frame.size.width/2
        fotoNovaPessoaImgView.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
