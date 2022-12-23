//
//  Collection+Extension.swift
//  DZ21
//
//  Created by Dmitriy on 12/23/22.
//

import UIKit
extension UICollectionView {
    func register<T: UICollectionViewCell>(for classType: T.Type) {
        let name = "\(classType)"
        let nib = UINib(nibName: name, bundle: Bundle.main)
        self.register(nib, forCellWithReuseIdentifier: name)
    }
    func dequeueReusableCell<T: UICollectionViewCell> (for classType: T.Type, for indexPath: IndexPath) -> T {
        dequeueReusableCell(withReuseIdentifier: "\(classType)", for: indexPath) as! T
    }
}
