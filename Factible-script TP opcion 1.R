ts_serie_hel1 <- ts(Hel_Cuat_1, start = c(2018,1.5), frequency = 3)
ggAcf(ts_serie_hel1)
plot(ts_serie_hel1)
ggseasonplot(ts_serie_hel1)

sehwa_serie_hel1 <- hw(ts_serie_hel1, h = 3, seasonal = "additive", initial = "simple")
plot(sehwa_serie_hel1)
lines(sehwa_serie_hel1$fitted, col="red")
summary(sehwa_serie_hel1)

sehwm_serie_hel1 <- hw(ts_serie_hel1, h = 3, seasonal = "multiplicative", initial = "simple")
plot(sehwm_serie_hel1)
lines(sehwm_serie_hel1$fitted, col="red")
summary(sehwm_serie_hel1)

#analisis de residuos método aditivo
ggAcf(sehwa_serie_hel1$residuals)
plot(sehwa_serie_hel1$residuals)
t.test(sehwa_serie_hel1$residuals)
jarque.bera.test(sehwa_serie_hel1$residuals)
