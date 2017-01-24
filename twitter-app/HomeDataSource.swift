//
//  HomeDataSource.swift
//  twitter-app
//
//  Created by Christian Fernandes. on 20/01/17.
//  Copyright © 2017 Christian Fernandes. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let christianUser = User(name: "Christian Fernandes", username: "@chr_fernandes", bioText: "Programador Web/Mobile (IOS / Android), Javascript e mais. Junte-se a nós para aprendermos mais e juntos contruirmos nosso primeiro app!", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is as iPhone developer and tweets on topics related to iPhone, software, and gaming. Check out our conference.", profileImage: #imageLiteral(resourceName: "ray_profile_image"))
        
//        let kindleCourseUser = User(name: "Kindle Course", username: "@kindleCourse", bioText: "testando o tamanho do testo desse app pra ver se o tamanho da altura do texto esta legal pra depois nao bugar isso aqui, pq ai ficaria ruim pra cacete ne tento que mecher sempre not amanho do negocio, podia ser simples como desenvolvimento web onde vc so coloca o tmanho da tela e ajusta em pixels =(", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        return [christianUser, rayUser] //kindleCourseUser]
    }()
    
    let tweets = ["tweet1", "tweet2"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
    
}
