# Deliverable 1:

library('dplyr')
Mecha_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Perform Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_table)
# Perform Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_table))

# Deliverable 2:
suspension_coil_table <-read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# Get total summary
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Create Lot Summary
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


# Deliverable 3:
# Perform t-test across all Lots
t.test(suspension_coil_table$PSI, mu = 1500)
# Perform t-test on Lot 1
t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
# Perform t-test on Lot 2
t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
# Perform t-test on Lot 3
t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)

