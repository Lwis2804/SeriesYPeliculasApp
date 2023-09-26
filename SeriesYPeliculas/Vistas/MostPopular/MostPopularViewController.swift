//
//  MostPopularViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 20/09/23.
//

import UIKit

class MostPopularViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundMP: UIView!{
        didSet{self.backgroundMP.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblMoviesMP: UILabel!
    @IBOutlet weak var moviesCollectionVMP: UICollectionView!{
        didSet{self.moviesCollectionVMP.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblSeriesMP: UILabel!
    @IBOutlet weak var seriesCollectionVMP: UICollectionView!{
        didSet{self.seriesCollectionVMP.layer.cornerRadius = 10}
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


 
}
