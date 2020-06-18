//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(membernamearray: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = secretNameEmoji(membernamearray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    func secretNameLetter(membernamearray: [String]) -> (String) {
        var firstInitial: [String] = []
        for member in membernamearray {
            firstInitial.append(String(member.prefix(1)))
        }
        membersNamesArray.removeAll()
        return firstInitial.joined().uppercased()
        }
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    
    var emojiDictionary: [String : String] = [
    "a": "😇",
    "b": "😐",
    "c": "🤗",
    "d": "🥴",
    "e": "🤐",
    "f": "😶",
    "g": "🥱",
    "h": "😲",
    "i": "🤥",
    "j": "😫",
    "k": "😓",
    "l": "😧",
    "m": "🤪",
    "n": "🤯",
    "o": "🤓",
    "p": "😁",
    "q": "😎",
    "r": "🥵",
    "s": "😠",
    "t": "😶",
    "u": "🤑",
    "v": "🙄",
    "w": "🧐",
    "x": "😴",
    "y": "😣",
    "z": "🥳"
    ]
    func secretNameEmoji(membernamearray: [String]) -> (String) {
        var emojis: [String] = []
        for member in membernamearray {
            var firstInitial = member.prefix(1)
            for (letter, emoji) in emojiDictionary {
            if firstInitial == letter {
            emojis.append(emoji)
            }
            }
            }
        membersNamesArray.removeAll()
        return emojis.joined()
    }







    // MARK: -   النهاية
    
    
    
}

