//
//  ProjectMenuViewController.swift
//  Musgravite
//
//  Created by Fernando Martin Garcia Del Angel on 6/18/19.
//  Copyright © 2019 Aabo Technologies. All rights reserved.
//

import UIKit
import SVProgressHUD

class ProjectMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    //MARK: UIView Controller Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.register(UINib.init(nibName: "ProjectStatsTableViewCell", bundle: nil), forCellReuseIdentifier: "ProjectStatsTVC")
        self.tableView.rowHeight = 200
    }
    
    //MARK: UITableView Controller Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.item {
        case 0:
            return tableView.dequeueReusableCell(withIdentifier: "ProjectStatsTVC", for: indexPath as IndexPath) as! ProjectStatsTableViewCell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.item)
    }

}
