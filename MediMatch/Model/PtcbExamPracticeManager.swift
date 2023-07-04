//
//  MedicationQuestionsBrain.swift
//  Panecea(PersonalProject2)
//
//  Created by Devin King on 2/23/22.
//

import Foundation


struct PtcbExamPracticeManager {
    
    
    let examQuestions = [
        PTCBExamModel(question: "What is the mechanism of action for beta-blockers?", answer: ["They block beta receptors", "They stimulate beta receptors", "They block alpha receptors", "They stimulate alpha receptors"], correctAnswer: "They block beta receptors", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for proton pump inhibitors?", answer: ["They block acid production in the stomach", "They promote acid production in the stomach", "They block histamine receptors", "They stimulate histamine receptors"], correctAnswer: "They block acid production in the stomach", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for angiotensin-converting enzyme (ACE) inhibitors?", answer: ["They block the conversion of angiotensin I to angiotensin II", "They promote the conversion of angiotensin I to angiotensin II", "They block angiotensin II receptors", "They stimulate angiotensin II receptors"], correctAnswer: "They block the conversion of angiotensin I to angiotensin II", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for statins?", answer: ["They inhibit the enzyme HMG-CoA reductase", "They stimulate the enzyme HMG-CoA reductase", "They inhibit the enzyme acetylcholinesterase", "They stimulate the enzyme acetylcholinesterase"], correctAnswer: "They inhibit the enzyme HMG-CoA reductase", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for diuretics?", answer: ["They increase urine output", "They decrease urine output", "They block sodium channels", "They stimulate sodium channels"], correctAnswer: "They increase urine output", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for selective serotonin reuptake inhibitors (SSRIs)?", answer: ["They block the reuptake of serotonin in the brain", "They promote the reuptake of serotonin in the brain", "They block the release of serotonin in the brain", "They stimulate the release of serotonin in the brain"], correctAnswer: "They block the reuptake of serotonin in the brain", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for opioids?", answer: ["They bind to opioid receptors in the brain", "They block opioid receptors in the brain", "They stimulate opioid receptors in the brain", "They promote the release of opioids in the brain"], correctAnswer: "They bind to opioid receptors in the brain", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for nonsteroidal anti-inflammatory drugs (NSAIDs)?", answer: ["They inhibit the production of prostaglandins", "They stimulate the production of prostaglandins", "They inhibit the production of histamines", "They stimulate the production of histamines"], correctAnswer: "They inhibit the production of prostaglandins", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the generic name for Plavix?", answer: ["Clopidogrel", "Aspirin", "Warfarin", "Heparin"], correctAnswer: "Clopidogrel", questionCategory: "Pharmacology"),
        
        PTCBExamModel(question: "What is the generic name for Lipitor?", answer: ["Simvastatin", "Atorvastatin", "Rosuvastatin", "Lovastatin"], correctAnswer: "Atorvastatin", questionCategory: "Pharmacology"),
        
        PTCBExamModel(question: "What is the generic name for Prozac?", answer: ["Sertraline", "Fluoxetine", "Citalopram", "Escitalopram"], correctAnswer: "Fluoxetine", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the generic name for Norvasc?", answer: ["Losartan", "Amlodipine", "Lisinopril", "Valsartan"], correctAnswer: "Amlodipine", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the generic name for Metformin?", answer: ["Pioglitazone", "Empagliflozin", "Canagliflozin", "Glucophage"], correctAnswer: "Metformin", questionCategory: "Pharmacology"),
        
        PTCBExamModel(question: "What is the generic name for Zantac?", answer: ["Omeprazole", "Famotidine", "Ranitidine", "Esomeprazole"], correctAnswer: "Ranitidine", questionCategory: "Pharmacology"),
        
        PTCBExamModel(question: "What is the generic name for Zoloft?", answer: ["Sertraline", "Fluoxetine", "Citalopram", "Escitalopram"], correctAnswer: "Sertraline", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the generic name for Vicodin?", answer: ["Morphine", "Codeine", "Oxycodone", "Hydrocodone"], correctAnswer: "Hydrocodone", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the generic name for Benadryl?", answer: ["Loratadine", "Cetirizine", "Fexofenadine", "Diphenhydramine"], correctAnswer: "Diphenhydramine", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the generic name for Adderall?", answer: ["Methylphenidate", "Amphetamine", "Atomoxetine", "Lisdexamfetamine"], correctAnswer: "Amphetamine", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the generic name for Nexium?", answer: ["Omeprazole", "Famotidine", "Ranitidine", "Esomeprazole"], correctAnswer: "Esomeprazole", questionCategory: "Pharmacology"),
        // Question 31
        PTCBExamModel(question: "Which organization is responsible for accrediting pharmacy technician programs?", answer: ["ASHP", "ACPE", "AACP", "NABP"], correctAnswer: "ASHP", questionCategory: "Pharmacology"),
        
        // Question 32
        PTCBExamModel(question: "Which agency is responsible for monitoring drug safety after a medication has been approved?", answer: ["FDA", "DEA", "CDC", "NIH"], correctAnswer: "FDA", questionCategory: "Pharmacology"),
        
        // Question 33
        PTCBExamModel(question: "Which type of medication is used to treat fungal infections?", answer: ["Antifungal", "Antibiotic", "Antiviral", "Antiparasitic"], correctAnswer: "Antifungal", questionCategory: "Pharmacology"),
        
        // Question 34
        PTCBExamModel(question: "Which type of medication is used to treat bacterial infections?", answer: ["Antibiotic", "Antifungal", "Antiviral", "Antiparasitic"], correctAnswer: "Antibiotic", questionCategory: "Pharmacology"),
        
        // Question 35
        PTCBExamModel(question: "Which type of medication is used to treat viral infections?", answer: ["Antiviral", "Antibiotic", "Antifungal", "Antiparasitic"], correctAnswer: "Antiviral", questionCategory: "Pharmacology"),
        
        // Question 36
        PTCBExamModel(question: "Which type of medication is used to treat parasitic infections?", answer: ["Antiparasitic", "Antibiotic", "Antifungal", "Antiviral"], correctAnswer: "Antiparasitic", questionCategory: "Pharmacology"),
        
        // Question 37
        PTCBExamModel(question: "Which type of medication is used to lower blood pressure?", answer: ["Antihypertensive", "Antidiabetic", "Anticoagulant", "Antidepressant"], correctAnswer: "Antihypertensive", questionCategory: "Pharmacology"),
        
        // Question 38
        PTCBExamModel(question: "Which type of medication is used to treat diabetes?", answer: ["Antidiabetic", "Antihypertensive", "Anticoagulant", "Antidepressant"], correctAnswer: "Antidiabetic", questionCategory: "Pharmacology"),
        
        // Question 39
        PTCBExamModel(question: "Which type of medication is used to prevent blood clots?", answer: ["Anticoagulant", "Antihypertensive", "Antidiabetic", "Antidepressant"], correctAnswer: "Anticoagulant", questionCategory: "Pharmacology"),
        
        // Question 40
        PTCBExamModel(question: "Which type of medication is used to treat depression?", answer: ["Antidepressant", "Antihypertensive", "Antidiabetic", "Anticoagulant"], correctAnswer: "Antidepressant", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the mechanism of action for antacids?", answer: ["They neutralize stomach acid", "They increase stomach acid production", "They block histamine receptors in the stomach", "They stimulate histamine receptors in the stomach"], correctAnswer: "They neutralize stomach acid", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for antihistamines?", answer: ["They block histamine receptors", "They stimulate histamine receptors", "They block serotonin receptors", "They stimulate serotonin receptors"], correctAnswer: "They block histamine receptors", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for calcium channel blockers?", answer: ["They block calcium channels in the heart and blood vessels", "They stimulate calcium channels in the heart and blood vessels", "They block sodium channels in the heart and blood vessels", "They stimulate sodium channels in the heart and blood vessels"], correctAnswer: "They block calcium channels in the heart and blood vessels", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for anticoagulants?", answer: ["They prevent blood clotting", "They promote blood clotting", "They decrease blood flow", "They increase blood flow"], correctAnswer: "They prevent blood clotting", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for sympathomimetics?", answer: ["They stimulate the sympathetic nervous system", "They block the sympathetic nervous system", "They stimulate the parasympathetic nervous system", "They block the parasympathetic nervous system"], correctAnswer: "They stimulate the sympathetic nervous system", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for antipsychotics?", answer: ["They block dopamine receptors in the brain", "They stimulate dopamine receptors in the brain", "They block serotonin receptors in the brain", "They stimulate serotonin receptors in the brain"], correctAnswer: "They block dopamine receptors in the brain", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for ACE inhibitors?", answer: ["They block the conversion of angiotensin I to angiotensin II", "They promote the conversion of angiotensin I to angiotensin II", "They block angiotensin II receptors", "They stimulate angiotensin II receptors"], correctAnswer: "They block the conversion of angiotensin I to angiotensin II", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for alpha-adrenergic blockers?", answer: ["They block alpha receptors in the body", "They stimulate alpha receptors in the body", "They block beta receptors in the body", "They stimulate beta receptors in the body"], correctAnswer: "They block alpha receptors in the body", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for benzodiazepines?", answer: ["They enhance the effect of GABA in the brain", "They inhibit the effect of GABA in the brain", "They stimulate the release of dopamine in the brain", "They block the reuptake of serotonin in the brain"], correctAnswer: "They enhance the effect of GABA in the brain", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the mechanism of action for corticosteroids?", answer: ["They suppress inflammation and the immune response", "They enhance inflammation and the immune response", "They block serotonin receptors in the brain", "They stimulate dopamine receptors in the brain"], correctAnswer: "They suppress inflammation and the immune response", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for beta blockers?", answer: ["They block beta receptors in the heart and blood vessels", "They stimulate beta receptors in the heart and blood vessels", "They block calcium channels in the heart and blood vessels", "They stimulate calcium channels in the heart and blood vessels"], correctAnswer: "They block beta receptors in the heart and blood vessels", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for diuretics?", answer: ["They increase urine output and decrease fluid buildup in the body", "They decrease urine output and increase fluid buildup in the body", "They block sodium channels in the kidneys", "They stimulate sodium channels in the kidneys"], correctAnswer: "They increase urine output and decrease fluid buildup in the body", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for antitussives?", answer: ["They suppress coughing", "They stimulate coughing", "They block histamine receptors in the lungs", "They stimulate histamine receptors in the lungs"], correctAnswer: "They suppress coughing", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for bronchodilators?", answer: ["They dilate the airways in the lungs", "They constrict the airways in the lungs", "They block serotonin receptors in the lungs", "They stimulate serotonin receptors in the lungs"], correctAnswer: "They dilate the airways in the lungs", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for anticholinergics?", answer: ["They block the action of acetylcholine in the body", "They stimulate the action of acetylcholine in the body", "They block serotonin receptors in the body", "They stimulate serotonin receptors in the body"], correctAnswer: "They block the action of acetylcholine in the body", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for ACE inhibitors?", answer: ["They block the conversion of angiotensin I to angiotensin II", "They promote the conversion of angiotensin I to angiotensin II", "They block angiotensin II receptors", "They stimulate angiotensin II receptors"], correctAnswer: "They block the conversion of angiotensin I to angiotensin II", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for anticonvulsants?", answer: ["They suppress abnormal electrical activity in the brain", "They stimulate abnormal electrical activity in the brain", "They block dopamine receptors in the brain", "They stimulate dopamine receptors in the brain"], correctAnswer: "They suppress abnormal electrical activity in the brain", questionCategory: "Pharmacology"),
        PTCBExamModel(question: "What is the mechanism of action for corticosteroids?", answer: ["They suppress inflammation and the immune response", "They enhance inflammation and the immune response", "They block serotonin receptors in the brain", "They stimulate dopamine receptors in the brain"], correctAnswer: "They suppress inflammation and the immune response", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for beta blockers?", answer: ["They block beta receptors in the heart and blood vessels", "They stimulate beta receptors in the heart and blood vessels", "They block calcium channels in the heart and blood vessels", "They stimulate calcium channels in the heart and blood vessels"], correctAnswer: "They block beta receptors in the heart and blood vessels", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for diuretics?", answer: ["They increase urine output and decrease fluid buildup in the body", "They decrease urine output and increase fluid buildup in the body", "They block sodium channels in the kidneys", "They stimulate sodium channels in the kidneys"], correctAnswer: "They increase urine output and decrease fluid buildup in the body", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for antitussives?", answer: ["They suppress coughing", "They stimulate coughing", "They block histamine receptors in the lungs", "They stimulate histamine receptors in the lungs"], correctAnswer: "They suppress coughing", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for bronchodilators?", answer: ["They dilate the airways in the lungs", "They constrict the airways in the lungs", "They block serotonin receptors in the lungs", "They stimulate serotonin receptors in the lungs"], correctAnswer: "They dilate the airways in the lungs", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for anticholinergics?", answer: ["They block the action of acetylcholine in the body", "They stimulate the action of acetylcholine in the body", "They block serotonin receptors in the body", "They stimulate serotonin receptors in the body"], correctAnswer: "They block the action of acetylcholine in the body", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for ACE inhibitors?", answer: ["They block the conversion of angiotensin I to angiotensin II", "They promote the conversion of angiotensin I to angiotensin II", "They block angiotensin II receptors", "They stimulate angiotensin II receptors"], correctAnswer: "They block the conversion of angiotensin I to angiotensin II", questionCategory: "Pharmacology"),

        PTCBExamModel(question: "What is the mechanism of action for anticonvulsants?", answer: ["They suppress abnormal electrical activity in the brain", "They stimulate abnormal electrical activity in the brain", "They block dopamine receptors in the brain", "They stimulate dopamine receptors in the brain"], correctAnswer: "They suppress abnormal electrical activity in the brain", questionCategory: "Pharmacology"),

        
        
        
        
        
        
        
        
        
        
        
        PTCBExamModel(question: "What is the purpose of the FDA?", answer: ["To regulate the safety and effectiveness of prescription drugs", "To regulate the distribution and dispensing of controlled substances", "To regulate pharmacy technicians", "To protect the privacy and security of patient health information"], correctAnswer: "To regulate the safety and effectiveness of prescription drugs", questionCategory: "Pharmacy Law"),
        PTCBExamModel(question: "What is the purpose of the CSA?", answer: ["Regulate distribution and dispensing of controlled substances", "Regulate prescription drug advertising", "Regulate safety and effectiveness of prescription drugs", "Protect privacy and security of patient health information"], correctAnswer: "Regulate distribution and dispensing of controlled substances", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the purpose of the Poison Prevention Packaging Act?", answer: ["Regulate distribution and dispensing of controlled substances", "Regulate prescription drug advertising", "Regulate safety and effectiveness of prescription drugs", "Prevent accidental poisoning in children"], correctAnswer: "Prevent accidental poisoning in children", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the purpose of the Kefauver-Harris Amendment?", answer: ["Regulate distribution and dispensing of controlled substances", "Regulate prescription drug advertising", "Regulate safety and effectiveness of prescription drugs", "Require drug manufacturers to prove safety and efficacy of their drugs before approval"], correctAnswer: "Require drug manufacturers to prove safety and efficacy of their drugs before approval", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the purpose of the Orphan Drug Act?", answer: ["Regulate distribution and dispensing of controlled substances", "Regulate prescription drug advertising", "Regulate safety and effectiveness of prescription drugs", "Provide incentives for development of drugs for rare diseases"], correctAnswer: "Provide incentives for development of drugs for rare diseases", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "Which federal law requires all pharmacies to have a DEA registration?", answer: ["FDCA", "DEA", "CSA", "HIPAA"], correctAnswer: "CSA", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the purpose of the Ryan Haight Online Pharmacy Consumer Protection Act?", answer: ["Regulate distribution and dispensing of controlled substances", "Regulate prescription drug advertising", "Regulate safety and effectiveness of prescription drugs", "Regulate online pharmacies and prevent illegal sale of controlled substances online"], correctAnswer: "Regulate online pharmacies and prevent illegal sale of controlled substances online", questionCategory: "Pharmacy Law"),
        PTCBExamModel(question: "Which federal law requires that pharmacists offer to counsel patients on their prescriptions?", answer: ["FDCA", "DEA", "OBRA-90", "HIPAA"], correctAnswer: "OBRA-90", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "Which federal agency regulates the labeling and packaging of prescription drugs?", answer: ["DEA", "FDA", "FTC", "CDC"], correctAnswer: "FDA", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "Which federal agency regulates the compounding of drugs?", answer: ["DEA", "FDA", "FTC", "CDC"], correctAnswer: "FDA", questionCategory: "Pharmacy Law"),
        PTCBExamModel(question: "What federal agency regulates prescription drug advertising?", answer: ["DEA", "FDA", "FTC", "CDC"], correctAnswer: "FDA", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "Who has the authority to prescribe medication in the United States?", answer: ["Pharmacists", "Nurse Practitioners", "Physician Assistants", "All of the Above"], correctAnswer: "All of the Above", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "What is the purpose of HIPAA?", answer: ["To protect the privacy and security of patients' health information", "To regulate the practice of pharmacy", "To enforce drug laws", "To establish standards for drug labeling"], correctAnswer: "To protect the privacy and security of patients' health information", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "Who is responsible for enforcing HIPAA regulations?", answer: ["The FDA", "The DEA", "The Office for Civil Rights", "The National Institutes of Health"], correctAnswer: "The Office for Civil Rights", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "Which schedule of drugs is considered to have the highest potential for abuse and dependence?", answer: ["Schedule I", "Schedule II", "Schedule III", "Schedule IV"], correctAnswer: "Schedule I", questionCategory: "Pharmacy law"),
        
        PTCBExamModel(question: "What is the federal agency responsible for enforcing controlled substance regulations?", answer: ["FDA", "DEA", "CDC", "FTC"], correctAnswer: "DEA", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "What is the purpose of the Poison Prevention Packaging Act?", answer: ["To regulate the practice of pharmacy", "To protect children from accidental poisonings", "To establish standards for drug labeling", "To enforce drug laws"], correctAnswer: "To protect children from accidental poisonings", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "What is the difference between a prescription drug and an over-the-counter drug?", answer: ["Prescription drugs require a prescription from a healthcare provider, while over-the-counter drugs can be purchased without a prescription", "Prescription drugs are more expensive than over-the-counter drugs", "Prescription drugs have fewer side effects than over-the-counter drugs", "Prescription drugs are less effective than over-the-counter drugs"], correctAnswer: "Prescription drugs require a prescription from a healthcare provider, while over-the-counter drugs can be purchased without a prescription", questionCategory: "Pharmacy Law"),
        PTCBExamModel(question: "What is the maximum number of refills allowed on a Schedule II medication?", answer: ["No refills are allowed", "One refill is allowed", "Two refills are allowed", "Three refills are allowed"], correctAnswer: "No refills are allowed", questionCategory: "Pharmacy Law"),
        
        PTCBExamModel(question: "What is the purpose of the Drug Enforcement Administration (DEA) registration?", answer: ["To allow healthcare providers and pharmacies to handle controlled substances.", "To enforce drug pricing regulations", "To establish standards for drug labeling", "To regulate the practice of pharmacy"], correctAnswer: "To allow healthcare providers and pharmacies to handle controlled substances.", questionCategory: "Pharmacy Law"),
        // Question 13
        PTCBExamModel(question: "What is the term for a legal document that allows a patient to appoint someone else to make healthcare decisions on their behalf?", answer: ["Power of attorney", "Prescription", "Living will", "Advance directive"], correctAnswer: "Power of attorney", questionCategory: "Pharmacy Law"),
        
        // Question 14
        PTCBExamModel(question: "Which federal law requires pharmacies to provide drug information to patients?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "OBRA", questionCategory: "Pharmacy Law"),
        
        // Question 15
        PTCBExamModel(question: "What is the term for the process by which a pharmacist reviews a patient's medication regimen to identify potential drug interactions or adverse effects?", answer: ["Prescription filling", "Medication review", "Drug utilization review", "Pharmaceutical care"], correctAnswer: "Medication review", questionCategory: "Pharmacy Law"),
        
        // Question 16
        PTCBExamModel(question: "Which federal law requires pharmacies to provide prescription drug coverage to Medicare beneficiaries?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "HIPAA", questionCategory: "Pharmacy Law"),
        
        // Question 17
        PTCBExamModel(question: "What is the term for the process by which a pharmacist dispenses a medication to a patient?", answer: ["Prescription filling", "Medication review", "Drug utilization review", "Pharmaceutical care"], correctAnswer: "Prescription filling", questionCategory: "Pharmacy Law"),
        
        // Question 18
        PTCBExamModel(question: "Which federal law regulates the practice of pharmacy in the United States?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "FDCA", questionCategory: "Pharmacy Law"),
        
        // Question 19
        PTCBExamModel(question: "What is the term for a law that requires a pharmacist to inform a patient when a generic drug is substituted for a brand-name drug?", answer: ["Pharmacy restriction law", "Drug substitution law", "Dispensing limitation law", "Patient protection law"], correctAnswer: "Drug substitution law", questionCategory: "Pharmacy Law"),
        
        // Question 20
        PTCBExamModel(question: "What is the term for the process by which a pharmacist provides direct care to a patient?", answer: ["Prescription filling", "Medication review", "Drug utilization review", "Pharmaceutical care"], correctAnswer: "Pharmaceutical care", questionCategory: "Pharmacy Law"),
        
        // Question 21
        PTCBExamModel(question: "Which federal law requires pharmacies to provide prescription drug coverage to military veterans?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "CSA", questionCategory: "Pharmacy Law"),
        
        // Question 22
        PTCBExamModel(question: "What is the term for a law that prohibits a pharmacist from disclosing confidential patient information?", answer: ["HIPAA", "FDCA", "CSA", "Privacy law"], correctAnswer: "Privacy law", questionCategory: "Pharmacy Law"),
        
        // Question 23
        PTCBExamModel(question: "Which federal law regulates the disposal of hazardous waste in pharmacies?", answer: ["HIPAA", "FDCA", "OSHA", "OBRA"], correctAnswer: "OSHA", questionCategory: "Pharmacy Law"),
        // Question 24
        PTCBExamModel(question: "What is the term for a pharmacist's obligation to act in the best interests of their patients?", answer: ["Professionalism", "Fiduciary duty", "Standard of care", "Code of ethics"], correctAnswer: "Fiduciary duty", questionCategory: "Pharmacy Law"),
        
        // Question 25
        PTCBExamModel(question: "What is the term for a law that regulates the distribution of controlled substances?", answer: ["HIPAA", "FDCA", "CSA", "Privacy law"], correctAnswer: "CSA", questionCategory: "Pharmacy Law"),
        
        // Question 26
        PTCBExamModel(question: "Which federal law requires pharmacies to maintain the privacy and security of patient health information?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "HIPAA", questionCategory: "Pharmacy Law"),
        
        // Question 27
        PTCBExamModel(question: "What is the term for a law that prohibits pharmacists from engaging in activities that may harm patients?", answer: ["Professionalism", "Fiduciary duty", "Standard of care", "Code of ethics"], correctAnswer: "Standard of care", questionCategory: "Pharmacy Law"),
        
        // Question 28
        PTCBExamModel(question: "Which federal law regulates the labeling of prescription drugs?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "FDCA", questionCategory: "Pharmacy Law"),
        
        // Question 29
        PTCBExamModel(question: "What is the term for a law that requires pharmacies to dispense emergency contraceptives to patients?", answer: ["Contraceptive law", "Emergency law", "Mandated coverage law", "Conscience clause law"], correctAnswer: "Mandated coverage law", questionCategory: "Pharmacy Law"),
        
        // Question 30
        PTCBExamModel(question: "Which federal agency is responsible for regulating the sale and use of prescription drugs?", answer: ["FDA", "DEA", "OSHA", "CMS"], correctAnswer: "FDA", questionCategory: "Pharmacy Law"),
        PTCBExamModel(question: "What is the term for the duty of a pharmacist to keep a patient's health information confidential?", answer: ["HIPAA", "FDCA", "FERPA", "Privacy Act"], correctAnswer: "HIPAA", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the term for a law that requires pharmacies to maintain records of all dispensed prescriptions?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "CSA", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the term for a law that requires pharmacists to counsel patients on the safe and effective use of medications?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "OBRA", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "Which federal agency enforces laws related to controlled substances?", answer: ["FDA", "DEA", "OSHA", "CMS"], correctAnswer: "DEA", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the term for a law that protects whistleblowers who report fraud, waste, and abuse in healthcare?", answer: ["HIPAA", "FDCA", "False Claims Act", "Whistleblower Protection Act"], correctAnswer: "Whistleblower Protection Act", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the term for a law that prohibits price discrimination in the sale of pharmaceuticals?", answer: ["Sherman Act", "Robinson-Patman Act", "Antitrust law", "Consumer protection law"], correctAnswer: "Robinson-Patman Act", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "Which federal law requires pharmacies to report suspicious orders of controlled substances?", answer: ["HIPAA", "FDCA", "CSA", "DEA"], correctAnswer: "CSA", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the term for the legal principle that requires pharmacists to act in the best interests of their patients?", answer: ["Professionalism", "Fiduciary duty", "Standard of care", "Code of ethics"], correctAnswer: "Fiduciary duty", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the term for a law that regulates the sale and distribution of drugs that have a high potential for abuse?", answer: ["HIPAA", "FDCA", "CSA", "OBRA"], correctAnswer: "CSA", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the term for a law that requires pharmacies to offer generic drug substitutions?", answer: ["Prescription Drug Marketing Act", "Hatch-Waxman Act", "Medicare Modernization Act", "Drug Price Competition and Patent Term Restoration Act"], correctAnswer: "Hatch-Waxman Act", questionCategory: "Pharmacy Law"),

        PTCBExamModel(question: "What is the term for a law that requires healthcare providers to protect the privacy and security of patient health information?", answer: ["HIPAA", "FDCA", "FERPA", "Privacy Act"], correctAnswer: "HIPAA", questionCategory: "Pharmacy Law"),

        
        
        
        
        
        
        
        PTCBExamModel(question: "What is the name of the process used to confirm the patient's identity and match it to the medication?", answer: ["Verification", "Reconciliation", "Administration", "Dispensing"], correctAnswer: "Verification", questionCategory: "Patient Safety"),
        PTCBExamModel(question: "What is the term used to describe a medication error that reaches the patient and causes harm?", answer: ["Near miss", "Adverse drug event", "Medication reconciliation", "Pharmacovigilance"], correctAnswer: "Adverse drug event", questionCategory: "Patient Safety"),
        PTCBExamModel(question: "What is the process of comparing a patient's current medications to newly prescribed medications to avoid potential interactions or duplications?", answer: ["Medication reconciliation", "Pharmacovigilance", "Adverse drug event reporting", "Verbal orders"], correctAnswer: "Medication reconciliation", questionCategory: "Patient Safety"),
        PTCBExamModel(question: "What is the name of the agency responsible for ensuring medication safety and efficacy in the United States?", answer: ["FDA", "CDC", "DEA", "NABP"], correctAnswer: "FDA", questionCategory: "Patient Safety"),
        PTCBExamModel(question: "What is the name of the process used to confirm that the correct medication and dose is dispensed to the correct patient?", answer: ["Dispensing", "Administration", "Verification", "Reconciliation"], correctAnswer: "Dispensing", questionCategory: "Patient Safety"),
        PTCBExamModel(question: "What is the name of the process used to confirm that a medication is appropriate for a specific patient based on their medical history and other factors?", answer: ["Medication therapy management", "Pharmacovigilance", "Verbal orders", "Medication reconciliation"], correctAnswer: "Medication therapy management", questionCategory: "Patient Safety"),
        
        PTCBExamModel(question: "What is the term used to describe a medication error that is discovered before it reaches the patient?", answer: ["Near miss", "Adverse drug event", "Medication reconciliation", "Pharmacovigilance"], correctAnswer: "Near miss", questionCategory: "Patient Safety"),
        PTCBExamModel(question: "What is the name of the process used to ensure that medications are stored properly to maintain their stability and effectiveness?", answer: ["Pharmacovigilance", "Quality control", "Medication storage and handling", "Medication reconciliation"], correctAnswer: "Medication storage and handling", questionCategory: "Patient Safety"),
        PTCBExamModel(question: "What is the name of the process used to track adverse drug events and identify potential safety concerns?", answer: ["Pharmacovigilance", "Medication reconciliation", "Verbal orders", "Medication therapy management"], correctAnswer: "Pharmacovigilance", questionCategory: "Patient Safety"),
        PTCBExamModel(question: "What is the name of the process used to verify that a medication order is accurate and complete before it is dispensed?", answer: ["Verification", "Reconciliation", "Administration", "Dispensing"], correctAnswer: "Verification", questionCategory: "Patient Safety"),
        
        
        
        
        
        
        
        
        
        
        
        
        
        PTCBExamModel(question: "What is the term for a medication order that is transmitted electronically from the prescriber to the pharmacy?", answer: ["Written order", "Verbal order", "Fax order", "Electronic order"], correctAnswer: "Electronic order", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following is an example of an error that may occur during order entry?", answer: ["Incorrect patient name", "Dispensing the wrong medication", "Incorrect drug strength", "All of the above"], correctAnswer: "All of the above", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the term for a medication order that is delivered to the pharmacy in writing, either by the patient or the prescriber?", answer: ["Verbal order", "Electronic order", "Fax order", "Written order"], correctAnswer: "Written order", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the term for the process of ensuring that a medication order is complete, accurate, and appropriate for the patient?", answer: ["Order verification", "Order entry", "Dispensing", "Patient counseling"], correctAnswer: "Order verification", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following is an example of a medication that requires special handling during order entry due to its potential for abuse?", answer: ["Acetaminophen", "Hydrocodone", "Aspirin", "Ibuprofen"], correctAnswer: "Hydrocodone", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the term for the process of entering a medication order into a pharmacy's computer system?", answer: ["Order entry", "Order verification", "Dispensing", "Patient counseling"], correctAnswer: "Order entry", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the term for a medication order that is delivered to the pharmacy via fax?", answer: ["Verbal order", "Electronic order", "Fax order", "Written order"], correctAnswer: "Fax order", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following is an example of a medication that requires special handling during order entry due to its potential for adverse drug reactions?", answer: ["Lisinopril", "Warfarin", "Metformin", "Furosemide"], correctAnswer: "Warfarin", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the term for the process of ensuring that a medication order is entered correctly into a pharmacy's computer system?", answer: ["Order verification", "Order entry", "Dispensing", "Patient counseling"], correctAnswer: "Order verification", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following is an example of a medication that requires special handling during order entry due to its potential for medication errors?", answer: ["Levothyroxine", "Albuterol", "Lorazepam", "Omeprazole"], correctAnswer: "Lorazepam", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following is an example of a high-alert medication that requires special attention during order entry?", answer: ["Metformin", "Ibuprofen", "Warfarin", "Lisinopril"], correctAnswer: "Warfarin", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "What is the most important reason to verify a patient's date of birth during order entry?", answer: ["To prevent medication errors", "To comply with HIPAA regulations", "To verify insurance coverage", "To ensure patient satisfaction"], correctAnswer: "To prevent medication errors", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "Which of the following is an example of a medication that requires refrigeration during storage and transportation?", answer: ["Epinephrine", "Nitroglycerin", "Aspirin", "Insulin"], correctAnswer: "Insulin", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "What is the most common reason for a medication to be discontinued during order entry?", answer: ["The medication is no longer needed", "The patient has an adverse reaction", "The medication is not covered by insurance", "The medication is not available"], correctAnswer: "The medication is no longer needed", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "Which of the following is an example of a medication that should not be crushed or broken during administration?", answer: ["Acetaminophen", "Lisinopril", "Diltiazem", "Warfarin"], correctAnswer: "Lisinopril", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "What is the most important reason to confirm a medication's dose during order entry?", answer: ["To prevent medication errors", "To comply with HIPAA regulations", "To verify insurance coverage", "To ensure patient satisfaction"], correctAnswer: "To prevent medication errors", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "Which of the following is an example of a medication that should be taken with food?", answer: ["Ibuprofen", "Lisinopril", "Metformin", "Levothyroxine"], correctAnswer: "Metformin", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "What is the most important reason to check a medication's expiration date during order entry?", answer: ["To prevent medication errors", "To comply with HIPAA regulations", "To verify insurance coverage", "To ensure patient satisfaction"], correctAnswer: "To prevent medication errors", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "Which of the following is an example of a medication that should be taken on an empty stomach?", answer: ["Lisinopril", "Aspirin", "Levothyroxine", "Warfarin"], correctAnswer: "Levothyroxine", questionCategory: "Order Entry"),
        
        PTCBExamModel(question: "What is the most important reason to double-check a medication's strength during order entry?", answer: ["To prevent medication errors", "To comply with HIPAA regulations", "To verify insurance coverage", "To ensure patient satisfaction"], correctAnswer: "To prevent medication errors", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following dosage forms should not be crushed or chewed?", answer: ["Tablets", "Capsules", "Solutions", "Suspensions"], correctAnswer: "Capsules", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What information is required for all medication orders?", answer: ["Patient name and date of birth", "Drug name and dose", "Route of administration", "Prescriber signature and date"], correctAnswer: "Drug name and dose", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the maximum number of refills allowed for a Schedule III controlled substance?", answer: ["0", "1", "2", "5"], correctAnswer: "5", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following abbreviations should never be used in medication orders due to the risk of misinterpretation?", answer: ["q.d.", "q.i.d.", "U", "mg/kg"], correctAnswer: "U", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following medications requires monitoring of therapeutic drug levels?", answer: ["Acetaminophen", "Warfarin", "Furosemide", "Metoprolol"], correctAnswer: "Warfarin", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the proper way to measure a liquid medication?", answer: ["Hold the bottle at eye level and read the meniscus at the lowest point", "Hold the bottle at eye level and read the meniscus at the highest point", "Hold the bottle at an angle and read the meniscus at the lowest point", "Hold the bottle at an angle and read the meniscus at the highest point"], correctAnswer: "Hold the bottle at eye level and read the meniscus at the lowest point", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following is a contraindication for administering a medication transdermally?", answer: ["Impaired liver function", "Impaired kidney function", "Skin irritation or infection", "Allergy to the medication"], correctAnswer: "Skin irritation or infection", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following is an example of a medication that should be taken with food?", answer: ["Lisinopril", "Levothyroxine", "Ibuprofen", "Furosemide"], correctAnswer: "Ibuprofen", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the maximum daily dose of acetaminophen for adults?", answer: ["2000 mg", "3000 mg", "4000 mg", "5000 mg"], correctAnswer: "4000 mg", questionCategory: "Order Entry"),
        PTCBExamModel(question: "Which of the following medications is an example of a beta blocker?", answer: ["Lisinopril", "Levothyroxine", "Metoprolol", "Furosemide"], correctAnswer: "Metoprolol", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code gtt stand for?", answer: ["Drop", "Tablet", "Capsule", "Ml"], correctAnswer: "Drop", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code pc stand for?", answer: ["After meals", "Before meals", "At bedtime", "Twice a day"], correctAnswer: "After meals", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code prn stand for?", answer: ["As needed", "At bedtime", "Every day", "Before meals"], correctAnswer: "As needed", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code qd stand for?", answer: ["Once a day", "Twice a day", "Three times a day", "Four times a day"], correctAnswer: "Once a day", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code qid stand for?", answer: ["Four times a day", "Once a day", "Twice a day", "Three times a day"], correctAnswer: "Four times a day", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code hs stand for?", answer: ["At bedtime", "After meals", "Before meals", "Every day"], correctAnswer: "At bedtime", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code ac stand for?", answer: ["Before meals", "After meals", "At bedtime", "Twice a day"], correctAnswer: "Before meals", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code pc stand for?", answer: ["After meals", "Before meals", "At bedtime", "Twice a day"], correctAnswer: "After meals", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code q8h stand for?", answer: ["Every 8 hours", "Once a day", "Twice a day", "Three times a day"], correctAnswer: "Every 8 hours", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code gtt stand for?", answer: ["Drop", "Tablet", "Capsule", "Ml"], correctAnswer: "Drop", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code po stand for?", answer: ["By mouth", "Intravenous", "Subcutaneous", "Intramuscular"], correctAnswer: "By mouth", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code tid stand for?", answer: ["Three times a day", "Once a day", "Twice a day", "Four times a day"], correctAnswer: "Three times a day", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code q12h stand for?", answer: ["Every 12 hours", "Once a day", "Twice a day", "Three times a day"], correctAnswer: "Every 12 hours", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What does the sig code sl stand for?", answer: ["Sublingual", "By mouth", "Intravenous", "Topical"], correctAnswer: "sl", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for the right eye?", answer: ["OD", "OS", "OU", "OR"], correctAnswer: "OD", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the abbreviation for the left ear?", answer: ["LE", "LEF", "LH", "LEO"], correctAnswer: "LE", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for the right ear?", answer: ["RE", "REF", "RH", "REO"], correctAnswer: "RE", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for both eyes?", answer: ["OU", "BO", "BE", "BOE"], correctAnswer: "OU", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for left eye?", answer: ["OS", "OD", "OU", "OR"], correctAnswer: "OS", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for right eye?", answer: ["OD", "OS", "OU", "OR"], correctAnswer: "OD", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for by mouth?", answer: ["PO", "IV", "IM", "PR"], correctAnswer: "PO", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for intravenous?", answer: ["IV", "PO", "IM", "PR"], correctAnswer: "IV", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for subcutaneous?", answer: ["SC", "PO", "IM", "IV"], correctAnswer: "SC", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for three times a day?", answer: ["TID", "BID", "QID", "PRN"], correctAnswer: "TID", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for twice a day?", answer: ["BID", "TID", "QID", "PRN"], correctAnswer: "BID", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for four times a day?", answer: ["QID", "BID", "TID", "PRN"], correctAnswer: "QID", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for as needed?", answer: ["PRN", "BID", "TID", "QID"], correctAnswer: "PRN", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for with food?", answer: ["AC", "PC", "HS", "WF"], correctAnswer: "WF", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for before meals?", answer: ["AC", "PC", "HS", "BM"], correctAnswer: "AC", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for after meals?", answer: ["PC", "AC", "HS", "AM"], correctAnswer: "PC", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for at bedtime?", answer: ["HS", "AC", "PC", "AB"], correctAnswer: "HS", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for by rectum?", answer: ["PR", "PO", "IV", "IM"], correctAnswer: "PR", questionCategory: "Order Entry" ),
        
        PTCBExamModel(question: "What is the abbreviation for immediately?", answer: ["STAT", "ASAP", "NOW", "IMM"], correctAnswer: "NOW", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for as soon as possible?", answer: ["STAT", "ASAP", "NOW", "IMM"], correctAnswer: "ASAP", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for intramuscular?", answer: ["IM", "PO", "IV", "PR"], correctAnswer: "IM", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for sublingual?", answer: ["SL", "PO", "IV", "IM"], correctAnswer: "SL", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for every day?", answer: ["QD", "BID", "TID", "QID"], correctAnswer: "QD", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for every other day?", answer: ["QOD", "BID", "TID", "QID"], correctAnswer: "QOD", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for with meals?", answer: ["AC", "PC", "HS", "WM"], correctAnswer: "WM", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for without?", answer: ["S", "C", "W", "X"], correctAnswer: "S", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for sublingual under the tongue?", answer: ["SL", "SC", "PO", "IV"], correctAnswer: "SL", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for intradermal?", answer: ["ID", "IM", "IV", "SC"], correctAnswer: "ID", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for before bedtime?", answer: ["HS", "AC", "PC", "BB"], correctAnswer: "BB", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for with meals and at bedtime?", answer: ["AC & HS", "PC & HS", "WF & BB", "WM & BB"], correctAnswer: "AC & HS", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for three times a week?", answer: ["TIW", "BIW", "QW", "QD"], correctAnswer: "TIW", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for twice a week?", answer: ["BIW", "TIW", "QW", "QD"], correctAnswer: "BIW", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for every night?", answer: ["QN", "QD", "QOD", "QW"], correctAnswer: "QN", questionCategory: "Order Entry"),
        PTCBExamModel(question: "What is the abbreviation for after meals?", answer: ["AC", "PC", "HS", "AM"], correctAnswer: "PC", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for before meals?", answer: ["AC", "PC", "HS", "BM"], correctAnswer: "AC", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for every four hours?", answer: ["Q4H", "Q6H", "Q8H", "Q12H"], correctAnswer: "Q4H", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for every six hours?", answer: ["Q6H", "Q4H", "Q8H", "Q12H"], correctAnswer: "Q6H", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for every eight hours?", answer: ["Q8H", "Q4H", "Q6H", "Q12H"], correctAnswer: "Q8H", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for every twelve hours?", answer: ["Q12H", "Q4H", "Q6H", "Q8H"], correctAnswer: "Q12H", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for subcutaneous?", answer: ["SC", "IM", "IV", "ID"], correctAnswer: "SC", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for intravenous?", answer: ["IV", "IM", "PO", "PR"], correctAnswer: "IV", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for as needed?", answer: ["PRN", "AC", "PC", "HS"], correctAnswer: "PRN", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for at bedtime?", answer: ["HS", "AC", "PC", "BB"], correctAnswer: "HS", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for right ear?", answer: ["AD", "AS", "AU", "AR"], correctAnswer: "AR", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for left ear?", answer: ["AS", "AD", "AU", "AL"], correctAnswer: "AL", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for both ears?", answer: ["AU", "AD", "AS", "BO"], correctAnswer: "AU", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for twice a day?", answer: ["BID", "TID", "QID", "QD"], correctAnswer: "BID", questionCategory: "Order Entry"),

        PTCBExamModel(question: "What is the abbreviation for three times a day?", answer: ["TID", "BID", "QID", "QD"], correctAnswer: "TID", questionCategory: "Order Entry")



    
        
        
    ].shuffled()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    var currentQuestion = 0
    
    var medicationQuizHighScore = 0
    
    var  userPTCBPracticeExamScore = 0
    var userAmountOfLive = 3
    
    
    
    
    func getCurrentQuestionText() -> String {
        
        return examQuestions[currentQuestion].question
    }
    
    
    func getPTCBExamAnswers() -> [String] {
        return examQuestions[currentQuestion].answer
    }
    
    func getCurrentQuestionCategory () -> String {
        return examQuestions[currentQuestion].questionCategory
    }
    
    func getUserPTCBPracticeExamScore() -> Int {
        
        
        return userPTCBPracticeExamScore
        
    }
    func getUserPTCBAmountOfLives() -> Int {
        return userAmountOfLive
    }
    
    mutating func nextQuestion() {
        if currentQuestion  < examQuestions.count {
            
            currentQuestion += 1
            
        } else {
            currentQuestion = 0
        }
        
        
    }
    
    
    mutating func checkAnswer(userChoice: String) -> Bool {
        
        if userChoice == examQuestions[currentQuestion].correctAnswer{
            userPTCBPracticeExamScore += 1
            
            
            return true
        } else {
            
            userPTCBPracticeExamScore += 0
            userAmountOfLive -= 1
            return false
        }
        
        func checkForPTCBExamGameOver () -> Int {
            
            
            if userAmountOfLive == 0 {
                
            }
            return userAmountOfLive
        }
        
        
        
        
        
        
        
    }
    
    func getCorrectAnswer() -> String {
        return examQuestions[currentQuestion].correctAnswer
    }
    
    
    
    
}
