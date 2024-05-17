//
//  HomeViewController.swift
//  sesacweek1_ex1
//
//  Created by 여누 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var nicknameLabel: UILabel!
    
    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var listButton: UIButton!
    @IBOutlet var listContentLabel: UILabel!
    
    @IBOutlet var contentLabel: UILabel!
    
    @IBOutlet var movieOneImage: UIImageView!
    @IBOutlet var movieTwoImage: UIImageView!
    @IBOutlet var movieThreeImage: UIImageView!
    
    
    @IBOutlet var topOneImage: UIImageView!
    @IBOutlet var topTwoImage: UIImageView!
    @IBOutlet var topThreeImage: UIImageView!
    
    @IBOutlet var newOneLabel: UILabel!
    @IBOutlet var nowOneLabel: UILabel!
    
    @IBOutlet var newLabel: UILabel!
    @IBOutlet var nowLabel: UILabel!
    
    @IBOutlet var newTwoLabel: UILabel!
    @IBOutlet var nowTwoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage.image = UIImage(named: "background")
        
        nicknameLabel.text = "고래밥님"
        nicknameLabel.font = .systemFont(ofSize: 25, weight: .bold)
        nicknameLabel.textAlignment = .center
        nicknameLabel.textColor = .white
        
        movieImage.image = UIImage(named: "부산행")
        movieImage.layer.cornerRadius = 20
        listContentLabel.text = "내가 찜한 리스트"
        listContentLabel.font = .systemFont(ofSize: 15)
        listContentLabel.textColor = .white
        
        contentLabel.text = "지금 뜨는 콘텐츠"
        contentLabel.font = .systemFont(ofSize: 17)
        contentLabel.textColor = .white
        
        movieOneImage.image = UIImage(named: "알라딘")
        movieOneImage.layer.cornerRadius = 20
        movieTwoImage.image = UIImage(named: "아바타")
        movieTwoImage.layer.cornerRadius = 20
        movieThreeImage.image = UIImage(named: "암살")
        movieThreeImage.layer.cornerRadius = 20
    }
    
    @IBAction func playRandomTapped(_ sender: Any) {
        let movie:[Int:String] = [1:"극한직업",2:"노량",3:"도둑들",4:"서울의봄",5:"부산행",6:"알라딘",7:"암살",8:"왕의남자",9:"오펜하이머",10:"베테랑",11:"밀수",12:"스즈메의문단속",13:"아바타",14:"범죄도시3"]
        var movieOne = Int.random(in:1...3)
        var movieTwo = Int.random(in:4...7)
        var movieThree = Int.random(in:8...11)
        var movieFour = Int.random(in:12...14)
        
        var topRandomOne = 0
        var topRandomTwo = 0
        var topRandomThree = 0
        
        topRandomOne = Int.random(in:0...5)
        topRandomTwo = Int.random(in:0...5)
        topRandomThree = Int.random(in:0...5)
        
        print("1번: \(topRandomOne) 2번: \(topRandomOne) 3번 \(topRandomThree)")

        if topRandomOne == 1{
            topOneImage.image = UIImage(named:"top10 badge")
            newOneLabel.isHidden = false
            newOneLabel.text = "새로운 에피소드"
            newOneLabel.font = .systemFont(ofSize: 8)
            newOneLabel.backgroundColor = .red
            newOneLabel.textColor = .white
            newOneLabel.textAlignment = .center
            nowOneLabel.isHidden = false
            nowOneLabel.text = "지금 시청하기"
            nowOneLabel.font = .systemFont(ofSize: 8)
            nowOneLabel.backgroundColor = .white
            nowOneLabel.textColor = .black
            nowOneLabel.textAlignment = .center
        }else if topRandomOne == 2{
            newOneLabel.isHidden = true
            topOneImage.image = UIImage(named: "AppIcon")
            nowOneLabel.text = "새로운 시리즈"
            nowOneLabel.font = .systemFont(ofSize: 8)
            nowOneLabel.backgroundColor = .red
            nowOneLabel.textColor = .white
            nowOneLabel.textAlignment = .center
        }else {
            topOneImage.image = UIImage(named: "AppIcon")
            newOneLabel.isHidden = true
            nowOneLabel.isHidden = true
        }
        if topRandomOne == 1 {
            topTwoImage.image = UIImage(named:"top10 badge")
            newLabel.isHidden = false
            newLabel.text = "새로운 에피소드"
            newLabel.font = .systemFont(ofSize: 8)
            newLabel.backgroundColor = .red
            newLabel.textColor = .white
            newLabel.textAlignment = .center
            nowLabel.isHidden = false
            nowLabel.text = "지금 시청하기"
            nowLabel.font = .systemFont(ofSize: 8)
            nowLabel.backgroundColor = .white
            nowLabel.textColor = .black
            nowLabel.textAlignment = .center
        }else if topRandomOne == 2{
            newLabel.isHidden = true
            topTwoImage.image = UIImage(named: "AppIcon")
            
            nowLabel.text = "새로운 시리즈"
            nowLabel.font = .systemFont(ofSize: 8)
            nowLabel.backgroundColor = .red
            nowLabel.textColor = .white
            nowLabel.textAlignment = .center
        }else {
            topTwoImage.image = UIImage(named: "AppIcon")
            newLabel.isHidden = true
            nowLabel.isHidden = true
        }
        if topRandomThree == 1 {
            topThreeImage.image = UIImage(named:"top10 badge")
            newTwoLabel.isHidden = false
            newTwoLabel.text = "새로운 에피소드"
            newTwoLabel.font = .systemFont(ofSize: 8)
            newTwoLabel.backgroundColor = .red
            newTwoLabel.textColor = .white
            newTwoLabel.textAlignment = .center
            
            nowTwoLabel.isHidden = false
            nowTwoLabel.text = "지금 시청하기"
            nowTwoLabel.font = .systemFont(ofSize: 8)
            nowTwoLabel.backgroundColor = .white
            nowTwoLabel.textColor = .black
            nowTwoLabel.textAlignment = .center
        }else if topRandomThree == 2{
            newTwoLabel.isHidden = true
            topThreeImage.image = UIImage(named: "AppIcon")
            nowTwoLabel.text = "새로운 시리즈"
            nowTwoLabel.font = .systemFont(ofSize: 8)
            nowTwoLabel.backgroundColor = .red
            nowTwoLabel.textColor = .white
            nowTwoLabel.textAlignment = .center
        }else {
            topThreeImage.image = UIImage(named: "AppIcon")
            newTwoLabel.isHidden = true
            nowTwoLabel.isHidden = true
        }
        
        
        movieImage.image = UIImage(named:movie[movieOne]!)
        movieOneImage.image = UIImage(named:movie[movieTwo]!)
        movieTwoImage.image = UIImage(named:movie[movieThree]!)
        movieThreeImage.image = UIImage(named:movie[movieFour]!)
    }
}
