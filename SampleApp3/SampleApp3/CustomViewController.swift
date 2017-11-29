//
//  CustomViewController.swift
//  SampleApp3
//
//  Created by 川満 翔 on 2017/11/28.
//  Copyright © 2017年 川満 翔. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    // ListViewに表示したいデータ
    let datas = ["りんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんごりんご", "みかん", "ばなな","きうい"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

// CustomViewControllerにUITableViewDataSourceを継承して拡張
extension CustomViewController : UITableViewDataSource {
    
    /*
     * TableViewに表示するセクション数を返す。default は 1
     */
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    /*
     * TableViewに表示するデータをセクション別に返す。
     * @param section 返却したいセクション
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 表示するデータの数だけ返却する。
        return datas.count
    }
    
    /*
     * TableViewに表示されるCellを生成する。
     * @param 生成したいCellのindexPath(Section NumberとRow Number)
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // TableViewから再利用可能なCellの情報を取得
        guard let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else {
            // もし、取得できな場合は空の行を表示（イレギュラーパターン）
            return UITableViewCell()
        }
        
        // 行別に必要なデータを表示
        tableViewCell.label.text = datas[indexPath.row]
        
        return tableViewCell
    }
}
