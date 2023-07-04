//
//  HighScoreViewController.swift
//  MediMatch
//
//  Created by Devin King on 2/24/23.
//

import UIKit

class RecentScoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, GameOverViewDelegate {
    
    
    
    
    var userRecentScores: [UserHighScoreModel] = []
  
    func didSaveRecentScore(_ newestScore: UserHighScoreModel) {
        print("didSaveRecentScore called")
        userRecentScores.append(newestScore)
        userPreviousHighScoresTableView.reloadData()
    }
    
    let data = ["PTCB Prep", "Pharmacy Repeat", "MediMatch"]
    let cellSpacingHeight: CGFloat = 5
    
    @IBOutlet weak var userPreviousHighScoresTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPreviousHighScoresTableView.delegate = self
        userPreviousHighScoresTableView.dataSource = self
        userPreviousHighScoresTableView.register(UINib(nibName: "userPreviousHighScoresTableViewCell", bundle: nil), forCellReuseIdentifier: "userScoreTableViewCell")
        userPreviousHighScoresTableView.backgroundColor = .clear
        userPreviousHighScoresTableView.bounces = false
        addShadowAndCornerRadiusToTable(to: userPreviousHighScoresTableView)
        updateAppearance()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(userRecentScores)
    }

   
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Number of rows: \(userRecentScores.count)")
        return data.count + 7
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userScoreTableViewCell", for: indexPath) as! userPreviousHighScoresTableViewCell
       // let score = userRecentScores[indexPath.row]
        cell.userExamTitleTableCellViewLabel.text = "PTCB Prep"
        cell.userTrophyTableCellImageView.image = UIImage(named: "chat")
        cell.userTimeRemainingLabelTableViewCell.text = "Time Remaining: 0:00"
        cell.userScoreAsPercentageLabelTableViewCell.text = "Score: 80%"
        addShadowAndCornerRadius(to: cell)
        cell.backgroundColor = .clear
        return cell
    }

    // Function to add a shadow and corner radius to a UITableView
    func addShadowAndCornerRadiusToTable(to tableView: UITableView) {
        // Add a shadow to the table view
        tableView.layer.shadowColor = UIColor.black.cgColor
        tableView.layer.shadowOffset = CGSize(width: 0, height: 2)
        tableView.layer.shadowOpacity = 0.4
        tableView.layer.shadowRadius = 4

        // Add a corner radius to the table view
        tableView.layer.cornerRadius = 10
        tableView.clipsToBounds = true
    }

    // Function to add a shadow and corner radius to a UITableViewCell
    func addShadowAndCornerRadius(to cell: UITableViewCell) {
        // Add a shadow to the cell
        cell.contentView.layer.cornerRadius = 8
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2)
        cell.layer.shadowOpacity = 0.4
        cell.layer.shadowRadius = 4
        cell.layer.masksToBounds = false
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showGameOver" {
            if let gameOverViewController = segue.destination as? GameOverViewController {
                gameOverViewController.delegate = self
            }
        }
    }
}

