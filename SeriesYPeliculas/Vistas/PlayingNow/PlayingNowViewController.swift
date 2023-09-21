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
    
    
    let modelData: ModelData = ModelData()
    var arrCategories: [Categories] = []
    var arrCategoriesSeries: [CategoriesSeries] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMoviesCv()
        setUpSeriesCv()
        arrCategories = modelData.returnDataOnCategoriesToMoviesCV()
        arrCategoriesSeries = modelData.returnDataOnCategoriesSeriesCV()
    }

    
    func setUpMoviesCv() {
        self.moviesCollectionView.dataSource = self
        self.moviesCollectionView.delegate = self
        self.moviesCollectionView.tag = 12
        self.moviesCollectionView.register(MoviesCollectionViewCell.nib, forCellWithReuseIdentifier: MoviesCollectionViewCell.identifier)
    }
    
    func setUpSeriesCv() {
        self.seriesCollectionView.dataSource = self
        self.seriesCollectionView.delegate = self
        self.seriesCollectionView.tag = 34
        self.seriesCollectionView.register(SeriesCollectionViewCell.nib, forCellWithReuseIdentifier: SeriesCollectionViewCell.identifier)
    }


}
