

import UIKit

class ModelData {
    var arrSndCategories: [Categories] = []
    
    var arrseCategories : [CategoriesSeries] = []
    
    var Scategory = Categories()
    var Scategory2 = Categories()
    var Scategory3 = Categories()
    var Scategory4 = Categories()
    var Scategory5 = Categories()
    
  
    
    var seCategory1 = CategoriesSeries()
    var seCategory2 = CategoriesSeries()
    var seCategory3 = CategoriesSeries()
    var seCategory4 = CategoriesSeries()
    var seCategory5 = CategoriesSeries()
    
    
    func returnDataOnCategoriesToMoviesCV() -> [Categories] {
        var arrFinalSnd: [Categories] = []
        Scategory.title = "Spiderman into the Spiderverse"
        Scategory.stars = "5"
        Scategory.time = "1:30 min"
        Scategory.images.append("spiderman")
        
        arrFinalSnd.append(Scategory)
        
        Scategory2.title = "Mario The Movie"
        Scategory2.stars = "4.2"
        Scategory2.time = "2:30 min"
        Scategory2.images.append("mario")
        
        arrFinalSnd.append(Scategory2)
        
        Scategory3.title = "Babylon"
        Scategory3.stars = "3.8"
        Scategory3.time = "1:50 min"
        Scategory3.images.append("babylon")
        
        arrFinalSnd.append(Scategory3)
        
        Scategory4.title = "Openheimer"
        Scategory4.stars = "5"
        Scategory4.time = "2:45 min"
        Scategory4.images.append("openheimer")
        
        arrFinalSnd.append(Scategory4)
        
        Scategory5.title = "Barbie"
        Scategory5.stars = "4.5"
        Scategory5.time = "2:20 min"
        Scategory5.images.append("barbie")
        
        arrFinalSnd.append(Scategory5)
        
        return arrFinalSnd
    }
    
    
    func returnDataOnCategoriesSeriesCV() -> [CategoriesSeries] {
        var arrFinalSe: [CategoriesSeries] = []
        seCategory1.title = "Ahsoka"
        seCategory1.stars = "5"
        seCategory1.episodes = "8 episodios"
        seCategory1.images.append("ahsoka")
        
        arrFinalSe.append(seCategory1)
        
        seCategory2.title = "Breaking Bad"
        seCategory2.stars = "5"
        seCategory2.episodes = "62 episodios"
        seCategory2.images.append("breakingbad")
        
        arrFinalSe.append(seCategory2)
        
        seCategory3.title = "Mind Hunter"
        seCategory3.stars = "4.5"
        seCategory3.episodes = "24 episodios"
        seCategory3.images.append("mindhunter")
        
        arrFinalSe.append(seCategory3)
        
        seCategory4.title = "The Mandalorian"
        seCategory4.stars = "4.2"
        seCategory4.episodes = "30 episodios"
        seCategory4.images.append("mandalorain")
        
        arrFinalSe.append(seCategory4)
        
        seCategory5.title = "Severance"
        seCategory5.stars = "4.7"
        seCategory5.episodes = "8 episodios"
        seCategory5.images.append("severance")
        
        arrFinalSe.append(seCategory5)
        
        return arrFinalSe
    }
    
}

