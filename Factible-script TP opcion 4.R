ts_serie_hel4 <- ts(Hel_Cuat_4, start = c(2018,2.25), frequency = 3)
ggAcf(ts_serie_hel4)
plot(ts_serie_hel4)
ggseasonplot(ts_serie_hel4)

sehwa_serie_hel4 <- hw(ts_serie_hel4, h = 3, seasonal = "additive", initial = "simple")
plot(sehwa_serie_hel4)
lines(sehwa_serie_hel4$fitted, col="red")
summary(sehwa_serie_hel4)

sehwm_serie_hel4 <- hw(ts_serie_hel4, h = 3, seasonal = "multiplicative", initial = "simple")
plot(sehwm_serie_hel4)
lines(sehwm_serie_hel4$fitted, col="red")
summary(sehwm_serie_hel4)

#analisis de residuos método aditivo
ggAcf(sehwa_serie_hel4$residuals)
plot(sehwa_serie_hel4$residuals)
t.test(sehwa_serie_hel4$residuals)
jarque.bera.test(sehwa_serie_hel4$residuals)