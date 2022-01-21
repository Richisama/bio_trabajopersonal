library(MLDataR)
tir<-MLDataR::thyroid_disease
write.csv(tir, file= "dataset_tiroides.csv")

sessionInfo()

# order

head(tir)

order(tir)
tir2<-tir[order(tir$patient_age),]
tir_completo<-tir[complete.cases(tir),]

# aggregate, agrupar por grupos y calcular un dato estadístico

aggregate(tir_completo$patient_age,
        list(tir_completo$ThryroidClass), mean )
edad_tyr<-aggregate(tir_completo$patient_age,
          list(tir_completo$ThryroidClass, tir_completo$patient_gender), mean) 
names(edad_tyr)<-c("Tiroides", "Genero", "Media")
edad_tyr
