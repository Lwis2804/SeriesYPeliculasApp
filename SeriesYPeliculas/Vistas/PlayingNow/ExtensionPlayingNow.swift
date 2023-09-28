
import UIKit

extension PlayingNowViewController : UICollectionViewDelegate & UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionView.tag == 12 ? arrCategories.count : arrCategoriesSeries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 12 {
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: MoviesCollectionViewCell.identifier, for: indexPath) as? MoviesCollectionViewCell ?? MoviesCollectionViewCell()
            cCell.setUpMoviesCollectionView(categoria: arrCategories[indexPath.row])
            return cCell
        }else{
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: SeriesCollectionViewCell.identifier, for: indexPath) as? SeriesCollectionViewCell ?? SeriesCollectionViewCell()
            cCell.setUpSeriesCollectionView(categoria: arrCategoriesSeries[indexPath.row])
            return cCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
      let goToView = MovieDetailViewController()
      let goToSeries = SeriesDetailViewController()
        
        
        if collectionView.tag == 12 {
            navigationController?.pushViewController(goToView, animated: true)
        }else{
            navigationController?.pushViewController(goToSeries, animated: true)
        }
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(120.0), height: CGFloat(248.0))
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: CGFloat(8.0), left: CGFloat(8.0), bottom: CGFloat(8.0), right: CGFloat(8.0))
    }
    
}



