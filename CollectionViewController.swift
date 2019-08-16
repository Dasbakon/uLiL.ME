//
//  CollectionViewController.swift
//  uLiL.ME
//
//  Created by student on 08/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    var name: String?
    var age: Int?
    
    var interestsArray = ["Esportes", "Filmes", "Jogos", "Séries", "Animes", "Manga", "Culinária", "Computação", "Pedagogia", "Ciencia", "Terror", "Economia", "Política", "YouTube"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        let alertController = UIAlertController(title: "Bem-vindo, \((novoperfil?.name)!)", message: "Agora voce pode selecionar os seus interesses", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRandomColor() -> UIColor {
        
        let color1 = UIColor(red: 162/255.0, green: 143/255.0, blue: 157/255.0, alpha: 1.0)
        let color2 = UIColor(red: 176/255.0, green: 208/255.0, blue: 211/255.0, alpha: 1.0)
        let color3 = UIColor(red: 116/255.0, green: 119/255.0, blue: 107/255.0, alpha: 1.0)
        let color4 = UIColor(red: 247/255.0, green: 175/255.0, blue: 157/255.0, alpha: 1.0)
        let color5 = UIColor(red: 211/255.0, green: 213/255.0, blue: 212/255.0, alpha: 1.0)
        
        let arrayColors = [color1, color2, color3, color4, color5]
        
        let position = Int(arc4random_uniform(5))
        
        return arrayColors[position]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return interestsArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
    
        let label = cell.viewWithTag(1) as! UILabel
        label.text = interestsArray[indexPath.row]
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.minimumInteritemSpacing = 2
        
        cell.backgroundColor! = getRandomColor()
        //print(cell.backgroundColor!)
        
        //Bordas arredondadas
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 24
        
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.gray.cgColor
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
        
        
    
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        interesses.append(interestsArray[indexPath.row])
        
        print(interesses)
        
        self.interestsArray.remove(at: indexPath.row)
        self.collectionView?.deleteItems(at: [indexPath])
       
        
    }
 

}
