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
            
            if let json = response.result.value as? [String: Any] {
                if let jsonArticles = json["articles"] as? [[String:Any]] {
                    var articles = [Article]()
                    for jsonArticle in jsonArticles {
                        guard let title = jsonArticle["title"] as? String,
                        let urlToImage = jsonArticle["urlToImage"] as? String,
                        let url = jsonArticle["url"] as? String,
                        let description = jsonArticle["description"] as? String
                            else {
                                continue
                        }
                        let article = Article()
                        article.title = title
                        article.urlToImage = urlToImage
                        article.url = url
                        article.description = description
                        articles.append(article)
                    }
                }
            }
        }
        
        
    }
    
    
}

class Article {
    var title = ""
    var urlToImage = ""
    var url = ""
    var description = ""
    var category = ""
}
