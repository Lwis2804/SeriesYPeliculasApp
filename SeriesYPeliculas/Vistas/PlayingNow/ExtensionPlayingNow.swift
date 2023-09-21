
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
    
}

