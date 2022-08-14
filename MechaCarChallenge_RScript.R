library(dplyr) #load dplyr

mpg_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import and read csv file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)) #summarize multiple linear regression model

coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import and read csv file
total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

t.test(coil_table$PSI,mu=mean(total_summary$Mean)) #t-test of mean vs all lots

lot1 = subset(coil_table, Manufacturing_Lot=="Lot1")

lot2 = subset(coil_table, Manufacturing_Lot=="Lot2")

lot3 = subset(coil_table, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500) #t-test of mean vs all lot 1
t.test(lot2$PSI,mu=1500) #t-test of mean vs all lot 2
t.test(lot3$PSI,mu=1500) #t-test of mean vs all lot 3
