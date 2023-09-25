ts_serie_hel3 <- ts(Hel_Cuat_3, start = c(2018,1.75), frequency = 3)
ggAcf(ts_serie_hel3)
plot(ts_serie_hel3)
ggseasonplot(ts_serie_hel3)

sehwa_serie_hel3 <- hw(ts_serie_hel3, h = 3, seasonal = "additive", initial = "simple")
plot(sehwa_serie_hel3)
lines(sehwa_serie_hel3$fitted, col="red")
summary(sehwa_serie_hel3)

sehwm_serie_hel3 <- hw(ts_serie_hel3, h = 3, seasonal = "multiplicative", initial = "simple")
plot(sehwm_serie_hel3)
lines(sehwm_serie_hel3$fitted, col="red")
summary(sehwm_serie_hel3)

#analisis de residuos método aditivo
ggAcf(sehwa_serie_hel3$residuals)
plot(sehwa_serie_hel3$residuals)
t.test(sehwa_serie_hel3$residuals)
jarque.bera.test(sehwa_serie_hel3$residuals)