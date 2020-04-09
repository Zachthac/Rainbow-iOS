//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Clean Mac on 4/8/20.
//  Copyright © 2020 LambdaStudent. All rights reserved.
//

import UIKit



class WordsTableTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: <#T##String#>, definition: String),
        VocabularyWord(word: String, definition: String),
        VocabularyWord(word: String, definition: String),

        ]


    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
