//
//  tableController.swift
//  swiftDemo
//
//  Created by Mona Wen on 2018/8/15.
//  Copyright © 2018年 Mona Wen. All rights reserved.
//

import UIKit

class TableController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    let name_links_tuples : [(String, String)] =
        [
            ("四","a"),
            ("五","b"),
            ("六","c")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name_links_tuples.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        
        let title :String = name_links_tuples[indexPath.row].0
        cell.textLabel!.text = title
        
        //每一行有一个查看按钮
        let btn:UIButton = UIButton(type: UIButtonType.custom)
        let SCREEN_WIGHT = self.view.frame.size.width - 65 //屏幕宽
        btn.frame = CGRect(x:SCREEN_WIGHT,y:10,width: 50, height: 30)
        btn.backgroundColor = .red
        btn.setTitle("查看", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        cell.contentView.addSubview(btn)
        return cell
    }
    
    //table的cell高度，可选方法
    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func viewDidLoad() {
        let react = self.view.frame
        
        let table:UITableView = UITableView(frame:react)
        table.backgroundColor = .white
        self.view.addSubview(table)
        table.dataSource = self
        table.delegate = self
        
        super.viewDidLoad()
    }
    
}
