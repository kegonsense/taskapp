//
//  ViewController.swift
//  taskapp
//
//  Created by 佐藤憲吾 on 2021/08/20.
//
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

    // データの数（＝セルの数）を返す tableView(_:numberOfRowsInSection:)メソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    // 各セルの内容を返す　tableView(_:cellForRowAt:)メソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 再利用可能な cell を得る
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        return cell
    }

    // 各セルを選択した時に実行される tableView(_:didSelectRowAt:)メソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        //セルをタップしたときにタスク作成/編集画面(InputViewController)へ遷移
        performSegue(withIdentifier: "cellSegue",sender: nil) //
    }

    // セルが削除が可能なことを伝える tableView(_:editingStyleForRowAt:)メソッド
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath)-> UITableViewCell.EditingStyle {
        return .delete
    }

    // Delete ボタンが押された時に呼ばれる tableView(_:commit:forRowAt:)メソッド
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    }
}
