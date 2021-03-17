import UIKit
import Foundation


class Hero {
    
        var name: String
        var power: Int
        var health: Int
        var mana: Int
        var skill: Int
        var intellect: Int
        var experience: Int
        var damage: Int
        
        
    init(name:String, power: Int, health: Int, mana: Int, skill: Int, intellect: Int, experience: Int, damage: Int) {
            self.name = name
            self.power = power
            self.health = health
            self.mana = mana
            self.skill = skill
            self.intellect = intellect
            self.experience = experience
            self.damage = damage
        
        }
    
    func Action () -> Int {
        return 0
    }
    
    func statistics () {
         print("name: \(name)\npower: \(power)\nhealth: \(health)\(mana)\nmana: \(skill)\nskill: \(intellect)\nintellect: \(experience)\nexprerience: \(damage)\ndamage: n")
      }
 
 
    
 }
 class Archer: Hero {
        override init(name: String, power: Int, health: Int, mana: Int, skill: Int, intellect: Int, experience: Int, damage: Int) {
            super.init(name: name, power: power, health: health, mana: mana, skill: skill, intellect: intellect, experience: experience, damage: damage)
            
        }
        
        
        
        override func Action () -> Int {
    
            print("Archer attack on a distance")
            return 1
            }
        
        func combinationLock (){
            print("Archer can open any lock")
        }
       
        var aDamage: Int {
            get{return damage}
      set {
      damage=newValue }
      
        }
        
        
        
        var aHealth: Int {
            get{return health}
      set {
      health=newValue }
      
        }
        
        
        }
    
    
    
    class Warrior: Hero {
        override init(name: String, power: Int, health: Int, mana: Int, skill: Int, intellect: Int, experience: Int, damage: Int) {
            super.init(name: name, power: power, health: health, mana: mana, skill: skill, intellect: intellect, experience: experience, damage: damage)
            
           
    }
   
    var wDamage: Int{
            get{return damage}
      set {
      damage=newValue }
      
        }
    var wHealth:Int{
            get{return health}
      set {
      health=newValue }
      
        }
    
         func Attack () -> Int {
        print("Warrior takes any kinds of weapon and attack ")
            return damage
        }
        
    }
        
     class Magician: Hero {
        override init(name: String, power: Int, health: Int, mana: Int, skill: Int, intellect: Int, experience: Int, damage: Int) {
                        super.init(name: name, power: power, health: health, mana: mana, skill: skill, intellect: intellect, experience: experience, damage: damage)
              
        }
                 
        var mDamage: Int {
            get{return damage}
      set {
      damage=newValue }
      
        }
    var mHealth: Int {
            get{return health}
      set {
      health=newValue }
      
        }
                 
                        
                            func saySpell () -> Int{
                            
                                print("Magician cast a spell")
                             
                               return  6+5
                            }
                            
        override func Action () -> Int {
                
                            print("Magician attack on a distance")
                            
                            return 25-5
                        }
                       
                    
     }
        
    class Boss {
        var name: String
        var power: Int
        var health: Int
        var mana: Int
        var skill: Int
        var intellect: Int
        var experience: Int
        var damage: Int
    
        
    init(name:String, power: Int, health: Int, mana: Int, skill: Int, intellect: Int, experience: Int, damage: Int) {
            self.name = name
            self.power = power
            self.health = health
            self.mana = mana
            self.skill = skill
            self.intellect = intellect
            self.experience = experience
            self.damage = damage
        
        }
                    
                 var bDamage: Int {
            get{return damage}
      set {
      damage=newValue }
      
        }
    var bHealth: Int {
            get{return health}
      set {
      health=newValue }
      
        } }


 var magician: Magician = Magician (name: "Magician", power:55, health:210, mana:55,skill:35, intellect:54, experience:30, damage: 35)

var archer: Archer = Archer (name: "Лучник", power: 60, health: 160, mana: 30, skill: 40, intellect: 45, experience: 25, damage: 30)


var warrior: Warrior = Warrior (name: "Warrior", power: 70, health: 180, mana: 15, skill: 55, intellect: 40, experience: 20, damage: 35)



var boss: Boss = Boss (name: "Boss", power: 75, health: 570, mana: 35, skill: 50, intellect: 60, experience: 35, damage: 40)

magician.Action()
magician.saySpell()
archer.combinationLock()
archer.Action()
warrior.Attack()





if archer.aHealth<=0&&warrior.wHealth<=0&&magician.mHealth<=0||boss.bHealth>=1&&boss.bHealth<=570{
    
    print ("Босс выиграл")
   }
   
   
   



 if archer.aHealth>0||warrior.wHealth>0||magician.mHealth>0{
    for m in stride(from: magician.mDamage, to: 0, by: -1)
where m>=0&&m<magician.mHealth                                                                    {
    
    
    for w in stride(from: warrior.wDamage, to: 0, by: -1)
where w>=0&&w<warrior.wHealth                                                                    {
    
    for a in stride(from:archer.aDamage, to: 0, by: -1)
where a>=0&&a<archer.aHealth                                                                    {
for i in stride(from:boss.bDamage, to: 0, by: -1)
where i>=0&&i<boss.bHealth                                                                    {
    
let number = Int.random(in:0...2)

 if archer.aHealth<0&&warrior.wHealth<0&&magician.mHealth<0{
     print("герои умерли")
     break

 }

  switch number {
 case 0:

 if archer.aHealth<0{
     continue
     
 }
 if archer.aHealth==0{
     
     
     print("Лучник умер")
     
     continue
 
 }else{
 
 print("Босс ударил Лучника")
         archer.aHealth-=i
  print(archer.aHealth)
  
   print("__________________________________")
 boss.bHealth-=a
  print("Лучник нанес урон боссу")
 print ("Остаток здоровье Босса")
 print(boss.bHealth)
 if boss.bHealth<=0{
       print ("Босс Проиграл")
      }
 }
 case 1:
 if magician.mHealth<0{
     
     continue

 }
 
  if magician.mHealth==0{
    
    
    
     print("Маг умер")
 
    
     continue
 }
  
   magician.mHealth-=i
   print("Босс ударил мага")
 print (magician.mHealth)
print("__________________________________")
 boss.bHealth-=m
  print("Маг нанес урон боссу")
 print ("Остаток здоровье Босса")
 print(boss.bHealth)
 if boss.bHealth<=0{
       print ("Босс Проиграл")
      }
 default:
 
 if warrior.wHealth<0{
     
     continue

 }
 if warrior.wHealth==0{
    
     print("Воин умер")
  
     continue
 }
print("Босс ударил Воина")
   warrior.wHealth-=i
   
 print(warrior.wHealth)
 print("__________________________________")
 boss.bHealth-=w
  print("Воин нанес урон боссу")
print ("Остаток здоровье Босса")
 print(boss.bHealth)
 if boss.bHealth<=0{
       print ("Босс Проиграл")
      }
  }}
  }
  }}
  }
  
  
  
  
  
  
let MagicianChooseArmor = ["Helmet", "Shield", "Bulletprof"]
print(MagicianChooseArmor.randomElement()!)

let MagicianChooseWeapon = ["Gun", "Axe", "Dagger", "Grenade"]
print(MagicianChooseWeapon.randomElement()!)

let ArcherChooseArmor = ["Helmet", "Shield", "Bulletprof"]
print(ArcherChooseArmor.randomElement()!)

let ArcherChooseWeapon = ["Gun", "Axe", "Dagger", "Grenade"]
print (ArcherChooseWeapon.randomElement()!)

let WarriorChooseArmor = ["Helmet", "Shield", "Bulletprof"]
print(WarriorChooseArmor.randomElement()!)

let WarriorChooseWeapon = ["Gun", "Axe", "Dagger", "Grenade"]
print(WarriorChooseWeapon.randomElement()!)

let BossChooseArmor = ["Helmet", "Shield", "Bulletprof"]
print(BossChooseArmor.randomElement()!)

let BossChooseWeapon = ["Gun", "Axe", "Dagger", "Grenade"]
print(BossChooseWeapon.randomElement()!)


