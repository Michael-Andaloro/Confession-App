//
//  PrayerListViewController.swift
//  UITableViewCell action using segue
//
//  Created by Michael Andaloro on 02/23/2021
//

import UIKit

class PrayerList {
    var prayerName: String?
    var prayerScript: String?

    init(prName:String, prScript:String) {
        self.prayerName = prName
        self.prayerScript = prScript
    }
}

class PrayerListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblAppleProducts: UITableView!
    
    var prayerArray = [PrayerList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let act1 = PrayerList(prName: "Act of Contrition (Default)", prScript: "O my God, I am heartily sorry for having offended Thee, and I detest all my sins because of thy just punishments, but most of all because they offend Thee, my God, who art all good and deserving of all my love. I firmly resolve with the help of Thy grace to sin no more and to avoid the near occasion of sin. Amen.")
        prayerArray.append(act1)
        
        let act2 = PrayerList(prName: "Act of Contrition (Latin)", prScript: "DEUS meus, ex toto corde paenitet me omnium meorum peccatorum, eaque detestor, quia peccando, non solum poenas a Te iuste statutas promeritus sum, sed praesertim quia offendi Te, summum bonum, ac dignum qui super omnia diligaris. Ideo firmiter propono, adiuvante gratia Tua, de cetero me non peccaturum peccandique occasiones proximas fugiturum. Amen.")
        prayerArray.append(act2)
        
        let act3 = PrayerList(prName: "Act of Contrition (Short)", prScript: "Lord God, in your goodness have mercy on me: do not look on my sins, but take away all my guilt. Create in me a clean heart and renew within me an upright spirit.")
        prayerArray.append(act3)
        
        let act4 = PrayerList(prName: "Act of Contrition (St. Gertrude)", prScript: "O my most loving Father! In the bitterness of the dolorous Passion of Jesus Christ, Thy Son, I now pour forth my complaint, indignantly accusing myself that I have served Thee so unfaithfully during this day and have offended Thee, my most amiable and loving Father, by so many and so great negligences. I grieve for them from my inmost heart, and strike my breast in the spirit of compunction, and say unto Thee, O God! be merciful to me a sinner. And for all the negligences whereby I have extinguished Thy good and gentle Spirit within me, I offer Thee the sufferings and the tears of Thy beloved Son. I beseech Thee, in union with His most availing prayers, to grant me pardon of my sins, and to supply all my defects. Deign to hear this, my prayer, through that love which held back Thine arm from taking vengeance, when Thine only and most beloved Son, the object of Thine eternal and unspeakable complacency, was numbered with transgressors. Amen.")
        prayerArray.append(act4)
        
        let creed = PrayerList(prName: "Apostles' Creed", prScript: "I believe in God, the Father Almighty, Creator of Heaven and earth; and in Jesus Christ, His only Son Our Lord, Who was conceived by the Holy Spirit, born of the Virgin Mary, suffered under Pontius Pilate, was crucified, died, and was buried. He descended into Hell; the third day He rose again from the dead; He ascended into Heaven, and sitteth at the right hand of God, the Father almighty; from thence He shall come to judge the living and the dead. I believe in the Holy Spirit, the holy Catholic Church, the communion of saints, the forgiveness of sins, the resurrection of the body and life everlasting. Amen.")
        prayerArray.append(creed)
        
        let jesusPrayer = PrayerList(prName: "Jesus Prayer", prScript: "Lord Jesus, Son of God, have mercy on me, a sinner.")
        prayerArray.append(jesusPrayer)
        
        let gloryBe = PrayerList(prName: "Glory Be", prScript: "Glory be to the Father, and to the Son, and to the Holy Spirit. As it was in the beginning, is now, and ever shall be, world without end. Amen.")
        prayerArray.append(gloryBe)
        
        let hailHolyQueen = PrayerList(prName: "Hail, Holy Queen", prScript: "Hail, holy Queen, Mother of mercy, hail, our life, our sweetness and our hope. To thee do we cry, poor banished children of Eve: to thee do we send up our sighs, mourning and weeping in this vale of tears. Turn then, most gracious Advocate, thine eyes of mercy toward us, and after this our exile, show unto us the blessed fruit of thy womb, Jesus, O merciful, O loving, O sweet Virgin Mary! (Amen. -OR- V. Pray for us, oh holy Mother of God R. That we may be made worthy of the promises of Christ. Amen.)")
        prayerArray.append(hailHolyQueen)
        
        let hailMary = PrayerList(prName: "Hail Mary", prScript: "Hail, Mary, full of grace, the Lord is with thee. Blessed art thou amongst women and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen.")
        prayerArray.append(hailMary)
        
        let memorare = PrayerList(prName: "Memorare", prScript: "Remember, O most gracious Virgin Mary, that never was it known that anyone who fled to thy protection, implored thy help, or sought thine intercession was left unaided. Inspired by this confidence, I fly unto thee, O Virgin of virgins, my mother; to thee do I come, before thee I stand, sinful and sorrowful. O Mother of the Word Incarnate, despise not my petitions, but in thy mercy hear and answer me. Amen.")
        prayerArray.append(memorare)
        
        let ourFather = PrayerList(prName: "Our Father", prScript: "Our Father, Who art in heaven, Hallowed be Thy Name. Thy Kingdom come.  Thy Will be done, on earth as it is in Heaven. Give us this day our daily bread.  And forgive us our trespasses, as we forgive those who trespass against us.  And lead us not into temptation, but deliver us from evil. Amen.")
        prayerArray.append(ourFather)
        
        let rosaryPrayer = PrayerList(prName: "Rosary Prayer", prScript: "O, God, Whose only-begotten Son, by His life, death and resurrection, has purchased for us the rewards of eternal life;  grant, we beseech Thee, that, meditating upon these mysteries of the Most Holy Rosary of the Blessed Virgin Mary, we may imitate what they contain and obtain what they promise, through the same Christ Our Lord. Amen.")
        prayerArray.append(rosaryPrayer)
        
        let stMichael = PrayerList(prName: "Prayer to St. Michael", prScript: "St. Michael the Archangel, defend us in battle, be our protection against the wickedness and snares of the devil.  May God rebuke him we humbly pray; and do thou, O Prince of the Heavenly host, by the power of God, cast into hell Satan and all the evil spirits who prowl about the world seeking the ruin of souls. Amen.")
        prayerArray.append(stMichael)
        
        let holySpirit = PrayerList(prName: "Prayer to the Holy Spirit", prScript: "O, Holy Spirit, beloved of my soul, I adore You. Enlighten me, guide me, strengthen me, colsole me. Tell me what I should do. Give me your orders. I promise to submit myself to all that You desire of me and to accept all that you permit to happen to me. Let me only know Your will.")
        prayerArray.append(holySpirit)
        
        let rosary = PrayerList(prName: "Rosary", prScript: "Joyful Mysteries (Monday & Saturday): The Anuunucation; the Visitation; ")
        prayerArray.append(rosary)
        
        tblAppleProducts.dataSource = self
        tblAppleProducts.delegate = self
    }
    
    //MARK:- UITableView methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prayerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "productstable")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "productstable")
        }
        
        cell?.textLabel?.text = prayerArray[indexPath.row].prayerName
        cell?.detailTextLabel?.text = prayerArray[indexPath.row].prayerScript
        
        return cell!
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PrayerDetailViewController {
            destination.prayer = prayerArray[(tblAppleProducts.indexPathForSelectedRow?.row)!]
            tblAppleProducts.deselectRow(at: tblAppleProducts.indexPathForSelectedRow!, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
