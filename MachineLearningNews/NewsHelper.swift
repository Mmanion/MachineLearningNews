//
//  NewsHelper.swift
//  MachineLearningNews
//
//  Created by Matthew Manion on 10/3/19.
//  Copyright © 2019 Matthew Manion. All rights reserved.
//

import Foundation
import Alamofire

class NewsHelper {
    
    func getArticles()  {
        
        Alamofire.request("https://newsapi.org/v2/top-headlines?country=us&apiKey=763c743bc8654a8dbf4e0829df85630e").responseJSON { (response) in
            print(response)
        }
        
        
    }
    
    
}
