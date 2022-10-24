//
//  ViewController.swift
//  dfghj
//
//  Created by User on 21 Tishri 5783.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageCellCollectionView: UICollectionView!
    @IBOutlet weak var addItemLabel: UIButton!

    let burgers = ["Big Mac", "whopper","baconator","Quarter Pounder", "Hamburger", "CheeseBurger"]
    
    let burgerImages: [UIImage] = [
        UIImage(named: "bigmac")!,
        UIImage(named: "whopper")!,
        UIImage(named: "baconator")!,
        UIImage(named: "quarterPounder")!,
        UIImage(named: "hamburger")!,
        UIImage(named: "hamburger")!
        ]
    let payPrice = ["200", "440", "340","290","345","445"]
  
    override func viewDidLoad() {
        super.viewDidLoad()
       // collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        setUpCollectionView()
        // Do any additional setup after loading the view.
    }
    func setUpCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 10
        imageCellCollectionView.collectionViewLayout = layout
        imageCellCollectionView.delegate = self
        imageCellCollectionView.dataSource = self
    }
}

    extension ViewController: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return   burgers.count
            
        }
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            var Cell = UICollectionViewCell()
            var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "image_cell", for: indexPath) as! imageCell
            cell.nameLabel.text = burgers[indexPath.item]
            cell.priceLabel.text = payPrice[indexPath.item]
            
           // cell.setup(with: burgerImages[indexPath.item])
            cell.galleryImageViewCell.image = burgerImages[indexPath.item]
            //(systemName: "person")
            cell.backgroundColor = .white
            cell.layer.borderWidth = 6
            return cell
           
        }
    }
    extension ViewController: UICollectionViewDelegateFlowLayout {
        func collectionView (_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         //   return CGSize( width: view.frame.width / 3, height: view.frame.height / 7)
            return CGSize(width: 200, height: 200)
        }
    }
        extension ViewController: UIPageViewControllerDelegate {
            func collectionView(_collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                print(burgerImages[indexPath.row],burgers)
            }
                       
            }
            

    


