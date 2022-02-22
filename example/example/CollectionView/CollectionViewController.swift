//
//  CollectionViewController.swift
//  example
//
//  Created by Andrés Abraham Bonilla Gómex on 22/02/22.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.dataSource = self
            collectionView.delegate = self
            collectionView.register(UINib(nibName: "TitleCollectionViewCell", bundle: nil),
                                    forCellWithReuseIdentifier: "TitleCollectionViewCell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let layoutConfig = UICollectionLayoutListConfiguration(appearance: .plain)
        let listLayout = UICollectionViewCompositionalLayout.list(using: layoutConfig)
        collectionView.collectionViewLayout = listLayout
    }
}

extension CollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleCollectionViewCell",
                                                            for: indexPath) as? TitleCollectionViewCell else {
            return UICollectionViewCell()
        }
        if indexPath.row < 2 {
            cell.update(text: "Hola")
        } else {
            cell.update(text: "Adios")
        }
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("pulsaste alguna celda")
        print(indexPath.row)
    }
}
