//
//  PerfilViewController.swift
//  uLiL.ME
//
//  Created by student on 13/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

    
    
    @IBOutlet weak var fotoPerfil: UIImageView!
    
    @IBOutlet weak var nomeIdadeLabel: UILabel!
    
    @IBOutlet weak var detalhesPerfilLabel: UILabel!
    
    var novaPessoa: NovaPessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()

        // Do any additional setup after loading the view.
    }

    
    func setUI(){
        
        nomeIdadeLabel.text = (novaPessoa?.nome)! + ", " + (novaPessoa?.idade)!
        fotoPerfil.image = UIImage(named: (novaPessoa?.nomeDaFoto)!)
        detalhesPerfilLabel.text = novaPessoa?.detalhes
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
