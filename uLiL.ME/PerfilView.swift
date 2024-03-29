//
//  PerfilView.swift
//  uLiL.ME
//
//  Created by student on 14/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class PerfilView: UIViewController {

    @IBOutlet weak var nameAge: UILabel!
    
    @IBOutlet weak var interestsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameAge.text = "\((novoperfil?.name)!), \(String(describing: (novoperfil?.age)!))"
        
        interestsLabel.text! = "Interesses: "
        
        for interest in interesses {
            interestsLabel.text! += "\(interest), "
        }
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
