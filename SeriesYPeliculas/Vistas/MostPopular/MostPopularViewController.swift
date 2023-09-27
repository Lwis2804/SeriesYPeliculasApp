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
    
    
    let modelData: ModelData = ModelData()
    var arrCategories: [Categories] = []
    var arrCategoriesSeries: [CategoriesSeries] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMoviesCvMp()
        setUpSeriesCvMp()
        arrCategories = modelData.returnDataOnCategoriesToMoviesCV()
        arrCategoriesSeries = modelData.returnDataOnCategoriesSeriesCV()
    }

    
    func setUpMoviesCvMp() {
        self.moviesCollectionVMP.dataSource = self
        self.moviesCollectionVMP.delegate = self
        self.moviesCollectionVMP.tag = 12
        self.moviesCollectionVMP.register(MpMoviesCollectionViewCell.nib, forCellWithReuseIdentifier: MpMoviesCollectionViewCell.identifier)
    }
    
    func setUpSeriesCvMp() {
        self.seriesCollectionVMP.dataSource = self
        self.seriesCollectionVMP.delegate = self
        self.seriesCollectionVMP.tag = 34
        self.seriesCollectionVMP.register(MpSeriesCollectionViewCell.nib, forCellWithReuseIdentifier: MpSeriesCollectionViewCell.identifier)
    }
    

 
}
