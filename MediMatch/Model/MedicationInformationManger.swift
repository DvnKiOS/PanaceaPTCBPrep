//
//  MediationInformation.swift
//  MediMatch
//
//  Created by Devin King on 2/18/23.
//

import Foundation

struct MedicationInformationManger{
 
    
    
    
    
    let medications = [
       
        MedicationInformationModel(brandName: "Prinivil", genericName: "Lisinopril"),
        MedicationInformationModel(brandName: "Synthroid", genericName: "Levothyroxine"),
        MedicationInformationModel(brandName: "Amoxil", genericName: "Amoxicillin"),
        MedicationInformationModel(brandName: "Zithromax", genericName: "Azithromycin"),
        MedicationInformationModel(brandName: "Microzide", genericName: "Hydrochlorothiazide"),
        MedicationInformationModel(brandName: "Norvasc", genericName: "Amlodipine"),
        MedicationInformationModel(brandName: "Xanax", genericName: "Alprazolam"),
        MedicationInformationModel(brandName: "Glucophage", genericName: "Metformin"),
        MedicationInformationModel(brandName: "Lipitor", genericName: "Atorvastatin"),
        MedicationInformationModel(brandName: "Prilosec", genericName: "Omeprazole"),
        MedicationInformationModel(brandName: "Augmentin", genericName: "Amoxicillin+clavulanate"),
        MedicationInformationModel(brandName: "Tenormin", genericName: "Atenolol"),
        MedicationInformationModel(brandName: "Lasix", genericName: "Furosemide"),
        MedicationInformationModel(brandName: "Lopressor", genericName: "Metoprolol"),
        MedicationInformationModel(brandName: "Zoloft", genericName: "Sertraline"),
        MedicationInformationModel(brandName: "Ambien", genericName: "Zolpidem"),
        MedicationInformationModel(brandName: "Percocet", genericName: "Oxycodone and Acetminophin"),
        MedicationInformationModel(brandName: "Nexium", genericName: "Esomeprazole"),
        MedicationInformationModel(brandName: "Plavix", genericName: "Clopidogrel"),
        MedicationInformationModel(brandName: "Singulair", genericName: "Montelukast"),
        MedicationInformationModel(brandName: "Sterapred", genericName: "Prednisone"),
        MedicationInformationModel(brandName: "Lexapro", genericName: "Escitalopram"),
        MedicationInformationModel(brandName: "Advil", genericName: "Ibuprofen"),
        MedicationInformationModel(brandName: "Celexa", genericName: "Citalopram"),
        MedicationInformationModel(brandName: "ProAir", genericName: "Albuterol"),
        MedicationInformationModel(brandName: "Prozac", genericName: "Fluoxetine"),
        MedicationInformationModel(brandName: "Neurontin", genericName: "Gabapentin"),
        MedicationInformationModel(brandName: "Coumadin", genericName: "Warfarin"),
        MedicationInformationModel(brandName: "Ultram", genericName: "Tramadol"),
        MedicationInformationModel(brandName: "Klonopin", genericName: "Clonazepam"),
        MedicationInformationModel(brandName: "Ativan", genericName: "Lorazepam"),
        MedicationInformationModel(brandName: "Keflex", genericName: "Cephalexin"),
        MedicationInformationModel(brandName: "Flexeril", genericName: "Cyclobenzaprine"),
        MedicationInformationModel(brandName: "Septra", genericName: "Sulfamexthoxazole and Trimethoprim"),
        MedicationInformationModel(brandName: "Viagra", genericName: "Sildenafil"),
        MedicationInformationModel(brandName: "Effexor", genericName: "Venlafaxine"),
        MedicationInformationModel(brandName: "Levaquin", genericName: "Levofloxacin"),
        MedicationInformationModel(brandName: "Cipro", genericName: "Ciprofloxacin"),
        MedicationInformationModel(brandName: "Crestor", genericName: "Rosuvastatin"),
        MedicationInformationModel(brandName: "Adderall", genericName: "Dextroamphetamine and Amphetamine"),
        MedicationInformationModel(brandName: "Ritalin", genericName: "Methylphenidate"),
        MedicationInformationModel(brandName: "Lamictal", genericName: "Lamotrigine"),
        MedicationInformationModel(brandName: "Benicar", genericName: "Olmesartan"),
        MedicationInformationModel(brandName: "Hyzaar", genericName: "Losartan+hydrochlorothiazide"),
        MedicationInformationModel(brandName: "Tricor", genericName: "Fenofibrate"),
        MedicationInformationModel(brandName: "Pravachol", genericName: "Pravastatin"),
        MedicationInformationModel(brandName: "Desyrel", genericName: "Trazodone"),
        MedicationInformationModel(brandName: "Keppra", genericName: "Levetiracetam"),
        MedicationInformationModel(brandName: "Topamax", genericName: "Topiramate"),
        MedicationInformationModel(brandName: "Seroquel", genericName: "Quetiapine"),
        MedicationInformationModel(brandName: "Cymbalta", genericName: "Duloxetine"),
        MedicationInformationModel(brandName: "Depakote", genericName: "Divalproex"),
        MedicationInformationModel(brandName: "Diovan", genericName: "Valsartan"),
        MedicationInformationModel(brandName: "Avapro", genericName: "Irbesartan"),
        MedicationInformationModel(brandName: "Actos", genericName: "Pioglitazone"),
        MedicationInformationModel(brandName: "Nasonex", genericName: "Mometasone"),
        MedicationInformationModel(brandName: "Flonase", genericName: "Fluticasone"),
        MedicationInformationModel(brandName: "Symbicort", genericName: "Budesonide and Formoterol"),
        MedicationInformationModel(brandName: "Protonix", genericName: "Pantoprazole"),
        MedicationInformationModel(brandName: "Zetia", genericName: "Ezetimibe"),
        MedicationInformationModel(brandName: "Fosamax", genericName: "Alendronate"),
        MedicationInformationModel(brandName: "Prevacid", genericName: "Lansoprazole"),
        MedicationInformationModel(brandName: "Zocor", genericName: "Simvastatin"),
        MedicationInformationModel(brandName: "Ambien CR", genericName: "Zolpidem"),
        MedicationInformationModel(brandName: "Vyvanse", genericName: "Lisdexamfetamine"),
        MedicationInformationModel(brandName: "Aldactone", genericName: "Spironolactone"),
        MedicationInformationModel(brandName: "HydroDIURIL", genericName: "Hydrochlorothiazide"),
        MedicationInformationModel(brandName: "Viagra", genericName: "Sildenafil"),
        MedicationInformationModel(brandName: "Effexor", genericName: "Venlafaxine"),
        MedicationInformationModel(brandName: "Levaquin", genericName: "Levofloxacin"),
        MedicationInformationModel(brandName: "Cipro", genericName: "Ciprofloxacin"),
        MedicationInformationModel(brandName: "Crestor", genericName: "Rosuvastatin"),
        MedicationInformationModel(brandName: "Adderall", genericName: "Dextroamphetamine and Amphetamine"),
        MedicationInformationModel(brandName: "Ritalin", genericName: "Methylphenidate"),
        MedicationInformationModel(brandName: "Lamictal", genericName: "Lamotrigine"),
        MedicationInformationModel(brandName: "Benicar", genericName: "Olmesartan"),
        MedicationInformationModel(brandName: "Hyzaar", genericName: "Losartan+hydrochlorothiazide"),
        MedicationInformationModel(brandName: "Tricor", genericName: "Fenofibrate"),
        MedicationInformationModel(brandName: "Pravachol", genericName: "Pravastatin"),
        MedicationInformationModel(brandName: "Desyrel", genericName: "Trazodone"),
        MedicationInformationModel(brandName: "Keppra", genericName: "Levetiracetam"),
        MedicationInformationModel(brandName: "Topamax", genericName: "Topiramate"),
        MedicationInformationModel(brandName: "Seroquel", genericName: "Quetiapine"),
        MedicationInformationModel(brandName: "Cymbalta", genericName: "Duloxetine"),
        MedicationInformationModel(brandName: "Depakote", genericName: "Divalproex"),
        MedicationInformationModel(brandName: "Diovan", genericName: "Valsartan"),
        MedicationInformationModel(brandName: "Avapro", genericName: "Irbesartan"),
        MedicationInformationModel(brandName: "Actos", genericName: "Pioglitazone"),
        MedicationInformationModel(brandName: "Nasonex", genericName: "Mometasone"),
        MedicationInformationModel(brandName: "Flonase", genericName: "Fluticasone"),
        MedicationInformationModel(brandName: "Symbicort", genericName: "Budesonide and Formoterol"),
        MedicationInformationModel(brandName: "Protonix", genericName: "Pantoprazole"),
        MedicationInformationModel(brandName: "Zetia", genericName: "Ezetimibe"),
        MedicationInformationModel(brandName: "Fosamax", genericName: "Alendronate"),
        MedicationInformationModel(brandName: "Prevacid", genericName: "Lansoprazole"),
        MedicationInformationModel(brandName: "Zocor", genericName: "Simvastatin"),
        MedicationInformationModel(brandName: "Ambien CR", genericName: "Zolpidem"),
        MedicationInformationModel(brandName: "Vyvanse", genericName: "Lisdexamfetamine"),
        MedicationInformationModel(brandName: "Aldactone", genericName: "Spironolactone"),
        MedicationInformationModel(brandName: "HydroDIURIL", genericName: "Hydrochlorothiazide"),
        MedicationInformationModel(brandName: "Nexium", genericName: "Esomeprazole"),
        MedicationInformationModel(brandName: "NuvaRing", genericName: "Etonogestrel and Ethinyl estradiol"),
        MedicationInformationModel(brandName: "Onglyza", genericName: "Saxagliptin"),
        MedicationInformationModel(brandName: "Paxil", genericName: "Paroxetine"),
        MedicationInformationModel(brandName: "Plavix", genericName: "Clopidogrel"),
        MedicationInformationModel(brandName: "Pravachol", genericName: "Pravastatin"),
        MedicationInformationModel(brandName: "Pristiq", genericName: "Desvenlafaxine"),
        MedicationInformationModel(brandName: "ProAir HFA", genericName: "Albuterol"),
        MedicationInformationModel(brandName: "Proscar", genericName: "Finasteride"),
        MedicationInformationModel(brandName: "Remicade", genericName: "Infliximab"),
        MedicationInformationModel(brandName: "Restasis", genericName: "Cyclosporine"),
        MedicationInformationModel(brandName: "Seroquel", genericName: "Quetiapine"),
        MedicationInformationModel(brandName: "Singulair", genericName: "Montelukast"),
        MedicationInformationModel(brandName: "Spiriva Handihaler", genericName: "Tiotropium"),
        MedicationInformationModel(brandName: "Strattera", genericName: "Atomoxetine"),
        MedicationInformationModel(brandName: "Synthroid", genericName: "Levothyroxine"),
        MedicationInformationModel(brandName: "Topamax", genericName: "Topiramate"),
        MedicationInformationModel(brandName: "Tradjenta", genericName: "Linagliptin"),
        MedicationInformationModel(brandName: "Travatan Z", genericName: "Travoprost"),
        MedicationInformationModel(brandName: "Tricor", genericName: "Fenofibrate"),
        MedicationInformationModel(brandName: "Uroxatral", genericName: "Alfuzosin"),
        MedicationInformationModel(brandName: "Valium", genericName: "Diazepam"),
        MedicationInformationModel(brandName: "Viagra", genericName: "Sildenafil"),
        MedicationInformationModel(brandName: "Victoza", genericName: "Liraglutide"),
        MedicationInformationModel(brandName: "Vimpat", genericName: "Lacosamide"),
        MedicationInformationModel(brandName: "Vytorin", genericName: "Ezetimibe and Simvastatin"),
        MedicationInformationModel(brandName: "Xarelto", genericName: "Rivaroxaban"),
        MedicationInformationModel(brandName: "Xopenex", genericName: "Levalbuterol"),
        MedicationInformationModel(brandName: "Zestoretic", genericName: "Lisinopril and Hydrochlorothiazide"),
        MedicationInformationModel(brandName: "Zofran", genericName: "Ondansetron"),
        MedicationInformationModel(brandName: "Lamictal", genericName: "Lamotrigine"),
        MedicationInformationModel(brandName: "NuvaRing", genericName: "Etonogestrel/Ethinyl Estradiol"),
        MedicationInformationModel(brandName: "Guanfacine", genericName: "Guanfacine"),
        MedicationInformationModel(brandName: "Humulin N", genericName: "Insulin NPH"),
        MedicationInformationModel(brandName: "Methotrexate", genericName: "Methotrexate"),
        MedicationInformationModel(brandName: "Buprenorphine", genericName: "Buprenorphine"),
        MedicationInformationModel(brandName: "Requip", genericName: "Ropinirole"),
        MedicationInformationModel(brandName: "Dexilant", genericName: "Dexlansoprazole"),
        MedicationInformationModel(brandName: "Levaquin", genericName: "Levofloxacin"),
        MedicationInformationModel(brandName: "Crestor", genericName: "Rosuvastatin"),
        MedicationInformationModel(brandName: "Onglyza", genericName: "Saxagliptin"),
        MedicationInformationModel(brandName: "Paxil", genericName: "Paroxetine"),
        MedicationInformationModel(brandName: "Plavix", genericName: "Clopidogrel"),
        MedicationInformationModel(brandName: "Depakote", genericName: "Divalproex"),
        MedicationInformationModel(brandName: "Dexedrine", genericName: "Dextroamphetamine"),
        MedicationInformationModel(brandName: "Zanaflex", genericName: "Tizanidine"),
        MedicationInformationModel(brandName: "Asacol", genericName: "Mesalamine"),
        MedicationInformationModel(brandName: "Vytorin", genericName: "Ezetimibe and Simvastatin"),
        MedicationInformationModel(brandName: "Adderall XR", genericName: "Mixed Amphetamine Salts"),
        MedicationInformationModel(brandName: "Bactrim", genericName: "Sulfamethoxazole and Trimethoprim"),
        MedicationInformationModel(brandName: "Cialis", genericName: "Tadalafil"),
        MedicationInformationModel(brandName: "Flomax", genericName: "Tamsulosin"),
        MedicationInformationModel(brandName: "OxyContin", genericName: "Oxycodone"),
        MedicationInformationModel(brandName: "Xanax XR", genericName: "Alprazolam"),
        MedicationInformationModel(brandName: "Xyzal", genericName: "Levocetirizine"),
        MedicationInformationModel(brandName: "Atrovent HFA", genericName: "Ipratropium Bromide"),
        MedicationInformationModel(brandName: "Colcrys", genericName: "Colchicine"),
        MedicationInformationModel(brandName: "Epogen", genericName: "Epoetin Alfa"),
        MedicationInformationModel(brandName: "Humulin R", genericName: "Regular Insulin"),
        MedicationInformationModel(brandName: "Namenda", genericName: "Memantine"),
        MedicationInformationModel(brandName: "Nizoral", genericName: "Ketoconazole"),
        MedicationInformationModel(brandName: "Ortho Tri-Cyclen Lo", genericName: "Norgestimate and Ethinyl Estradiol"),
        MedicationInformationModel(brandName: "Advair Diskus", genericName: "Fluticasone and Salmeterol"),
        MedicationInformationModel(brandName: "Allegra", genericName: "Fexofenadine"),
        MedicationInformationModel(brandName: "Ambien CR", genericName: "Zolpidem extended release"),
        MedicationInformationModel(brandName: "Aricept", genericName: "Donepezil"),
        MedicationInformationModel(brandName: "Aspirin", genericName: "Acetylsalicylic acid"),
        MedicationInformationModel(brandName: "Atarax", genericName: "Hydroxyzine"),
        MedicationInformationModel(brandName: "Ativan", genericName: "Lorazepam"),
        MedicationInformationModel(brandName: "Avapro", genericName: "Irbesartan"),
        MedicationInformationModel(brandName: "Bactrim", genericName: "Sulfamethoxazole and Trimethoprim"),
        MedicationInformationModel(brandName: "Celebrex", genericName: "Celecoxib"),
        MedicationInformationModel(brandName: "Cymbalta", genericName: "Duloxetine"),
        MedicationInformationModel(brandName: "Detrol", genericName: "Tolterodine"),
        MedicationInformationModel(brandName: "Dilantin", genericName: "Phenytoin"),
        MedicationInformationModel(brandName: "Diovan", genericName: "Valsartan"),
        MedicationInformationModel(brandName: "Effexor XR", genericName: "Venlafaxine extended release"),
        MedicationInformationModel(brandName: "Elavil", genericName: "Amitriptyline"),
        MedicationInformationModel(brandName: "Flagyl", genericName: "Metronidazole"),
        MedicationInformationModel(brandName: "Flomax", genericName: "Tamsulosin"),
        MedicationInformationModel(brandName: "Flovent", genericName: "Fluticasone"),
        MedicationInformationModel(brandName: "Fosamax", genericName: "Alendronate"),
        MedicationInformationModel(brandName: "Gleevec", genericName: "Imatinib"),
        MedicationInformationModel(brandName: "Humira", genericName: "Adalimumab"),
        MedicationInformationModel(brandName: "Imitrex", genericName: "Sumatriptan"),
        MedicationInformationModel(brandName: "Lamisil", genericName: "Terbinafine"),
        MedicationInformationModel(brandName: "Levitra", genericName: "Vardenafil"),
        MedicationInformationModel(brandName: "Lexapro", genericName: "Escitalopram"),
        MedicationInformationModel(brandName: "Lipitor", genericName: "Atorvastatin"),
        MedicationInformationModel(brandName: "Lyrica", genericName: "Pregabalin"),
        MedicationInformationModel(brandName: "Methotrexate", genericName: "Methotrexate"),
        MedicationInformationModel(brandName: "Mobic", genericName: "Meloxicam"),
        MedicationInformationModel(brandName: "Nasonex", genericName: "Mometasone"),
        MedicationInformationModel(brandName: "Neurontin", genericName: "Gabapentin"),
        MedicationInformationModel(brandName: "Nexium", genericName: "Esomeprazole"),
        MedicationInformationModel(brandName: "Nitrostat", genericName: "Nitroglycerin")

       

    ].shuffled()
    

    var currentMedicationMatchQuestion = 0
    var currentMedicationMatchLives = 5
    
    
    var currentSeeNSayQuestion = 0

    var userMedicationMatchScore = 0
    var amountOfMedicationMatchQuestionsAttempted: Int = 0 // We created a value that will increase each time the user attempts to answer a question.
    
    
    
    
    
    
   
    
    
    
    mutating func checkSpeechAnswer(userSpoke: String) -> Bool {
        
        if userSpoke == medications[currentSeeNSayQuestion].brandName{
            userMedicationMatchScore += 1
            return true
        } else {
            
            return false 
        }
    }
    
   
    
    
    
    
    
    
    mutating func nextMedicationMatchQuestion() {
        var nextLevelMedications = [MedicationInformationModel]()
        
        // Select 4 random medications
        while nextLevelMedications.count < 4 {
            let randomIndex = Int.random(in: 0..<medications.count)
            let randomMedication = medications[randomIndex]
            
            // Check if the medication has already been selected
            if !nextLevelMedications.contains(where: { areEqual($0, randomMedication) }) {
                nextLevelMedications.append(randomMedication)
            }
        }
        
        // Update current state with new questions
       
        
        // Do something with nextLevelMedications, such as displaying them to the user
    }
    mutating func areEqual(_ med1: MedicationInformationModel, _ med2: MedicationInformationModel) -> Bool {
         userMedicationMatchScore += 1
     
        return med1.brandName == med2.brandName && med1.genericName == med2.genericName
        
    }
   
  
    
}
