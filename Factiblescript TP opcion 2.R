ts_serie_hel2 <- ts(Hel_Cuat_2, start = c(2018,2), frequency = 3)
ggAcf(ts_serie_hel2)
plot(ts_serie_hel2)
ggseasonplot(ts_serie_hel2)

ses_serie_hel2 <- ses(ts_serie_hel2, level = c(80,95),h=3, initial = "simple")
plot(ses_serie_hel2)
lines(ses_serie_hel2$fitted, col="red")
summary(ses_serie_hel2)

#analisis de residuos
ggAcf(ses_serie_hel2$residuals)
plot(ses_serie_hel2$residuals)
t.test(ses_serie_hel2$residuals)
jarque.bera.test(ses_serie_hel2$residuals)