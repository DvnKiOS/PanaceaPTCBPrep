//
//  SpeechBasedMedicationQuestionsManger.swift
//  MediMatch
//
//  Created by Devin King on 2/25/23.
//

import Foundation

struct SpeechBasedMedicationQuestionsManager{
    
    
    let brandNamedMedications = [
        SpeechBasedMedicationQuestionsModel(brandName: "Lexapro"),
        SpeechBasedMedicationQuestionsModel(brandName: "Vicodin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Prinivil"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zocor"),
        SpeechBasedMedicationQuestionsModel(brandName: "Synthroid"),
        SpeechBasedMedicationQuestionsModel(brandName: "Amoxil"),
        SpeechBasedMedicationQuestionsModel(brandName: "ZithroMax"),
        SpeechBasedMedicationQuestionsModel(brandName: "Microzide"),
        SpeechBasedMedicationQuestionsModel(brandName: "Norvas"),
        SpeechBasedMedicationQuestionsModel(brandName: "Xanax"),
        SpeechBasedMedicationQuestionsModel(brandName: "Glucophage"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lipitor"),
        SpeechBasedMedicationQuestionsModel(brandName: "Prilosec"),
        SpeechBasedMedicationQuestionsModel(brandName: "CiproProquin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zofran"),
        SpeechBasedMedicationQuestionsModel(brandName: "Clozaril"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lasic"),
        SpeechBasedMedicationQuestionsModel(brandName: "Levitra"),
        SpeechBasedMedicationQuestionsModel(brandName: "Heparin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Valcyte"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lamaictal"),
        SpeechBasedMedicationQuestionsModel(brandName: "Diflucan"),
        SpeechBasedMedicationQuestionsModel(brandName: "Tenormin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Singular"),
        SpeechBasedMedicationQuestionsModel(brandName: "Folnase"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zyloprim"),
        SpeechBasedMedicationQuestionsModel(brandName: "Pepcid"),
        SpeechBasedMedicationQuestionsModel(brandName: "Omnicef"),
        SpeechBasedMedicationQuestionsModel(brandName: "Yaz"),
        SpeechBasedMedicationQuestionsModel(brandName: "Apresoline"),
        SpeechBasedMedicationQuestionsModel(brandName: "Cogentin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Tussonex"),
        SpeechBasedMedicationQuestionsModel(brandName: "Paxil"),
        SpeechBasedMedicationQuestionsModel(brandName: "Ativan"),
        SpeechBasedMedicationQuestionsModel(brandName: "Pyridium"),
        SpeechBasedMedicationQuestionsModel(brandName: "Plaquenil"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lidoderm"),
        SpeechBasedMedicationQuestionsModel(brandName: "Cataflam"),
        SpeechBasedMedicationQuestionsModel(brandName: "Deltasone"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zetia"),
        SpeechBasedMedicationQuestionsModel(brandName: "Evista"),
        SpeechBasedMedicationQuestionsModel(brandName: "Plavix"),
        SpeechBasedMedicationQuestionsModel(brandName: "Prednisone"),
        SpeechBasedMedicationQuestionsModel(brandName: "Dilantin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lovaza"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zanaflex"),
        SpeechBasedMedicationQuestionsModel(brandName: "Hytrin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Dyrenium"),
        SpeechBasedMedicationQuestionsModel(brandName: "Altace"),
        SpeechBasedMedicationQuestionsModel(brandName: "Pravachol"),
        SpeechBasedMedicationQuestionsModel(brandName: "Risderdal"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lunesta"),
        SpeechBasedMedicationQuestionsModel(brandName: "Celebrex"),
        SpeechBasedMedicationQuestionsModel(brandName: "Premarin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Avelox"),
        SpeechBasedMedicationQuestionsModel(brandName: "Aricept"),
        SpeechBasedMedicationQuestionsModel(brandName: "Marcobid"),
        SpeechBasedMedicationQuestionsModel(brandName: "Duragesic "),
        SpeechBasedMedicationQuestionsModel(brandName: "Imdur"),
        SpeechBasedMedicationQuestionsModel(brandName: "Prozac"),
        SpeechBasedMedicationQuestionsModel(brandName: "Aristocort"),
        SpeechBasedMedicationQuestionsModel(brandName: "Pamelor"),
        SpeechBasedMedicationQuestionsModel(brandName: "HumaLog "),
        SpeechBasedMedicationQuestionsModel(brandName: "Depakote "),
        SpeechBasedMedicationQuestionsModel(brandName: "Chloraprep"),
        SpeechBasedMedicationQuestionsModel(brandName: "Imitrex"),
        SpeechBasedMedicationQuestionsModel(brandName: " Protonix"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lopressor "),
        SpeechBasedMedicationQuestionsModel(brandName: "Robitussen"),
        SpeechBasedMedicationQuestionsModel(brandName: "Valium"),
        SpeechBasedMedicationQuestionsModel(brandName: "Viagra "),
        SpeechBasedMedicationQuestionsModel(brandName: "Bactroban"),
        SpeechBasedMedicationQuestionsModel(brandName: "Januvia "),
        SpeechBasedMedicationQuestionsModel(brandName: "Reglan "),
        SpeechBasedMedicationQuestionsModel(brandName: "Keflex"),
        SpeechBasedMedicationQuestionsModel(brandName: "Effexor"),
       
        SpeechBasedMedicationQuestionsModel(brandName: "Boniva"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zantac"),
        SpeechBasedMedicationQuestionsModel(brandName: "Senna Lax"),
        SpeechBasedMedicationQuestionsModel(brandName: "NovoLog"),
        SpeechBasedMedicationQuestionsModel(brandName: "Ecotrin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lioresal"),
        SpeechBasedMedicationQuestionsModel(brandName: "Flagyl"),
        SpeechBasedMedicationQuestionsModel(brandName: "Keppra"),
        SpeechBasedMedicationQuestionsModel(brandName: "Mitigare"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zyprexa"),
        SpeechBasedMedicationQuestionsModel(brandName: "Avodart"),
        SpeechBasedMedicationQuestionsModel(brandName: "TriCor"),
        SpeechBasedMedicationQuestionsModel(brandName: "Cardura"),
        SpeechBasedMedicationQuestionsModel(brandName: "Aleve"),
        SpeechBasedMedicationQuestionsModel(brandName: "Aldactone"),
        SpeechBasedMedicationQuestionsModel(brandName: "Namenda"),
        SpeechBasedMedicationQuestionsModel(brandName: "Methadose"),
        SpeechBasedMedicationQuestionsModel(brandName: "Vasotec"),
        SpeechBasedMedicationQuestionsModel(brandName: "Tamiflu"),
        SpeechBasedMedicationQuestionsModel(brandName: "Requip"),
        
        SpeechBasedMedicationQuestionsModel(brandName: "Strattera"),
        SpeechBasedMedicationQuestionsModel(brandName: "Ambien"),
        SpeechBasedMedicationQuestionsModel(brandName: "Advair"),
        SpeechBasedMedicationQuestionsModel(brandName: "Levaquin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Tofranil"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zometa"),
        SpeechBasedMedicationQuestionsModel(brandName: "Glucotrol"),
        SpeechBasedMedicationQuestionsModel(brandName: "AcipHex"),
        SpeechBasedMedicationQuestionsModel(brandName: "Otrexup"),
        SpeechBasedMedicationQuestionsModel(brandName: "Cleocin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Tylenol"),
        SpeechBasedMedicationQuestionsModel(brandName: "Feosol"),
        SpeechBasedMedicationQuestionsModel(brandName: "Relpax"),
        SpeechBasedMedicationQuestionsModel(brandName: "Carbacot"),
        SpeechBasedMedicationQuestionsModel(brandName: "Diabeta"),
        SpeechBasedMedicationQuestionsModel(brandName: "Celexa"),
        SpeechBasedMedicationQuestionsModel(brandName: "Benicar"),
        SpeechBasedMedicationQuestionsModel(brandName: "Coreg"),
        SpeechBasedMedicationQuestionsModel(brandName: "Spriva"),
        SpeechBasedMedicationQuestionsModel(brandName: "Xolair "),
        SpeechBasedMedicationQuestionsModel(brandName: "NitroStat"),
        SpeechBasedMedicationQuestionsModel(brandName: "Eliquis"),
        SpeechBasedMedicationQuestionsModel(brandName: "Herceptin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Atripla"),
        SpeechBasedMedicationQuestionsModel(brandName: "Xarelto"),
        SpeechBasedMedicationQuestionsModel(brandName: "Stalevo"),
        SpeechBasedMedicationQuestionsModel(brandName: "Fioricet"),
        SpeechBasedMedicationQuestionsModel(brandName: "Levemir"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lovenox"),
        SpeechBasedMedicationQuestionsModel(brandName: "Ritalin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Crestor"),
        SpeechBasedMedicationQuestionsModel(brandName: "Xgeva"),
        SpeechBasedMedicationQuestionsModel(brandName: "Pradaxa"),
        SpeechBasedMedicationQuestionsModel(brandName: "Sensipar"),
        SpeechBasedMedicationQuestionsModel(brandName: "Vesicare"),
        SpeechBasedMedicationQuestionsModel(brandName: "Haldol"),
        SpeechBasedMedicationQuestionsModel(brandName: "Ala-Cort"),
        SpeechBasedMedicationQuestionsModel(brandName: "HumuLiN"),
        SpeechBasedMedicationQuestionsModel(brandName: "Isentress"),
        SpeechBasedMedicationQuestionsModel(brandName: "Stelara"),
        SpeechBasedMedicationQuestionsModel(brandName: "Mobic"),
        SpeechBasedMedicationQuestionsModel(brandName: "Remicade"),
        SpeechBasedMedicationQuestionsModel(brandName: "Renvela"),
        SpeechBasedMedicationQuestionsModel(brandName: "Fragmin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zoloft"),
        SpeechBasedMedicationQuestionsModel(brandName: "Klonopin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Avalide"),
        SpeechBasedMedicationQuestionsModel(brandName: "Ceftin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Nizoral"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lyrica"),
        SpeechBasedMedicationQuestionsModel(brandName: "Nexium"),
        SpeechBasedMedicationQuestionsModel(brandName: "Combivent Respimat"),
        SpeechBasedMedicationQuestionsModel(brandName: "Niaspan"),
        SpeechBasedMedicationQuestionsModel(brandName: "Uroxatral"),
        SpeechBasedMedicationQuestionsModel(brandName: "Biaxin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zomig"),
        SpeechBasedMedicationQuestionsModel(brandName: "Inovokana"),
        SpeechBasedMedicationQuestionsModel(brandName: "Saxenda"),
        SpeechBasedMedicationQuestionsModel(brandName: "Alimta"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lotrisone"),
        SpeechBasedMedicationQuestionsModel(brandName: "Avastin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Solvaldi"),
        SpeechBasedMedicationQuestionsModel(brandName: "Glienya"),
        SpeechBasedMedicationQuestionsModel(brandName: "Epogen"),
        SpeechBasedMedicationQuestionsModel(brandName: "Seroquel"),
        SpeechBasedMedicationQuestionsModel(brandName: "Amaryl"),
        SpeechBasedMedicationQuestionsModel(brandName: "Percocet"),
        SpeechBasedMedicationQuestionsModel(brandName: "Sadimmune "),
        SpeechBasedMedicationQuestionsModel(brandName: "Lantus"),
        SpeechBasedMedicationQuestionsModel(brandName: "Cialis"),
        SpeechBasedMedicationQuestionsModel(brandName: "Elvail"),
        SpeechBasedMedicationQuestionsModel(brandName: "Lopid"),
        SpeechBasedMedicationQuestionsModel(brandName: "Flo-Pred"),
        SpeechBasedMedicationQuestionsModel(brandName: "Advil"),
        SpeechBasedMedicationQuestionsModel(brandName: "Aceon"),
        SpeechBasedMedicationQuestionsModel(brandName: "Desyrel"),
        SpeechBasedMedicationQuestionsModel(brandName: "Actos"),
        SpeechBasedMedicationQuestionsModel(brandName: "Proscar"),
        SpeechBasedMedicationQuestionsModel(brandName:  "Larodopa"),
        SpeechBasedMedicationQuestionsModel(brandName: "Actonel"),
        SpeechBasedMedicationQuestionsModel(brandName: "Ventolin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Ultram"),
        SpeechBasedMedicationQuestionsModel(brandName: "Sonata"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zebeta"),
        SpeechBasedMedicationQuestionsModel(brandName: "Zovirax"),
        SpeechBasedMedicationQuestionsModel(brandName: "Coumadin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Luvox"),
        SpeechBasedMedicationQuestionsModel(brandName: "Plavix"),
        SpeechBasedMedicationQuestionsModel(brandName: "Vibramycin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Hyzaar"),
        SpeechBasedMedicationQuestionsModel(brandName: "Sancuso"),
        SpeechBasedMedicationQuestionsModel(brandName: "Restoril"),
        SpeechBasedMedicationQuestionsModel(brandName: "Prevacid"),
        SpeechBasedMedicationQuestionsModel(brandName: "Aguemintin"),
        SpeechBasedMedicationQuestionsModel(brandName: "Altoprev")
        
    ].shuffled()
    
    
    var userSpeechBasedScore = 0
    var currentSpeechBasedQuestion = 0
  
    
    func getCurrentSpeechBasedQuestion() -> String {
        return brandNamedMedications[currentSpeechBasedQuestion].brandName
    }
    
    mutating func getnextSpeechBasedMedicationQuestion() {
        if currentSpeechBasedQuestion < brandNamedMedications.count {
            currentSpeechBasedQuestion += 1
        } else {
            currentSpeechBasedQuestion = 0
        }
    }
    
    
    mutating func checkIfUserGotItRight(userSpoke: String ) -> Bool {
        
        if userSpoke == brandNamedMedications[currentSpeechBasedQuestion].brandName {
            userSpeechBasedScore += 1
            return true
        } else if userSpoke != brandNamedMedications[currentSpeechBasedQuestion].brandName    {
                  
          
          
        }
        return false
    }
    
}
