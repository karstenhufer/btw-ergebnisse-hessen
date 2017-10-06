

# Web-Download v. Statistik Hessen
btw17_ergebnisse <- read.csv(file = "https://www.statistik-hessen.de/b_2017/html/wahlergebnisse.csv",
                             header = FALSE, sep = ";", stringsAsFactors = FALSE, na.strings = c(""))


btw17_ergebnisse <- btw17_ergebnisse[-c(1, 2, 3, 4), ]
btw17_ergebnisse$V1 <- NULL
btw17_ergebnisse$V5 <- NULL

btw17_ergebnisse$V53 <- NULL
btw17_ergebnisse$V54 <- NULL
btw17_ergebnisse$V55 <- NULL
btw17_ergebnisse$V56 <- NULL
btw17_ergebnisse$V57 <- NULL

btw17_ergebnisse <- subset(btw17_ergebnisse, btw17_ergebnisse[1] != "")


btw17_ergebnisse[, 4]  <- as.numeric(btw17_ergebnisse[, 4])
btw17_ergebnisse[, 5]  <- as.numeric(btw17_ergebnisse[, 5])
btw17_ergebnisse[, 6]  <- as.numeric(btw17_ergebnisse[, 6])
btw17_ergebnisse[, 7]  <- as.numeric(btw17_ergebnisse[, 7])
btw17_ergebnisse[, 8]  <- as.numeric(btw17_ergebnisse[, 8])
btw17_ergebnisse[, 9]  <- as.numeric(btw17_ergebnisse[, 9])
btw17_ergebnisse[, 10]  <- as.numeric(btw17_ergebnisse[, 10])
btw17_ergebnisse[, 11]  <- as.numeric(btw17_ergebnisse[, 11])
btw17_ergebnisse[, 12]  <- as.numeric(btw17_ergebnisse[, 12])
btw17_ergebnisse[, 13]  <- as.numeric(btw17_ergebnisse[, 13])
btw17_ergebnisse[, 14]  <- as.numeric(btw17_ergebnisse[, 14])
btw17_ergebnisse[, 15]  <- as.numeric(btw17_ergebnisse[, 15])
btw17_ergebnisse[, 16]  <- as.numeric(btw17_ergebnisse[, 16])
btw17_ergebnisse[, 17]  <- as.numeric(btw17_ergebnisse[, 17])
btw17_ergebnisse[, 18]  <- as.numeric(btw17_ergebnisse[, 18])
btw17_ergebnisse[, 19]  <- as.numeric(btw17_ergebnisse[, 19])
btw17_ergebnisse[, 20]  <- as.numeric(btw17_ergebnisse[, 20])
btw17_ergebnisse[, 21]  <- as.numeric(btw17_ergebnisse[, 21])
btw17_ergebnisse[, 22]  <- as.numeric(btw17_ergebnisse[, 22])
btw17_ergebnisse[, 23]  <- as.numeric(btw17_ergebnisse[, 23])
btw17_ergebnisse[, 24]  <- as.numeric(btw17_ergebnisse[, 24])
btw17_ergebnisse[, 25]  <- as.numeric(btw17_ergebnisse[, 25])
btw17_ergebnisse[, 26]  <- as.numeric(btw17_ergebnisse[, 26])
btw17_ergebnisse[, 27]  <- as.numeric(btw17_ergebnisse[, 27])
btw17_ergebnisse[, 28]  <- as.numeric(btw17_ergebnisse[, 28])
btw17_ergebnisse[, 29]  <- as.numeric(btw17_ergebnisse[, 29])
btw17_ergebnisse[, 30]  <- as.numeric(btw17_ergebnisse[, 30])
btw17_ergebnisse[, 31]  <- as.numeric(btw17_ergebnisse[, 31])
btw17_ergebnisse[, 32]  <- as.numeric(btw17_ergebnisse[, 32])
btw17_ergebnisse[, 33]  <- as.numeric(btw17_ergebnisse[, 33])
btw17_ergebnisse[, 34]  <- as.numeric(btw17_ergebnisse[, 34])
btw17_ergebnisse[, 35]  <- as.numeric(btw17_ergebnisse[, 35])
btw17_ergebnisse[, 36]  <- as.numeric(btw17_ergebnisse[, 36])
btw17_ergebnisse[, 37]  <- as.numeric(btw17_ergebnisse[, 37])
btw17_ergebnisse[, 38]  <- as.numeric(btw17_ergebnisse[, 38])
btw17_ergebnisse[, 39]  <- as.numeric(btw17_ergebnisse[, 39])
btw17_ergebnisse[, 40]  <- as.numeric(btw17_ergebnisse[, 40])
btw17_ergebnisse[, 41]  <- as.numeric(btw17_ergebnisse[, 41])
btw17_ergebnisse[, 42]  <- as.numeric(btw17_ergebnisse[, 42])
btw17_ergebnisse[, 43]  <- as.numeric(btw17_ergebnisse[, 43])
btw17_ergebnisse[, 44]  <- as.numeric(btw17_ergebnisse[, 44])
btw17_ergebnisse[, 45]  <- as.numeric(btw17_ergebnisse[, 45])
btw17_ergebnisse[, 46]  <- as.numeric(btw17_ergebnisse[, 46])
btw17_ergebnisse[, 47]  <- as.numeric(btw17_ergebnisse[, 47])
btw17_ergebnisse[, 48]  <- as.numeric(btw17_ergebnisse[, 48])
btw17_ergebnisse[, 49]  <- as.numeric(btw17_ergebnisse[, 49])
btw17_ergebnisse[, 50]  <- as.numeric(btw17_ergebnisse[, 50])

btw17_ergebnisse_erststimme <- btw17_ergebnisse[ , -c(31:50)]

btw17_ergebnisse_zweitstimme <- btw17_ergebnisse[ , -c(6:30)]


colnames(btw17_ergebnisse_erststimme) <- c("Wahlkreis", "GKZ", "Kommune", "Wahlberechtigte", "Wähler", "ungültige Erststimmen", "gültige Erststimmen",
                                           "CDU St", "SPD St", "Grüne St", "Die Linke St", "AfD St", "FDP St", "Piraten St", "NPD St",
                                           "Freie Wähler St", "Die PARTEI St", "MLPD St", "DKP St", "Bucher St", "Holbein St", "Gent St", "Die Violetten St",
                                           "Frenzel St", "Puppel St", "Schmidtke St", "Polivka St", "SGP St", "Sattler St", "Klis St")

colnames(btw17_ergebnisse_zweitstimme) <- c("Wahlkreis", "GKZ", "Kommune", "Wahlberechtigte", "Wähler", "ungültige Zweitstimmen", "gültige Zweitstimmen",
                                            "CDU St", "SPD St", "Grüne St", "Die Linke St", "AfD St", "FDP St", "Piraten St", "NPD St",
                                            "Freie Wähler St", "Die PARTEI St", "BüSo St", "MLPD St", "BGE St", "DKP St", "DM St",
                                            "ÖDP St", "Tierschutzpartei St", "V-Partei St")

btw17_ergebnisse_erststimme <- cbind(btw17_ergebnisse_erststimme, Stimme = "Erststimme")
btw17_ergebnisse_zweitstimme <- cbind(btw17_ergebnisse_zweitstimme, Stimme = "Zweitstimme")

btw17_ergebnisse_erststimme$Wahlbeteiligung <- btw17_ergebnisse_erststimme$Wähler / btw17_ergebnisse_erststimme$Wahlberechtigte * 100

btw17_ergebnisse_erststimme$CDU <- btw17_ergebnisse_erststimme$`CDU St` / btw17_ergebnisse_erststimme$`gültige Erststimmen` * 100
btw17_ergebnisse_erststimme$SPD <- btw17_ergebnisse_erststimme$`SPD St` / btw17_ergebnisse_erststimme$`gültige Erststimmen` * 100
btw17_ergebnisse_erststimme$Grüne <- btw17_ergebnisse_erststimme$`Grüne St` / btw17_ergebnisse_erststimme$`gültige Erststimmen` * 100
btw17_ergebnisse_erststimme$Linke <- btw17_ergebnisse_erststimme$`Die Linke St` / btw17_ergebnisse_erststimme$`gültige Erststimmen` * 100
btw17_ergebnisse_erststimme$AfD <- btw17_ergebnisse_erststimme$`AfD St` / btw17_ergebnisse_erststimme$`gültige Erststimmen` * 100
btw17_ergebnisse_erststimme$FDP <- btw17_ergebnisse_erststimme$`FDP St` / btw17_ergebnisse_erststimme$`gültige Erststimmen` * 100
btw17_ergebnisse_erststimme$`Sonstige St` <- rowSums(btw17_ergebnisse_erststimme[,c(14,15,16,17,18,19,20,21,23,24,25,26,27,28,29,30)], na.rm = TRUE)
btw17_ergebnisse_erststimme$Sonstige <- btw17_ergebnisse_erststimme$`Sonstige St` / btw17_ergebnisse_erststimme$`gültige Erststimmen` * 100


btw17_ergebnisse_zweitstimme$Wahlbeteiligung <- btw17_ergebnisse_zweitstimme$Wähler / btw17_ergebnisse_zweitstimme$Wahlberechtigte * 100

btw17_ergebnisse_zweitstimme$CDU <- btw17_ergebnisse_zweitstimme$`CDU St` / btw17_ergebnisse_zweitstimme$`gültige Zweitstimmen` * 100
btw17_ergebnisse_zweitstimme$SPD <- btw17_ergebnisse_zweitstimme$`SPD St` / btw17_ergebnisse_zweitstimme$`gültige Zweitstimmen` * 100
btw17_ergebnisse_zweitstimme$Grüne <- btw17_ergebnisse_zweitstimme$`Grüne St` / btw17_ergebnisse_zweitstimme$`gültige Zweitstimmen` * 100
btw17_ergebnisse_zweitstimme$Linke <- btw17_ergebnisse_zweitstimme$`Die Linke St` / btw17_ergebnisse_zweitstimme$`gültige Zweitstimmen` * 100
btw17_ergebnisse_zweitstimme$AfD <- btw17_ergebnisse_zweitstimme$`AfD St` / btw17_ergebnisse_zweitstimme$`gültige Zweitstimmen` * 100
btw17_ergebnisse_zweitstimme$FDP <- btw17_ergebnisse_zweitstimme$`FDP St` / btw17_ergebnisse_zweitstimme$`gültige Zweitstimmen` * 100
btw17_ergebnisse_zweitstimme$`Sonstige St` <- rowSums(btw17_ergebnisse_zweitstimme[,c(14,15,16,17,18,19,20,21,22,23,24,25)], na.rm = TRUE)
btw17_ergebnisse_zweitstimme$Sonstige <- btw17_ergebnisse_zweitstimme$`Sonstige St` / btw17_ergebnisse_zweitstimme$`gültige Zweitstimmen` * 100

btw17_ergebnisse_erststimme_prozent <- btw17_ergebnisse_erststimme[, -c(4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,39)]

btw17_ergebnisse_zweitstimme_prozent <- btw17_ergebnisse_zweitstimme[, -c(4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,34)]

btw17_ergebnisse_prozent <- rbind(btw17_ergebnisse_erststimme_prozent, btw17_ergebnisse_zweitstimme_prozent)


gemeindefreie_gebiete_1 <- list("169", "636200", "Gutsbezirk Kaufunger Wald (keine Wahl - gemeindefreies Gebiet)", "Erststimme", NA, NA, NA, NA, NA, NA, NA, NA)
gemeindefreie_gebiete_2 <- list("167", "633200", "Gutsbezirk Reinhardswald (keine Wahl - gemeindefreies Gebiet)", "Erststimme", NA, NA, NA, NA, NA, NA, NA, NA)
gemeindefreie_gebiete_3 <- list("175", "435200", "Gutsbezirk Spessart (keine Wahl - gemeindefreies Gebiet)", "Erststimme", NA, NA, NA, NA, NA, NA, NA, NA)
gemeindefreie_gebiete_4 <- list("188", "431200", "Michelbuch (keine Wahl - gemeindefreies Gebiet)", "Erststimme", NA, NA, NA, NA, NA, NA, NA, NA)
gemeindefreie_gebiete_5 <- list("169", "636200", "Gutsbezirk Kaufunger Wald (keine Wahl - gemeindefreies Gebiet)", "Zweitstimme", NA, NA, NA, NA, NA, NA, NA, NA)
gemeindefreie_gebiete_6 <- list("167", "633200", "Gutsbezirk Reinhardswald (keine Wahl - gemeindefreies Gebiet)", "Zweitstimme", NA, NA, NA, NA, NA, NA, NA, NA)
gemeindefreie_gebiete_7 <- list("175", "435200", "Gutsbezirk Spessart (keine Wahl - gemeindefreies Gebiet)", "Zweitstimme", NA, NA, NA, NA, NA, NA, NA, NA)
gemeindefreie_gebiete_8 <- list("188", "431200", "Michelbuch (keine Wahl - gemeindefreies Gebiet)", "Zweitstimme", NA, NA, NA, NA, NA, NA, NA, NA)

btw17_ergebnisse_prozent <- rbind(btw17_ergebnisse_prozent, gemeindefreie_gebiete_1, gemeindefreie_gebiete_2, gemeindefreie_gebiete_3, gemeindefreie_gebiete_4,
                                  gemeindefreie_gebiete_5, gemeindefreie_gebiete_6, gemeindefreie_gebiete_7, gemeindefreie_gebiete_8)


btw17_ergebnisse_prozent$Sieger <- ifelse((btw17_ergebnisse_prozent$CDU > btw17_ergebnisse_prozent$SPD) & (btw17_ergebnisse_prozent$CDU > btw17_ergebnisse_prozent$Grüne) & (btw17_ergebnisse_prozent$CDU > btw17_ergebnisse_prozent$Linke) & (btw17_ergebnisse_prozent$CDU > btw17_ergebnisse_prozent$AfD) & (btw17_ergebnisse_prozent$CDU > btw17_ergebnisse_prozent$FDP) & (btw17_ergebnisse_prozent$CDU > btw17_ergebnisse_prozent$Sonstige), "CDU", 
                                          ifelse((btw17_ergebnisse_prozent$SPD > btw17_ergebnisse_prozent$CDU) & (btw17_ergebnisse_prozent$SPD > btw17_ergebnisse_prozent$Grüne) & (btw17_ergebnisse_prozent$SPD > btw17_ergebnisse_prozent$Linke) & (btw17_ergebnisse_prozent$SPD > btw17_ergebnisse_prozent$AfD) & (btw17_ergebnisse_prozent$SPD > btw17_ergebnisse_prozent$FDP) & (btw17_ergebnisse_prozent$SPD > btw17_ergebnisse_prozent$Sonstige), "SPD",
                                                 ifelse((btw17_ergebnisse_prozent$Grüne > btw17_ergebnisse_prozent$CDU) & (btw17_ergebnisse_prozent$Grüne > btw17_ergebnisse_prozent$SPD) & (btw17_ergebnisse_prozent$Grüne > btw17_ergebnisse_prozent$Linke) & (btw17_ergebnisse_prozent$Grüne > btw17_ergebnisse_prozent$AfD) & (btw17_ergebnisse_prozent$Grüne > btw17_ergebnisse_prozent$FDP) & (btw17_ergebnisse_prozent$Grüne > btw17_ergebnisse_prozent$Sonstige), "Grüne",
                                                        ifelse((btw17_ergebnisse_prozent$Linke > btw17_ergebnisse_prozent$CDU) & (btw17_ergebnisse_prozent$Linke > btw17_ergebnisse_prozent$Grüne) & (btw17_ergebnisse_prozent$Linke > btw17_ergebnisse_prozent$SPD) & (btw17_ergebnisse_prozent$Linke > btw17_ergebnisse_prozent$AfD) & (btw17_ergebnisse_prozent$Linke > btw17_ergebnisse_prozent$FDP) & (btw17_ergebnisse_prozent$Linke > btw17_ergebnisse_prozent$Sonstige), "Die Linke",                                                 
                                                               ifelse((btw17_ergebnisse_prozent$AfD > btw17_ergebnisse_prozent$CDU) & (btw17_ergebnisse_prozent$AfD > btw17_ergebnisse_prozent$Grüne) & (btw17_ergebnisse_prozent$AfD > btw17_ergebnisse_prozent$Linke) & (btw17_ergebnisse_prozent$AfD > btw17_ergebnisse_prozent$SPD) & (btw17_ergebnisse_prozent$AfD > btw17_ergebnisse_prozent$FDP) & (btw17_ergebnisse_prozent$AfD > btw17_ergebnisse_prozent$Sonstige), "AfD",
                                                                      ifelse((btw17_ergebnisse_prozent$FDP > btw17_ergebnisse_prozent$CDU) & (btw17_ergebnisse_prozent$FDP > btw17_ergebnisse_prozent$Grüne) & (btw17_ergebnisse_prozent$FDP > btw17_ergebnisse_prozent$Linke) & (btw17_ergebnisse_prozent$FDP > btw17_ergebnisse_prozent$AfD) & (btw17_ergebnisse_prozent$FDP > btw17_ergebnisse_prozent$SPD) & (btw17_ergebnisse_prozent$FDP > btw17_ergebnisse_prozent$Sonstige), "FDP",
                                                                             ifelse((btw17_ergebnisse_prozent$Sonstige > btw17_ergebnisse_prozent$CDU) & (btw17_ergebnisse_prozent$Sonstige > btw17_ergebnisse_prozent$Grüne) & (btw17_ergebnisse_prozent$Sonstige > btw17_ergebnisse_prozent$Linke) & (btw17_ergebnisse_prozent$Sonstige > btw17_ergebnisse_prozent$AfD) & (btw17_ergebnisse_prozent$Sonstige > btw17_ergebnisse_prozent$FDP) & (btw17_ergebnisse_prozent$Sonstige > btw17_ergebnisse_prozent$SPD), "Sonstige", "andere"
                                                                             )))))))


btw17_ergebnisse_land <- subset(btw17_ergebnisse_prozent, btw17_ergebnisse_prozent$Wahlkreis == "Land")

btw17_ergebnisse_wahlkreise <- subset(btw17_ergebnisse_prozent, is.na(btw17_ergebnisse_prozent$GKZ))
btw17_ergebnisse_wahlkreise <- btw17_ergebnisse_wahlkreise[-c(1,24),]

btw17_ergebnisse_gemeinden <- subset(btw17_ergebnisse_prozent, btw17_ergebnisse_prozent$GKZ != "")
btw17_ergebnisse_gemeinden <- subset(btw17_ergebnisse_gemeinden, btw17_ergebnisse_gemeinden$GKZ != "Land")


# Save Ergebnisse Land
write.table(btw17_ergebnisse_land,
            file = "../btw17_ergebnisse_land.csv",
            row.names = FALSE,
            sep = ";",
            dec = ",")


# Save Ergebnisse Gemeinden
write.table(btw17_ergebnisse_gemeinden,
            file = "../btw17_ergebnisse_gemeinden.csv",
            row.names = FALSE,
            sep = ";",
            dec = ",")


#.libPaths( "D:/R" )
#install.packages("reshape2")
#library(reshape2)
btw17_ergebnisse_gemeinden_tableau <- melt(btw17_ergebnisse_gemeinden,
                                           variable.name = "Partei",
                                           value.name = "Stimmenanteil",
                                           id.vars = c("Wahlkreis", "GKZ", "Kommune", "Stimme", "Wahlbeteiligung", "Sieger"))


btw17_ergebnisse_gemeinden_tableau$Wahlkreisname <- ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "167", "167 - Waldeck",
                                                           ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "168", "168 - Kassel",
                                                                  ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "169", "169 - Werra-Meißner - Hersfeld-Rotenburg",
                                                                         ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "170", "170 - Schwalm-Eder",
                                                                                ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "171", "171 - Marburg",
                                                                                       ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "172", "172 - Lahn-Dill",
                                                                                              ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "173", "173 - Gießen",
                                                                                                     ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "174", "174 - Fulda",
                                                                                                            ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "175", "175 - Main-Kinzig - Wetterau II - Schotten",
                                                                                                                   ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "176", "176 - Hochtaunus",
                                                                                                                          ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "177", "177 - Wetterau I",
                                                                                                                                 ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "178", "178 - Rheingau-Taunus - Limburg",
                                                                                                                                        ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "179", "179 - Wiesbaden",
                                                                                                                                               ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "180", "180 - Hanau",
                                                                                                                                                      ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "181", "181 - Main-Taunus",
                                                                                                                                                             ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "182", "182 - Frankfurt I",
                                                                                                                                                                    ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "183", "183 - Frankfurt II",
                                                                                                                                                                           ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "184", "184 - Groß-Gerau",
                                                                                                                                                                                  ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "185", "185 - Offenbach",
                                                                                                                                                                                         ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "186", "186 - Darmstadt",
                                                                                                                                                                                                ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "187", "187 - Odenwald",
                                                                                                                                                                                                       ifelse(btw17_ergebnisse_gemeinden_tableau$Wahlkreis == "188", "188 - Bergstraße",
                                                                                                                                                                                                              ifelse(btw17_ergebnisse_gemeinden_tableau$GKZ == "412000", "182 & 183 - Frankfurt I & II",
                                                                                                                                                                                                                     ifelse(btw17_ergebnisse_gemeinden_tableau$GKZ == "414000", "179 - Wiesbaden", "andere"
                                                                                                                                                                                                                     ))))))))))))))))))))))))



# Save Ergebnisse für Tableau
write.table(btw17_ergebnisse_gemeinden_tableau,
            file = "../btw17_ergebnisse_gemeinden_tableau.csv",
            row.names = FALSE,
            sep = ";",
            dec = ",")
