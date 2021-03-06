
###################################################################################
##
## Variables in common use.

seasons <- c("20022003", "20032004", "20052006", "20062007", "20072008", "20082009",
             "20092010", "20102011", "20112012", "20122013", "20132014", "20142015",
             "20152016")

session.choices <- c("All", "Regular", "Playoffs")

homeaway.choices <- c("All", "Home", "Away")
homeaway.list <- list(0:1, 1, 0)

#man.choices <- c("All", "Even Strength 5v5", "Power Play", "Shorthanded", "4v4",
#                 "Opposing Goalie Pulled", "Team Goalie Pulled", "Leftovers")
#man.list <- list(0:6, 1, 2, 3, 4, 5, 6, 0)

split.man.choices <- c("Composite", "All", "Even Strength 5v5", "Power Play", "Shorthanded", "4v4",
                       "Opposing Goalie Pulled", "Team Goalie Pulled", "Leftovers", "3v3")
split.man.list <- list(8, 7, 1, 2, 3, 4, 5, 6, 0, 9)


## new options: 0-6 are trailing by 3 up to leading by 3.
split.score.choices <- c("All, Score Adjusted",
                         "All",

                         "Trailing By 3+",
                         "Trailing By 2",
                         "Trailing By 1",
                         "Tied",
                         "Leading By 1",
                         "Leading By 2",
                         "Leading By 3+",

                         "Within 1",
                         "Close",
                         "Leading",
                         "Leading By 2+",
                         "Trailing By 2+",
                         "Trailing")
split.score.list <- list (8,7, 0,1,2,3,4,5,6,
                          9,10,11,12,13,14)


#score.choices <- c("Trailing By 3+",
#                   "Trailing By 2",
#                   "Trailing By 1",
#                   "Tied",
#                   "Leading By 1",
#                   "Leading By 2",
#                   "Leading By 3+",
#                   "All",
##"All, Score Adjusted",
#                   "Within 1",
##"Close",
#                   "Leading",
#                   "Leading By 2+",
#                   "Trailing By 2+",
#                   "Trailing")
#score.list <- list (0,1,2,3,4,5,6,
#                    0:6,
                    #0:6,
#                    2:4,
                    ##2:4,
#                    4:6, 5:6, 0:1, 0:2
#                    )

position.choices <- c("All", "Center", "Left Wing", "Right Wing", "All Forwards", "Defence")
ctr <- c("C","CR","RC","CL","LC","CD","DC"); lw <- c("L","LC","CL","LR","RL","LD","DL")
rw <- c("R","RC","CR","LR","RL","RD","DR"); def <- c("D","DR","DL","LD","RD","CD","DC")
fwd <- c("F","N")
pos.list <- list(c(ctr, lw, rw, def, fwd), ctr, lw, rw, c(ctr, lw, rw, fwd), def)

shotatt.choices <- c("Corsi","Fenwick","Shots","Goals","All","None")


####################################################################################
## Names of variables to be replaced with full names.

team.variables <- matrix(c(
    "Team",     "Team",                                  "char",    "Team",     "Team",      
    "Opponent", "Opposing Team",                         "char",    "Opponent", "Opposing Team",                                              
    "Gm",       "Games",                                 "char",    "Gm",       "Games",                                 
    "Date",     "Date",                                  "char",    "Date",     "Date",  
    
    "ZSO",      "Offensive Zone Starts",                 "count",   "ZSO",      "Offensive Zone Starts",
    "ZSN",      "Neutral Zone Starts",                   "count",   "ZSN",     "Neutral Zone Starts",                   
    "ZSD",      "Defensive Zone Starts",                 "count",   "ZSD",     "Defensive Zone Starts",
    "ZSO%",     "Fraction of Off vs Def Zone Starts",    "frac",    "ZSO%",    "Fraction of Off vs Def Zone Starts",    
    "PDO",      "PDO (On-Ice SvPct plus On-Ice ShPct)",  "100",     "SPSv%",   "On-Ice SvPct plus On-Ice ShPct",  
    
    "CF",       "Corsi For Total",                       "count",   "SATF",   "On-Ice All Shot Attempts, For",
    "CA",       "Corsi Against Total",                   "count",   "SATA",   "On-Ice All Shot Attempts, Against",
    "C+/-",     "On-Ice Corsi Differential",             "diff",    "SAT+/-", "On-Ice All Shot Attempts, Differential",
    "CF%",      "Corsi For Percentage of Total",         "frac",    "SAT%",   "On-Ice All Shot Attempts, Share of Total",
    "CF60",     "Corsi For, Per 60 Minutes",                      "count", "SATF60", "On-Ice All Shot Attempts, For, Per 60",
    "CA60",     "Corsi Against, Per 60 Minutes",                  "count", "SATA60", "On-Ice All Shot Attempts, Against, Per 60",
    "CP60",     "Corsi Events, For And Against, Per 60 Minutes",  "count", "SATP60", "On-Ice All Shot Attempts, For And Against, Per 60",
    
    "FF",       "Fenwick For Total",                     "count",   "USATF",   "On-Ice Unblocked Shot Attempts, For",
    "FA",       "Fenwick Against Total",                 "count",   "USATA",   "On-Ice Unblocked Shot Attempts, Against",
    "F+/-",     "On-Ice Fenwick Differential",           "diff",    "USAT+/-", "On-Ice Unblocked Shot Attempts, Differential",
    "FF%",      "Fenwick For Percentage of Total",       "frac",    "USAT%",   "On-Ice Unblocked Shot Attempts, Share of Total",
    "FF60",     "Fenwick For, Per 60 Minutes",                      "count",    "USATF60",   "On-Ice Unblocked Shot Attempts, For, Per 60",
    "FA60",     "Fenwick Against, Per 60 Minutes",                  "count",    "USATA60",   "On-Ice Unblocked Shot Attempts, Against, Per 60",
    "FP60",     "Fenwick Events, For And Against, Per 60 Minutes",  "count",    "USATP60",   "On-Ice Unblocked Shot Attempts, For And Against, Per 60",

    "SF",       "On-Ice Shots-On-Goal For Total",                "count",   "SF",       "On-Ice Shots-On-Goal For Total",                
    "SA",       "On-Ice Shots-On-Goal Against Total",            "count",   "SA",       "On-Ice Shots-On-Goal Against Total",
    "S+/-",     "On-Ice Shots-On-Goal Differential",              "diff",   "S+/-",     "On-Ice Shots-On-Goal Differential",
    "SF%",      "On-Ice Shots-On-Goal For Share of Total",  "frac",         "SF%",   "On-Ice Shots-On-Goal Share of Total",
    "SF60",     "On-Ice Shots-On-Goal For, Per 60 Minutes",                 "count",    "SF60",   "Shots Wired At Goalie, For, Per 60",
    "SA60",     "On-Ice Shots-On-Goal Against, Per 60 Minutes",             "count",    "SA60",   "Shots Wired At Goalie, Against, Per 60",

    
    "GF",       "On-Ice Goals For Total",                "count",   "GF",       "On-Ice Goals For Total",                
    "GA",       "On-Ice Goals Against Total",            "count",   "GA",       "On-Ice Goals Against Total",            
    "G+/-",     "On-Ice Goal Differential",              "diff",    "G+/-",     "On-Ice Goal Differential",   
    "GF%",      "On-Ice Goals For Percentage of Total",  "frac",    "GF%",      "On-Ice Goals For Percentage of Total",
    "GF60",     "On-Ice Goals For, Per 60 Minutes",                 "count",    "GF60",     "On-Ice Goals For, Per 60 Minutes",   
    "GA60",     "On-Ice Goals Against, Per 60 Minutes",             "count",    "GA60",     "On-Ice Goals Against, Per 60 Minutes",    

    
    "SCF",      "On-Ice Scoring Chances For Total",      "count",                    "SCF",      "On-Ice Scoring Chances For Total",      
    "SCA",      "On-Ice Scoring Chances Against Total",  "count",                    "SCA",      "On-Ice Scoring Chances Against Total",  
    "SC+/-",    "On-Ice Scoring Chances Differential",   "diff",                     "SC+/-",    "On-Ice Scoring Chances Differential",   
    "SCF%",     "On-Ice Scoring Chances For Percentage of Total",  "count",           "SCF%",     "On-Ice Scoring Chances For Percentage of Total",     
    "SCF60",    "On-Ice Scoring Chances For, Per 60 Minutes",     "count",           "SCF60",    "On-Ice Scoring Chances For, Per 60 Minutes",     
    "SCA60",    "On-Ice Scoring Chances Against, Per 60 Minutes", "count",           "SCA60",    "On-Ice Scoring Chances Against, Per 60 Minutes", 
    "SCP60",    "On-Ice Scoring Chances, For And Against, Per 60 Minutes",  "count", "SCP60",    "On-Ice Scoring Chances, For And Against, Per 60 Minutes",  
    
    "HSCF",      "On-Ice High-Danger Scoring Chances For Total",      "count",                    "HSCF",      "On-Ice High-Danger Scoring Chances For Total",      
    "HSCA",      "On-Ice High-Danger Scoring Chances Against Total",  "count",                    "HSCA",      "On-Ice High-Danger Scoring Chances Against Total",  
    "HSC+/-",    "On-Ice High-Danger Scoring Chances Differential",   "diff",                     "HSC+/-",    "On-Ice High-Danger Scoring Chances Differential",   
    "HSCF%",     "On-Ice High-Danger Scoring Chances For Percentage of Total",  "count",          "HSCF%",     "On-Ice High-Danger Scoring Chances For Percentage of Total",     
    "HSCF60",    "On-Ice High-Danger Scoring Chances For, Per 60 Minutes",     "count",           "HSCF60",    "On-Ice High-Danger Scoring Chances For, Per 60 Minutes",     
    "HSCA60",    "On-Ice High-Danger Scoring Chances Against, Per 60 Minutes", "count",           "HSCA60",    "On-Ice High-Danger Scoring Chances Against, Per 60 Minutes", 
    "HSCP60",    "On-Ice High-Danger Scoring Chances, For And Against, Per 60 Minutes",  "count", "HSCP60",    "On-Ice High-Danger Scoring Chances, For And Against, Per 60 Minutes",  
    

    "FO_W",     "Faceoffs Won",                "count",   "FO_W",     "Faceoffs Won",                
    "FO_L",     "Faceoffs Lost",               "count",   "FO_L",     "Faceoffs Lost",               
    "FO%",      "Faceoff Winning Percentage",  "frac",    "FO%",      "Faceoff Winning Percentage",  
    "TOI",      "Time On Ice",                 "count",   "TOI",      "Time On Ice",        

    "PN",       "Penalties",                   "count",    "PN",       "Penalties",    
    "PN-",      "Penalties Drawn",             "count",    "PN-",      "Penalties Drawn",
    "PenD",     "Penalty Differential",        "count",    "PenD",     "Penalty Differential",
    "PenD60",   "Penalty Differential per 60", "count",    "PenD60",   "Penalty Differential per 60",    
    
    "HIT",      "Hits",                        "count",    "HIT",      "Hits",          
    "HIT-",     "Hits Taken",                  "count",    "HIT-",     "Hits Taken",       
    "MSF",      "Missed Shots For",            "count",   "MSF",      "Missed Shots For",            
    "MSA",      "Missed Shots Against",        "count",   "MSA",      "Missed Shots Against",        
    "BSF",      "Blocked Shots",               "count",   "BSF",      "Blocked Shots",               
    "BSA",      "Shot Attempts Blocked",       "count",   "BSA",      "Shot Attempts Blocked",      
    
    "OCOn%",    "On-Ice Shot Attempts On Goal",           "count", "OCOn%",    "On-Ice Shot Attempts On Goal",           
    "OFOn%",    "On-Ice Unblocked Shot Attempts On Goal", "count", "OFOn%",    "On-Ice Unblocked Shot Attempts On Goal", 
    "OSh%",     "On-Ice Shooting Percentage",             "count", "OSh%",     "On-Ice Shooting Percentage",             
    "OFenSh%",  "On-Ice Unblocked Shooting Percentage",   "count", "OFenSh%",  "On-Ice Unblocked Shooting Percentage",   

    "OCAOn%",    "On-Ice Shot Attempts On Goal, Against",           "count", "OCAOn%",    "On-Ice Shot Attempts On Goal, Against",           
    "OFAOn%",    "On-Ice Unblocked Shot Attempts On Goal, Against", "count", "OFAOn%",    "On-Ice Unblocked Shot Attempts On Goal, Against", 
    "OSv%",     "On-Ice Save Percentage",                           "count", "OSv%",     "On-Ice Save Percentage, Against",
    "OFenSv%",  "On-Ice Unblocked Save Percentage",                 "count", "OFenSv%",  "On-Ice Unblocked Save Percentage, Against"   

    ), byrow=TRUE, ncol=5)


player.variables <- matrix(c(
    
    "Name",     "Player Name",                           "char",    "Name",     "Player Name",   
    "Team",     "Team",                                  "char",    "Team",     "Team",     
    "Opponent", "Opposing Team",                         "char",   "Opponent", "Opposing Team",  
    "Gm",       "Games",                                 "char",    "Gm",        "Games",           
    "Date",     "Date",                                  "char",    "Date",     "Date",  
    "pos",      "Position",                              "char",    "pos",      "Position",

    
    "CF",       "Corsi For Total",                       "count",   "SATF",   "On-Ice All Shot Attempts, For",
    "CA",       "Corsi Against Total",                   "count",   "SATA",   "On-Ice All Shot Attempts, Against",
    "C+/-",     "On-Ice Corsi Differential",             "diff",    "SAT+/-",   "On-Ice All Shot Attempts, Differential",
    "CF%",      "Corsi For Percentage of Total",         "frac",    "SATF%",   "On-Ice All Shot Attempts, Share",
    "CF60",     "Corsi For, Per 60 Minutes",                      "count", "SATF60",   "On-Ice All Shot Attempts, For",
    "CA60",     "Corsi Against, Per 60 Minutes",                  "count", "SATA60",   "On-Ice All Shot Attempts, For",
    "CP60",     "Corsi Events, For And Against, Per 60 Minutes",  "count", "SATP60",   "On-Ice All Shot Attempts, For",
    "CF%Rel",   "Relative Corsi For Percentage of Total",   "diff",     "SATF%Rel",   "On-Ice All Shot Attempts, For",
    "CF%off",   "Off-Ice Corsi For Percentage of Total",    "frac",     "SATF%off",   "On-Ice All Shot Attempts, For",
    

    "FF",       "Fenwick For Total",                     "count",   "USATF",   "On-Ice Unblocked Shot Attempts, For",
    "FA",       "Fenwick Against Total",                 "count",   "USATA",   "On-Ice Unblocked Shot Attempts, Against",
    "F+/-",     "On-Ice Fenwick Differential",           "diff",    "USAT+/-", "On-Ice Unblocked Shot Attempts, Differential",
    "FF%",      "Fenwick For Percentage of Total",       "frac",    "USATF%",   "On-Ice Unblocked Shot Attempts, Share",
    "FF60",     "Fenwick For, Per 60 Minutes",                      "count",    "USATF60",   "On-Ice Unblocked Shot Attempts, For, Per 60",
    "FA60",     "Fenwick Against, Per 60 Minutes",                  "count",    "USATA60",   "On-Ice Unblocked Shot Attempts, Against, Per 60",
    "FP60",     "Fenwick Events, For And Against, Per 60 Minutes",  "count",    "USATP60",   "On-Ice Unblocked Shot Attempts, For And Against, Per 60",
    "FF%Rel",   "Relative Fenwick For Percentage of Total",         "diff",     "USATF%Rel",  "On-Ice Unblocked Shot Attempts, Share, Relative",
    "FF%off",   "Off-Ice Fenwick For Percentage of Total",          "frac",     "USATF%Off",  "On-Ice Unblocked Shot Attempts, Share, Off-Ice", 
    
    
    "SF",       "On-Ice Shots For Total",                "count",   "SF",       "On-Ice Shots For Total",                
    "SA",       "On-Ice Shots Against Total",            "count",   "SA",       "On-Ice Shots Against Total",            
    "S+/-",     "On-Ice Shot Differential",              "diff",    "S+/-",     "On-Ice Shot Differential",
    "SF%",      "On-Ice Shots For Percentage of Total",  "frac",    "SF%",      "On-Ice Shots For Percentage of Total",
    "SF60",     "On-Ice Shots For, Per 60 Minutes",                 "count",    "SF60",     "On-Ice Shots For, Per 60 Minutes",                 
    "SA60",     "On-Ice Shots Against, Per 60 Minutes",             "count",    "SA60",     "On-Ice Shots Against, Per 60 Minutes",             
    "SF%Rel",   "Relative Shots For Percentage of Total",           "diff",     "SF%Rel",   "Relative Shots For Percentage of Total",           
    "SF%off",   "Off-Ice Shots For Percentage of Total",            "frac",     "SF%off",   "Off-Ice Shots For Percentage of Total",            

    
    "GF",       "On-Ice Goals For Total",                "count",  "GF",       "On-Ice Goals For Total",               
    "GA",       "On-Ice Goals Against Total",            "count",   "GA",       "On-Ice Goals Against Total",    
    "G+/-",     "On-Ice Goal Differential",              "diff",     "G+/-",     "On-Ice Goal Differential",         
    "GF%",      "On-Ice Goals For Percentage of Total",  "frac",     "GF%",      "On-Ice Goals For Percentage of Total", 
    "GF60",     "On-Ice Goals For, Per 60 Minutes",                 "count",    "GF60",     "On-Ice Goals For, Per 60 Minutes",   
    "GA60",     "On-Ice Goals Against, Per 60 Minutes",             "count",    "GA60",     "On-Ice Goals Against, Per 60 Minutes",  
    "GF%Rel",   "Relative Goals For Percentage of Total",           "diff",     "GF%Rel",   "Relative Goals For Percentage of Total",   
    "GF%off",   "Off-Ice Goals For Percentage of Total",            "frac",     "GF%off",   "Off-Ice Goals For Percentage of Total",     


    "SCF",      "On-Ice Scoring Chances For Total",      "count",                    "SCF",      "On-Ice Scoring Chances For Total",      
    "SCA",      "On-Ice Scoring Chances Against Total",  "count",                    "SCA",      "On-Ice Scoring Chances Against Total",  
    "SC+/-",    "On-Ice Scoring Chances Differential",   "diff",                     "SC+/-",    "On-Ice Scoring Chances Differential",   
    "SCF%",     "On-Ice Scoring Chances For Percentage of Total", "count",           "SCF%",     "On-Ice Scoring Chances For Percentage of Total",     
    "SCF60",    "On-Ice Scoring Chances For, Per 60 Minutes",     "count",           "SCF60",    "On-Ice Scoring Chances For, Per 60 Minutes",     
    "SCA60",    "On-Ice Scoring Chances Against, Per 60 Minutes", "count",           "SCA60",    "On-Ice Scoring Chances Against, Per 60 Minutes", 
    "SCP60",    "On-Ice Scoring Chances, For And Against, Per 60 Minutes",  "count", "SCP60",    "On-Ice Scoring Chances, For And Against, Per 60 Minutes",  
    "SCF%off",  "Off-Ice Scoring Chances For Percentage of Total",  "frac",          "SCF%off",     "Off-Ice Scoring Chances For Percentage of Total",  
    "SCF%Rel",  "Relative Scoring Chances For Percentage of Total", "frac",          "SCF%Rel",     "Relative Scoring Chances For Percentage of Total",  
    

    "HSCF",      "On-Ice High-Danger Scoring Chances For Total",      "count",                    "HSCF",      "On-Ice High-Danger Scoring Chances For Total",      
    "HSCA",      "On-Ice High-Danger Scoring Chances Against Total",  "count",                    "HSCA",      "On-Ice High-Danger Scoring Chances Against Total",  
    "HSC+/-",    "On-Ice High-Danger Scoring Chances Differential",   "diff",                     "HSC+/-",    "On-Ice High-Danger Scoring Chances Differential",   
    "HSCF%",     "On-Ice High-Danger Scoring Chances For Percentage of Total", "count",           "HSCF%",     "On-Ice High-Danger Scoring Chances For Percentage of Total",     
    "HSCF60",    "On-Ice High-Danger Scoring Chances For, Per 60 Minutes",     "count",           "HSCF60",    "On-Ice High-Danger Scoring Chances For, Per 60 Minutes",     
    "HSCA60",    "On-Ice High-Danger Scoring Chances Against, Per 60 Minutes", "count",           "HSCA60",    "On-Ice High-Danger Scoring Chances Against, Per 60 Minutes", 
    "HSCP60",    "On-Ice High-Danger Scoring Chances, For And Against, Per 60 Minutes",  "count", "HSCP60",    "On-Ice High-Danger Scoring Chances, For And Against, Per 60 Minutes",  
    "HSCF%off",  "Off-Ice High-Danger Scoring Chances For Percentage of Total",  "frac",          "HSCF%off",     "Off-Ice High-Danger Scoring Chances For Percentage of Total",  
    "HSCF%Rel",  "Relative High-Danger Scoring Chances For Percentage of Total", "frac",          "HSCF%Rel",     "Relative High-Danger Scoring Chances For Percentage of Total",  
    

    
    "ZSO",      "Offensive Zone Starts",                 "count",   "ZSO",    "Offensive Zone Starts", 
    "ZSN",      "Neutral Zone Starts",                   "count",   "ZSN",    "Neutral Zone Starts",                   
    "ZSD",      "Defensive Zone Starts",                 "count",   "ZSD",      "Defensive Zone Starts",
    "ZSOoff",   "Offensive Zone Starts (off-ice)",                 "count",   "ZSOoff",     "Offensive Zone Starts (off-ice)",         
    "ZSNoff",   "Neutral Zone Starts (off-ice)",                   "count",   "ZSNoff",      "Neutral Zone Starts (off-ice)",     
    "ZSDoff",   "Defensive Zone Starts (off-ice)",                 "count",   "ZSDoff",    "Defensive Zone Starts (off-ice)",       
    "ZSO%",     "Fraction of Off vs Def Zone Starts",    "frac",    "ZSO%",      "Fraction of Off vs Def Zone Starts",  
    "ZSO%Rel",  "Fraction of Off vs Def Zone Starts, Relative",    "frac",    "ZSO%Rel",  "Fraction of Off vs Def Zone Starts, Relative", 
    "PDO",      "PDO (On-Ice SvPct plus On-Ice ShPct)",  "100",     "SPSv%",  "On-Ice SvPct plus On-Ice ShPct (PDO)",
    

    
    "BK",       "Shot Attempts By Player, Blocked",                 "count",    "BK",       "Shot Attempts By Player, Blocked",                 
    "AB",       "Shot Attempts Blocked By Player",                  "count",    "AB",       "Shot Attempts Blocked By Player",
    "MS",       "Missed Shots",                                     "count",    "MS",       "Missed Shots",     
    "SH",       "Saved Shots",                                      "count",    "SH",       "Saved Shots",           
    "G",        "Goals Scored",                                     "count",    "G",        "Goals Scored",         
    "A",        "Assists",                                          "count",    "A",        "Assists",                 
    "A1",       "First Assists",                                    "count",    "A1",       "First Assists",         
    "A2",       "Second Assists",                                   "count",    "A2",       "Second Assists",      
    "P",        "Total Points",                                     "count",    "P",        "Total Points",
    
    "iHSC",     "Individual High-Danger Scoring Chances",           "count",    "iHSC",      "Individual High-Danger Scoring Chances",    
    "iSC",      "Individual Scoring Chances",                       "count",    "iSC",      "Individual Scoring Chances",    
    "iSF",      "Individual Shots On Goal",                         "count",    "iSF",      "Individual Shots On Goal",   
    "iFF",      "Individual Unblocked Shot Attempts",               "count",    "iUSAT",      "Individual Unblocked Shot Attempts", 
    "iCF",      "Individual Shot Attempts",                         "count",    "iSAT",      "Individual Shot Attempts", 
    
    "FO_W",     "Faceoffs Won",                           "count",  "FO_W",     "Faceoffs Won",          
    "FO_L",     "Faceoffs Lost",                          "count", "FO_L",     "Faceoffs Lost",       
    "FO%",      "Faceoff Winning Percentage",             "frac",   "FO%",      "Faceoff Winning Percentage",   
    "FO%^",     "Faceoff Winning Percentage, Stabilized", "frac",   "FO%^",     "Faceoff Winning Percentage, Stabilized",


    "PN",       "Penalties",                   "count",   "PN",   "Penalties",
    "PN-",      "Penalties Drawn",             "count",   "PN-",   "Penalties Drawn",   
    "PenD",     "Penalty Differential",        "count",    "PenD",     "Penalty Differential",
    "PenD60",   "Penalty Differential per 60", "count",    "PenD60",   "Penalty Differential per 60",    

    "HIT",      "Hits",                        "count",   "HIT",  "Hits",        
    "HIT-",     "Hits Taken",                  "count",   "HIT-",   "Hits Taken",     
    "TK",       "Takeaways",                   "count",   "TK",     "Takeaways",     
    "GV",       "Giveaways",                   "count",   "GV",   "Giveaways",               
    
    "tCor%",    "Corsi % Of Teammates",        "count",   "t-SATF%", "Teammate On-Ice All Shot Attempts, Share",
    "cCor%",    "Corsi % Of Competition",      "count",   "c-SATF%", "Competition On-Ice All Shot Attempts, Share",
    "tCF60",    "Corsi For Per 60 Of Teammates",        "count",   "t-SATF60", "Teammate On-Ice All Shot Attempts, Share",
    "cCF60",    "Corsi For Per 60 Of Competition",      "count",   "c-SATF60", "Competition On-Ice All Shot Attempts, Share",
    "tCA60",    "Corsi Against Per 60 Of Teammates",        "count",   "t-SATA60", "Teammate On-Ice All Shot Attempts, Share",
    "cCA60",    "Corsi Against Per 60 Of Competition",      "count",   "c-SATA60", "Competition On-Ice All Shot Attempts, Share",
    "tTOI60",   "TOI/60 Of Teammates",         "count",   "tTOI60",   "TOI/60 Of Teammates",         
    "cTOI60",   "TOI/60 Of Competition",       "count",   "cTOI60",   "TOI/60 Of Competition",       

    
    "G60",      "Goals Scored Per 60 Minutes",                      "count",  "G60",      "Goals Scored Per 60 Minutes",                      
    "A60",      "Assists Recorded Per 60 Minutes",                  "count",  "A60",      "Assists Recorded Per 60 Minutes",                  
    "P60",      "Points Recorded Per 60 Minutes",                   "count",  "P60",      "Points Recorded Per 60 Minutes",                   
    "TOI",      "Time On Ice",                                      "count",  "TOI",      "Time On Ice",                                      
    "TOIoff",   "Time Off Ice",                                     "count",  "TOIoff",  "Time Off Ice",                                     
    "TOI%",    "Player's Time On Ice as a Fraction of Total Situation Time", "count",  "TOI%",    "Player's Time On Ice as a Fraction of Total Situation Time", 
    "TOI/Gm",   "Time On Ice Per Game",                             "count",  "TOI/Gm",   "Time On Ice Per Game",

    "OCOn%",    "On-Ice Shot Attempts On Goal",           "count", "OCOn%",    "On-Ice Shot Attempts On Goal",           
    "OFOn%",    "On-Ice Unblocked Shot Attempts On Goal", "count", "OFOn%",    "On-Ice Unblocked Shot Attempts On Goal", 
    "OSh%",     "On-Ice Shooting Percentage",             "count", "OSh%",     "On-Ice Shooting Percentage",             
    "OFenSh%",  "On-Ice Unblocked Shooting Percentage",   "count", "OFenSh%",  "On-Ice Unblocked Shooting Percentage",   


    "OCAOn%",    "On-Ice Shot Attempts On Goal, Against",           "count", "OCAOn%",    "On-Ice Shot Attempts On Goal, Against",           
    "OFAOn%",    "On-Ice Unblocked Shot Attempts On Goal, Against", "count", "OFAOn%",    "On-Ice Unblocked Shot Attempts On Goal, Against", 
    "OSv%",     "On-Ice Save Percentage",                           "count", "OSv%",     "On-Ice Save Percentage",
    "OFenSv%",  "On-Ice Unblocked Save Percentage",                 "count", "OFenSv%",  "On-Ice Unblocked Save Percentage, Against",   

    
    "PSh%",     "Personal Shooting Percentage",           "count",   "PSh%",     "Personal Shooting Percentage", 
    "PFenSh%",  "Personal Unblocked Shooting Percentage", "count",   "PFenSh%",  "Personal Unblocked Shooting Percentage",           
    "Salary",   "Total Compensation (million $)",                    "count",    "Salary",   "Total Compensation (million $)" 

    ), byrow=TRUE, ncol=5)


goalie.variables <- matrix(c(
    "Date",     "Date",                          "char",   "Date",     "Date",  
    "AdSv%",    "Adjusted Save Percentage",      "count",  "AdSv%",    "Adjusted Save Percentage",      
    "Sv%",      "Unadjusted Save Percentage",    "count",  "Sv%",      "Unadjusted Save Percentage",    
    "Sv%L",     "Low-Danger Save Percentage",    "count",  "Sv%L",     "Low-Danger Save Percentage", 
    "Sv%M",     "Medium-Danger Save Percentage", "count",  "Sv%M",     "Medium-Danger Save Percentage",
    "Sv%H",     "High-Danger Save Percentage",   "count",  "Sv%H",     "High-Danger Save Percentage", 
    "G",        "All Goals",                     "count",  "G",        "All Goals",      
    "S",        "All Saves",                     "count",  "S",        "All Saves",      
    "Sh",       "All Shots",                     "count",  "Sh",       "All Shots",   
    
    "GU",      "Unknown-Danger Goals",              "count",  "GU",      "Unknown-Danger Goals",      
    "SU",      "Unknown-Danger Saves",              "count",  "SU",      "Unknown-Danger Saves",
    "G.L",      "Low-Danger Goals",              "count",  "G.L",      "Low-Danger Goals",      
    "S.L",      "Low-Danger Saves",              "count",  "S.L",      "Low-Danger Saves",
    "G.M",      "Medium-Danger Goals",           "count",  "G.M",      "Medium-Danger Goals",   
    "S.M",      "Medium-Danger Saves",           "count",  "S.M",      "Medium-Danger Saves",         
    "G.H",      "High-Danger Goals",             "count",  "G.H",      "High-Danger Goals",          
    "S.H",      "High-Danger Saves",             "count",  "S.H",      "High-Danger Saves",   
    "TOI",      "Time On Ice (Minutes)",         "count",  "TOI",      "Time On Ice (Minutes)",  
    "Gm",       "Games",                         "count",  "Gm",       "Games",      
    "SA60",     "Shots Faced, Per 60 Minutes",   "count",  "SA60",     "Shots Faced, Per 60 Minutes"
    ),  byrow=TRUE, ncol=5)



screening.choices.pl <- c("Prime", "High-Danger Chances", "Scoring Chances", "Corsi", "Fenwick",
                          "Shot-Based", "Goal-Based",
                          "Faceoffs", "Base Counts",
                          "Teammate/Competition", "All")


screening.choices <- c("Prime", "High-Danger Chances", "Scoring Chances", "Corsi", "Fenwick",
                       "Shot-Based", "Goal-Based",
                       "Faceoffs", "Base Counts", "All")


higher.prob.events <- c("blockreb2", "missreb2", "shotreb2",
                        "blockreb3", "missreb3", "shotreb3",
                        "rushn4","rusho4")

danger.zone <- c(0, 1,1,1, 1,2,2,2,1, 1,2,3,3,2,1, 1,1)

