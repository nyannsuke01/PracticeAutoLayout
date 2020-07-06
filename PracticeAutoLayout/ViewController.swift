//
//  ViewController.swift
//  PracticeTableView
//
//  Created by user on 2020/07/04.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, deleteProtocol {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tbl: UITableView!


    // セルに表示するタイトルのリスト
    var titleList = ["おひつじ座", "おうし座", "ふたご座", "かに座", "しし座",
                     "おとめ座", "てんびん座", "さそり座", "いて座", "やぎ座",
                     "みずがめ座", "うお座"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tbl.delegate = self
        tbl.dataSource = self
        tbl.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultTableViewCell") as! ResultTableViewCell

        cell.cellNo.text = String(indexPath.row + 1)
        cell.cellLabel.text = self.titleList[indexPath.row]
        return cell
    }
    // MARK: UITableViewDelegate
    // セルタップ時の処理
    func tableView(_ tableView
        : UITableView, didSelectRowAt indexPath: IndexPath) {

        // タップ時の処理を記述

    }
    func catchData(count: Int) {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc override func delete(_ sender: Any?) {
        
    }



}


