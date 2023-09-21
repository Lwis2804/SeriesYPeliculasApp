//
//  PlayingNowViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 20/09/23.
//

import UIKit

class PlayingNowViewController: UIViewController {


    @IBOutlet weak var generalBackground: UIView!{
        didSet{self.generalBackground.layer.cornerRadius = 20}
    }
    @IBOutlet weak var lblMoviesTitle: UILabel!{
        didSet{self.lblMoviesTitle.layer.cornerRadius = 20}
    }
    @IBOutlet weak var moviesCollectionView: UICollectionView!{
        didSet{self.moviesCollectionView.layer.cornerRadius = 20}
    }
    @IBOutlet weak var lblSeriesTitle: UILabel!{
        didSet{self.lblSeriesTitle.layer.cornerRadius = 20}
    }
    @IBOutlet weak var seriesCollectionView: UICollectionView!{
        didSet{self.seriesCollectionView.layer.cornerRadius = 20}
    }
    
    var arrCategories: [Categories] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMoviesCv()
    }

    
    func setUpMoviesCv() {
        self.moviesCollectionView.dataSource = self
        self.moviesCollectionView.delegate = self
        self.moviesCollectionView.tag = 12
        self.moviesCollectionView.register(SeriesCollectionViewCell.nib, forCellWithReuseIdentifier: SeriesCollectionViewCell.identifier)
    }


}
