----------------------
-- Get addon object --
----------------------
local DS = LibStub("AceAddon-3.0"):GetAddon("Doom Shards", true)
if not DS then return end


---------------
-- Libraries --
---------------
local L = LibStub("AceLocale-3.0"):GetLocale("DoomShards")


-------------
-- Options --
-------------
local function displayOptions()
	--local weakaurasString = "dKevobaksfNcvvRcvf8krkmleXTivTljv(LkjmmvvDme1YejptLY0KuUMiABKk9nuLgNi05qvyDQKOMhQkY9qKSpvsQdIIyHOGhIiLlks1gvvXhvjjJuLePtIIALimtuKUPifTtvLFkPQHQQslfvLEQutfLUQiL(kQk0yrv0zvL0BrKQMRkPUlIuzVk)vsgmvhMKfRs8yatgvUSWMvHpRkgTQuNMIxJQIA2aDBsz3u63smCv0Yb9CKMoX1f12fbFhfA8QsCEvQMVkjI9d9ip21QXoznDDQ6ix3)6UTwBn3AUXUoE5uz5cUXWAAaE8BXyL1muplB9Pjtt)h21kooJykwfyLanppbKo2jRHXJPyzVFgRFGL85ABwJfAEEciDFKxdwuCJDDMgvaGkkDTaZXAOcig7ATmOyg7KjR5mhhgGmOCFSR1YGIzStMSwuGHvg7ATmOyg7KjRHfWySR1YGIzStMSgaurPJDn1yFaJ1)YxMtVzNmzTHBnPvS0tdqUKPO3NgOrOOZhzYK1aJDFKh7AGcybo29rE)OlVjsorEqo1)Bj1Lh6MOU7qFYA7l1(jXB309pV109FTBjYlV14Dh6tMCF32p10nfVPsXBIjtv7wYK6MCh6tEBF12h5jRHXJPyzVFgRL4fjdJ13R)4GgY(0xJh1LCTXAKkGI2jyib3(iVwIxKmmwZSvc4HciUwXXvS0RjTILEAaYLmTpnqJqVondoJ666HxO1jpQ1gU11dVGoz0RTwGMNNao21Y9ZynvusMUoBJecRSwLLY6ZcJbSQCgqLuGRVAsTotJQZcJbCmSosiSY6(TIRWi61dVqxNPrv2AKXWAGmvkAvVnCXAXOfCRplmgW1KNSwXXzetXQaReO55jG0XUpYJDTanppbDSRL7NXAQOKmDnnFjsiSsNpomVSUI0ysZw1SmHVSRpkqT9rEDKqyL1TOSaXv8tbQDfmjdvRP5lrcHv(fghMxw3)Motz66mnQYwJmgwNTgz9jO6EaxNTrcHvwRYszDMgvhfO2yynqMkfTQ3gUyTy0cUjRZwbAEEc4yxFuGA7J8Kjtw)s9hh0q2NED1TUKRTznwO55jG09LAnJgo59(ULA97W88w2xIRHfrjXUSgSO4g76mnQSrcbCxwlkWWkJDTwgumJDYK10ZaySRPg7dySVBtwNPrfaOIshdRHkGySR1YGIzStMSotJk6zamgwdaQO0XUMASpGX6F5lZP3SR1YGIzSR)LVmNEZogMmznSagJDTwgumJDYK1CMJddqguUp21AzqXm2jtMmzFPg76xQ)4GgY(rFnEjxJxY1QvJhjElX)jY7o0xJ31W4XuSS3pJ1s8IKHX671FCqdz)OxxEORUj)t(gVjQBkY1QvBh6RX7AJ1ivafTtWqcU9rETeVizySMzReWdfqCTIJRyPxtAfl90aKlzAFAGgHEDAgCg111dVqRtEuRbkGf4y3h59JU8Mi5e5b5u)VLuxEOBI6Ud9jRTVu7NeVDt3)8wt3)1ULiV8wJ3DOpzY9DB)ut3u8MkfVjMmvTBjtQBYDOp5T9vBFKNS2WTUE4f0tHET1kooJykwfyLanppbKo29rESRfO55jGJDTC)mwtfLKPRP5lrcHv68XH5L1vKgtA2QMLj8LD9rbQTpYRJecRSUfLfiUIFkqTRGjzOAnnFjsiSYVW4W8Y6(30zktxNPrv2AKXW6S1iRpbv3d46SnsiSYAvwkRZ0O6Oa1gdRbYuPOv92WfRfJwWnzD2kqZZtah76JcuBFKNmzYAbAEEc4yxl3pJ1urjz66SnsiSYAvwkRplmgWQYzavsbU(Qj16mnQolmgWXW6iHWkR73kUcJOxp8cDDMgvzRrgdRbYuPOv92WfRfJwWT(SWyaxNAYABwJfAEEciDFPwZOHtEVVBPw)ompVL9L4AyrusSlRblkUXUotJkBKqa3L1IcmSYyxRLbfZyNmzn9mag7AQX(ag772K1zAubaQO0XWAOcig7ATmOyg7KjRZ0OIEgaJH1aGkkDSRPg7dyS(x(YC6n7ATmOyg76F5lZP3SJHjtwdlGXyxRLbfZyNmznN54WaKbL7JDTwgumJDYKjt23TXU(L6poOHSp9)Rl5671FCqdz)OxxEORUj)t(gVjQBkY1QvBh6RX7AJ1ivafTtWqcU9rETeVizySMzReWdfqCTIJRyPxtAfl90aKlzAFAGgHEDAgCg111dVqRtEuRbkGf4y3h59JU8Mi5e5b5u)VLuxEOBI6Ud9jRTVu7NeVDt3)8wt3)1ULiV8wJ3DOpzY9DB)ut3u8MkfVjMmvTBjtQBYDOp5T9vBFKNSwGMNNao21Y9ZynvusMUoBJecRSwLLY6ZcJbSQCgqLuGRVAsTotJQZcJbCmSosiSY6(TIRWi61dVqxNPrv2AKXWAGmvkAvVnCXAXOfCRplmgW13MSwXXzetXQaReO55jG0XUpYJDTanppbDSRL7NXAQOKmDnnFjsiSsNpomVSUI0ysZw1SmHVSRpkqT9rEDKqyL1TOSaXv8tbQDfmjdvRP5lrcHv(fghMxw3)Motz66mnQYwJmgwNTgz9jO6EaxNTrcHvwRYszDMgvhfO2yynqMkfTQ3gUyTy0cUjRZwbAEEc4yxFuGA7J8KjtwB4wxp8c63qV2ABwJfAEEciDFPwZOHtEVVBPw)ompVL9L4AyrusSlRblkUXUotJkBKqa3L1IcmSYyxRLbfZyNmzn9mag7AQX(ag772K1zAubaQO0XWAOcig7ATmOyg7KjRZ0OIEgaJH1aGkkDSRPg7dyS(x(YC6n7ATmOyg76F5lZP3SJHjtwdlGXyxRLbfZyNmznN54WaKbL7JDTwgumJDYKjRHXJPyzVFgRL4fjdJj7R2yx)s9hh0q23Tu1LCnmEmfl79ZyTeVizyS(E9hh0q2p61Lh6QBY)KVXBI6MICTA12H(A8U2ynsfqr7emKGBFKxlXlsggRz2kb8qbexR44kw61KwXspna5sM2NgOrOxNMbNrDD9Wl06Kh1AGcybo29rE)ut3u8MkfVjMmvTBjtQBYDOp5T9LAF)33T9tI14L3B6w7))A10nfzY6Ud9jtUVA7J8K1gU11dVGEn0RTwXXzetXQaReO55jG0XUpYJDTanppbDSRL7NXAQOKmDnnFjsiSsNpomVSUI0ysZw1SmHVSRpkqT9rEDKqyL1TOSaXv8tbQDfmjdvRP5lrcHv(fghMxw3)Motz66mnQYwJmgwNTgz9jO6EaxNTrcHvwRYszDMgvhfO2yynqMkfTQ3gUyTy0cUjRZwbAEEc4yxFuGA7J8KjtwlqZZtah7A5(zSMkkjtxNTrcHvwRYsz9zHXawvodOskW1xnPwNPr1zHXaogwhjewzD)wXvye96HxORZ0OkBnYyynqMkfTQ3gUyTy0cU1Nfgd46AtwBZASqZZtaP7l1AgnCY79Dl163H55TSVexdlIsIDznyrXn21zAuzJec4USwuGHvg7ATmOyg7KjRPNbWyxtn2hWyF3MSotJkaqfLogwdvaXyxRLbfZyNmzDMgv0ZaymSgaurPJDn1yFaJ1)YxMtVzxRLbfZyx)lFzo9MDmmzYAybmg7ATmOyg7KjR5mhhgGmOCFSR1YGIzStMmzY(so21Vu)XbnK9tnD)ZdYKR9pXe5XnY3ULAh6RP7Ay8ykw27NXAjErYWy996poOHSF0Rlp0v3K)jFJ3e1nf5A1QTd914DTXAKkGI2jyib3(iVwIxKmmwZSvc4HciUwXXvS0RjTILEAaYLmTpnqJqVondoJ666HxO1jpQ1c088eWXUwUFgRPIsY01zBKqyL1QSuwFwymGvLZaQKcC9vtQ1zAuDwymGJH1rcHvw3VvCfgrVE4f66mnQYwJmgwdKPsrR6THlwlgTGB9zHXaUo5K1gU11dVGEs0VTwXXzetXQaReO55jG0XUpYJDTanppbDSRL7NXAQOKmDnnFjsiSsNpomVSUI0ysZw1SmHVSRpkqT9rEDKqyL1TOSaXv8tbQDfmjdvRP5lrcHv(fghMxw3)Motz66mnQYwJmgwNTgz9jO6EaxNTrcHvwRYszDMgvhfO2yynqMkfTQ3gUyTy0cUjRZwbAEEc4yxFuGA7J8KjtwdualWXUpY7NA6MI3uP4nXKPQDlzsDtUd9jVTVu77)(UTFsSgV8Et3A))xRMUPitw3DOpzY9vBFKNS2M1yHMNNas3xQ1mA4K377wQ1VdZZBzFjUgweLe7YAWIIBSRZ0OYgjeWDzTOadRm21AzqXm2jtwtpdGXUMASpGX(UnzDMgvaGkkDmSgQaIXUwldkMXozY6mnQONbWyynaOIsh7AQX(agR)LVmNEZUwldkMXU(x(YC6n7yyYK1Wcym21AzqXm2jtwZzoomazq5(yxRLbfZyNmzYK9P7yxNTc088eWXUgitLI2A96rhagkj4q)YD0zkyOo0Nom4uqDspT8JeiXr2ciMIvh(rc0rhD0HHKHw0fyoqIWYHeibsGeibsGeiXK1W4XuSS3pJ1s8IKHX6xQ)4GgY(0RRU1LCTXAKkGI2jyib3(iVwIxKmmwZSvc4HciUwXXvS0RjTILEAaYLmTpnqJqVondoJ666HxO1jpQ1c088eWXUotJQZcJbCmSgitLIw1BdxSgitLI2A5(zSgitLI2AGmvkAvY9ZyDKqyL1Nfgd4AYRplmgWQYzavsbUMpTosiSY6(TIRWi61dVqxNPrv2AKXW6SnsiSYAvwkRbYuPOTwVE0bGHsco0VChDMcgQd9PddofuN0tl)ibsCKTaIPy1PIe0bkzRqc6f4fk)ib6OJo6WqYql6f4fk68j0jJUYYHUof4fk6Pb6aLSvq)Qjf6K5hjcl3AG3baFEDKqyL1rcHvOR5JmPIjPT)LzsJ56tBx1)YmFzMTNSwXXzetXQaReO55jG0XozTYA0uIPyh7AnLXo21uafy8t2DSggsgAr)iBbetXQZjS8adkLe0PIck8Ke0PIckVsc6uafyWtsqNcOaJx5hjqhD0r3CGUTiOZOQsrrxEhw0HHKHw0jtc6KrpSCib6OJo6Gfafi6IrlGmZHoPqNrvLIwNy0ciL0tM0HeOJo6OdwauGOlgTGPXHGoPqNrvLIwDavAXvM1OfmnoeDeJwazMJFKaD0rhDZb6IrlGmnoe0XResH(F0L3HfjqhD0rhD0rhDyizOfDQOGcpjbDQOGYRib6OJo6binqhjqhD0rhD0rhDyizOfDkGcm4jjOtbuGXRib6OJo6HLdjclhsGeibsGeibsSgOawGmSpYRbkGf4vTpYRZ0OsGklfujXyynfqbgS3pJ1azQu0wlqLLcQKG9(zSgitLI2AbQSuqLe)KTaRHHKHw01RhDayOKGd9l3rNPGH6qF6WGtb1j90YpsGehzlGykwDoHLhyqPKGovuqHNKGovuq5vsqNlaffpjbDUauuVYpsGo6OJU5aDBrqhOyPNgGCjtRONgOrOvmQqxEhw0HHKHw0PIck8Ke0PIckVIEAGUoNWYdmOu05dOZfGI6v(rpSCib6OJo6Gfafi6IrlGmZHoPqhOyPNgGCjtRONgOrOvmQQtmAbKs6jt6qc0rhD0nhOlgTaYmh6Y7WIeOJo6OJo6OJoybqbIom0ugRX(GoPqxmAbKzU6mANkaH1OfORh9RkewJwOd)ib6OJo6OJo6OFclpWGsrNuORPK31PzS6qMe0jJUE0HHMYyn2h0Vc0j)NFKaD0rhD0rhD0HHKHw0PIck8Ke0PIckVIEAGUoNWYdmOu05dOZfGI6v(rc0rhD0dqAGosGo6OJo6OJo6WqYql6urbfEsc6urbLxrxp6PsHeOJo6OhwoKiSCibsGeibsSMcOaJ777)Af45B1((VMldvIPyxt()677tp5ex)Y((VMcOaJx23)1afWcKV7J8A5(zSgitLI2AyrusSV)RZ0OIcOaJDznqbSazY(ipzYAd3AM0Otg9uRbkGf4y3h59tnE1nXKK5nvYuj)ZdECR2o0N82(sTFQXRUjMKmVPsMk5FEWJB12H(K323T9tnE1nXKK5nvYuj)ZdECR2o0N82(QTpYtwBZASqZZtaP7J8AgnCY79Dl163H55TSVexdlIsIDznyrXn21zAuzJec4USwuGHvg7AQX(ag7lf51AzqXm2jtwdaQO0XUMASpGX6F5lZP3SR1YGIzSR)LVmNEZogMmzDMgvIcmSYyyDMgvaGkkDmSgQaIXUwldkMXozYAybmg7ATmOyg7KjRZ0OIEgaJH1CMJddqguUp21AzqXm2jtwNPrfqr7IsgdRPNbWyxtn2hWyF3Mmz996poOHSp9P4TUKt2hVJDD2kqZZtah7AGmvkAR1RhDayOKGd9l3rNPGH6qF6WGtb1j90YpsGehzlGykwD4hjqhD0rhgsgArxG5ajclhsGeibsGeibsGetwdJhtXYE)mwlXlsggRFP(JdAi7h914LCnEjxRwnEK4Te)NiV7qFnExBSgPcOODcgsWTpYRL4fjdJ1mBLaEOaIRvCCfl9AsRyPNgGCjt7td0i0RtZGZOUUE4fADYJATHBntA0tHEQ1kooJykwfyLanppbKo2jRvwJMsmf7yxRPm2XUgOawG8DFKxdualqMSpYRbkGf4vTpYRZ0OsGklfujXyynfqbgS3pJ1azQu0wNPrffqbg7YAbQSuqLe)KTaRHHKHw01RhDayOKGd9l3rNPGH6qF6WGtb1j90YpsGehzlGykwDoHLhyqPKGovuqHNKGovuq5vsqNlaffpjbDUauuVYpsGo6OJU5aDBrqhOyPNgGCjtRONgOrOvmQqxEhw0HHKHw0PIck8Ke0PIckVIEAGUoNWYdmOu05dOZfGI6v(rpSCib6OJo6Gfafi6IrlGmZHoPqhOyPNgGCjtRONgOrOvmQQtmAbKs6tPhOyPNgGCjtRONgOrOvmQQRaVqjDib6OJo6Md0fJwazMdD5Dyrc0rhD0rhD0rhSaOarhgAkJ1yFqNuOlgTaYmxDgTtfGWA0c01J(vfcRrl0HFKaD0rhD0rhD0pHLhyqPOtk01uY760mwDitc6Krxp6WqtzSg7d6xb6K)ZpsGo6OJo6OJo6WqYql6urbfEsc6urbLxrpnqxNty5bguk68b05cqr9k)ib6OJo6binqhjqhD0rhD0rhDyizOfDQOGcpjbDQOGYRORh9uPqc0rhD0dlhsewU1uafyCFF)xRapFR23)1cuzPGkjyVFgRbYuPOT(((0toX1VSV)R5YqLyk21K)VMcOaJFYwG1WqYql6hzlGykwDoHLhyqPKGovuqHNKGovuq5vsqNcOadEsc6uafy8k)ib6OJo6Md0TfbDgvvkk6Y7WIomKm0IozsqNm6HLdjqhD0rhSaOarxmAbKzo0jf6mQQu06eJwaPK(u6zuvPO1vGxOKoKaD0rhDWcGceDXOfmnoe0jf6mQQu0QdOslUYSgTGPXHOJy0ciZC8JeOJo6OBoqxmAbKPXHGoELqk0)JU8oSib6OJo6OJo6OddjdTOtffu4jjOtffuEfjqhD0rpaPb6ib6OJo6OJo6OddjdTOtbuGbpjbDkGcmEfjqhD0rpSCiry5qcKajqcKajqI1Y9ZynqMkfT1WIOKyF)xtbuGXl77)AGcybYW(ipzYAbAEEc4yxNPr1zHXaogwdKPsrR6THlwdKPsrBTC)mwdKPsrBD2gjewzTklL1azQu0QK7NX6iHWkRplmgWQYzavsbUMpTosiSY6(TIRWi61dVqxNPrv2AKXW6ZcJbCDQ1azQu0wRxp6aWqjbh6xUJotbd1H(0HbNcQt6PLFKajoYwaXuS6urc6aLSvib9c8cLFKaD0rhDyizOf9c8cfD(e6Pqxz5qxNc8cf90aDGs2kOF1Kc9u8JeHLdjqcKajqcKajqcKajqcKajqcKajqcKajqcKajqcKajqcKajqcKynW7aGpVosiSY6iHWk018rMuXK02)YmPXC9PTR6FzMVmZ2twdualWXUpY7NA8QBIjjZBQKPs(Nh84wTDOp5T9LA)uJxDtmjzEtLmvY)8Gh3QTd9jVTVB7NA8QBIjjZBQKPs(Nh84wTDOp5T9vBFKNS2M1yHMNNas3h51mA4K377wQ1VdZZBzFjUgweLe7YAWIIBSRZ0OYgjeWDzTOadRm21uJ9bm2xkYR1YGIzStMSgaurPJDn1yFaJ1)YxMtVzxRLbfZyx)lFzo9MDmmzY6mnQefyyLXW6mnQaavu6yynubeJDTwgumJDYK1Wcym21AzqXm2jtwNPrf9magdR5mhhgGmOCFSR1YGIzStMSotJkGI2fLmgwtpdGXUMASpGX(UnzY671FCqdzF6tXBDjNSVeh7AGcybo29rE)uJxDtmjzEtLmvY)8Gh3QTd9jVTVu7NA8QBIjjZBQKPs(Nh84wTDOp5T9DB)uJxDtmjzEtLmvY)8Gh3QTd9jVTVA7J8K13R)4GgY(0NI36sUggpMIL9(zSwIxKmmw)s9hh0q2N()1LCTXAKkGI2jyib3(iVwIxKmmwZSvc4HciUwXXvS0RjTILEAaYLmTpnqJqVondoJ666HxO1jpQ1c088eWXUotJQZcJbCmSgitLIw1BdxSgitLI2A5(zSgitLI2AGmvkAvY9ZyDKqyL1Nfgd46BRplmgWQYzavsbUMpTosiSYAs7Tsqpndkv9eRZ0OkBnYyyD2gjewzTklL1azQu0wRxp6aWqjbh6xUJotbd1H(0HbNcQt6PLFKajoYwaXuS6urc6aLSvib9c8cLFKaD0rhDyizOf9c8cfD(e63qxz5qxNc8cf90aDGs2kOF1Kc9B8JeHLdjqcKajqcKajqcKajqcKajqcKajqcKajqcKajqcKajqcKajqcKynW7aGpVosiSY6iHWk018rMuXK02)YmPXC9PTR6FzMVmZ2twR44mIPyvGvc088eq6yNSwznAkXuSJDTMYyh7AbQSuqLeS3pJ1azQu0wdualqg2h51afWc8Q2h51zAujqLLcQKymSMcOad27NXAGmvkARZ0OIcOaJDzTavwkOsIFYwG1WqYql661JoamusWH(L7OZuWqDOpDyWPG6KEA5hjqIJSfqmfRoNWYdmOusqNkkOWtsqNkkO8kjOZfGIINKGoxakQx5hjqhD0r3CGUTiOduS0tdqUKPv0td0i0kgvOlVdl6WqYql6urbfEsc6urbLxrpnqxNty5bguk68b05cqr9k)OhwoKaD0rhDWcGceDXOfqM5qNuOduS0tdqUKPv0td0i0kgv1jgTasj930duS0tdqUKPv0td0i0kgv1vGxOKoKaD0rhDZb6IrlGmZHU8oSib6OJo6OJo6OdwauGOddnLXASpOtk0fJwazMRoJ2PcqynAb66r)QcH1Of6WpsGo6OJo6OJo6NWYdmOu0jf6Ak5DDAgRoKjbDYORhDyOPmwJ9b9RaDY)5hjqhD0rhD0rhDyizOfDQOGcpjbDQOGYRONgORZjS8adkfD(a6CbOOELFKaD0rh9aKgOJeOJo6OJo6OJomKm0IovuqHNKGovuq5v01JEQuib6OJo6HLdjcl3AkGcmUVV)RvGNVv77)AGcybY39rE999PNCIRFzF)xtbuGXl77)AkGcm(jBbwddjdTOFKTaIPy15ewEGbLsc6urbfEsc6urbLxjbDkGcm4jjOtbuGXR8JeOJo6OBoq3we0zuvPOOlVdl6WqYql6KjbDYOhwoKaD0rhDWcGceDXOfqM5qNuOZOQsrRtmAbKs6VPNrvLIwxbEHs6qc0rhD0blakq0fJwW04qqNuOZOQsrRoGkT4kZA0cMghIoIrlGmZXpsGo6OJU5aDXOfqMghc64vcPq)p6Y7WIeOJo6OJo6OJomKm0I(Fsq)psGo6OJEasd0rc0rhD0rhD0rhgsgArNmjOtgjqhD0rpSCiry5qcKajqcKajqI1Y9ZynqMkfT1WIOKyF)xZLHkXuSRj)FnqbSazY(ipzYAd3AM0OFd9uRZwbAEEc4yxdKPsrBTE9OdadLeCOF5o6mfmuh6thgCkOoPNw(rcK4iBbetXQd)ib6OJo6WqYql6cmhiry5qcKajqcKajqcKyYABwJfAEEciDFKxZOHtEVVBPw)ompVL9L4AyrusSlRblkUXUotJkBKqa3L1IcmSYyxtn2hWyFPiVwldkMXozYAaqfLo21uJ9bmw)lFzo9MDTwgumJD9V8L50B2XWKjRZ0OsuGHvgdRZ0OcaurPJH1qfqm21AzqXm2jtwdlGXyxRLbfZyNmzDMgv0ZaymSMZCCyaYGY9XUwldkMXozY6mnQakAxuYyyn9mag7AQX(ag772Kjt2hpg7AGcybo29rE)uJxDtmjzEtLmvY)8Gh3QTd9jVTVu7NA8QBIjjZBQKPs(Nh84wTDOp5T9DB)uJxDtmjzEtLmvY)8Gh3QTd9jVTVA7J8K13R)4GgY(0NI36sUggpMIL9(zSwIxKmmwNTc088eWXUgitLI2A96rhagkj4q)YD0zkyOo0Nom4uqDspT8JeiXr2ciMIvh(rc0rhD0HHKHw0fyoqIWYHeibsGeibsmzTXAKkGI2jyib3(iVwbiMILo21hgRH(ESR5kvazQu02LjtwlXlsggRz2kb8qbexR44kw61KwXspna5sM2NgOrOxNMbNrDD9Wl06Kh16xQ)4GgY(ULQUKRnCRzsJEn0tTwznAkXuSJDTMYyh7AkGcm(jBbwddjdTOFKTaIPy15ewEGbLsc6urbfEsc6urbLxjbDkGcm4jjOtbuGXR8JeOJo6OBoq3we0zuvPOOlVdl6WqYql6KjbDYOhwoKaD0rhDWcGceDXOfqM5qNuOZOQsrRtmAbKs6RPNrvLIwxbEHs6qc0rhD0blakq0fJwW04qqNuOZOQsrRoGkT4kZA0cMghIoIrlGmZXpsGo6OJU5aDXOfqMghc64vcPq)p6Y7WIeOJo6OJo6OJomKm0I(Fsq)psGo6OJEasd0rc0rhD0rhD0rhgsgArNmjOtgjqhD0rpSCiry5qcKajqcKajqI1afWcKH9rEnqbSaVQ9rEDMgvcuzPGkjgdRPakWG9(zSgitLI2AbQSuqLeS3pJ1azQu0wNPrffqbg7YAbQSuqLe)KTaRHHKHw01RhDayOKGd9l3rNPGH6qF6WGtb1j90YpsGehzlGykwDoHLhyqPKGovuqHNKGovuq5vsqNlaffpjbDUauuVYpsGo6OJU5aDBrqhOyPNgGCjtRONgOrOvmQqxEhw0HHKHw0PIck8Ke0PIckVIEAGUoNWYdmOu05dOZfGI6v(rpSCib6OJo6Gfafi6IrlGmZHoPqhOyPNgGCjtRONgOrOvmQQtmAbKs6RPhOyPNgGCjtRONgOrOvmQQRaVqjDib6OJo6Md0fJwazMdD5Dyrc0rhD0rhD0rhSaOarhgAkJ1yFqNuOlgTaYmxDgTtfGWA0c01J(vfcRrl0HFKaD0rhD0rhD0pHLhyqPOtk01uY760mwDitc6Krxp6WqtzSg7d6xb6K)ZpsGo6OJo6OJo6WqYql6urbfEsc6urbLxrpnqxNty5bguk68b05cqr9k)ib6OJo6binqhjqhD0rhD0rhDyizOfDQOGcpjbDQOGYRORh9uPqc0rhD0dlhsewU1uafyCFF)xRapFR23)1CzOsmf7AY)xFFF6jN46x23)1Y9ZynqMkfT1afWcKj7J8AkGcmEzF)xdlIsI99F9jmOHSwbE(w9BgKgRbkGfiF3h5jtwlqZZtah76mnQolmgWXWAGmvkAvVnCXAGmvkARL7NXAGmvkARZ2iHWkRvzPSgitLIwLC)mwhjewz9zHXawvodOskW18P1rcHvw3VvCfgrVE4f66mnQYwJmgwFwymGRRTgitLI2A96rhagkj4q)YD0zkyOo0Nom4uqDspT8JeiXr2ciMIvNksqhOKTcjOxGxO8JeOJo6OddjdTOxGxOOZNqVg6klh66uGxOONgOduYwb9RMuOxJFKiSCibsGeibsGeibsGeibsGeibsGeibsGeibsGeibsGeibsGeibsGeRbEha851rcHvwhjewHUMpYKkMK2(xMjnMRpTDv)lZ8Lz2EYAfhNrmfRDSsGMNNash7K12Sgl088eq6(iVMrdN8EF3sT(DyEEl7lX1WIOKyxwdwuCJDDMgv2iHaUlRffyyLXUMASpGX(srETwgumJDYK1aGkkDSRPg7dyS(x(YC6n7ATmOyg76F5lZP3SJHjtwNPrLOadRmgwNPrfaOIshdRHkGySR1YGIzStMSgwaJXUwldkMXozY6mnQONbWyynN54WaKbL7JDTwgumJDYK1zAubu0UOKXWA6zam21uJ9bm23TjtMSpY)h7671FCqdzF6tXBDjxdJhtXYE)mwlXlsggRZwbAEEc4yxdKPsrBTE9OdadLeCOF5o6mfmuh6thgCkOoPNw(rcK4iBbetXQd)ib6OJo6WqYql6cmhiry5qcKajqcKajqcKyYAJ1ivafTtWqcU9rETcqmflDSRPIckJDnxPIwYwUDznTKTCRz2kb8qbexZeoU6T0R5JHIpZKmurVondoJ66UKTC0RzdTtWGHae8kn)e1vEEwtlzlxfWBL1gGRttfvc4KjRL4fjdJ1mBLaEOaIRvCCfl9AsRyPNgGCjt7td0i0RtZGZOUUE4fADYJAnqbSah7(iVFQXRUjMKmVPsMk5FEWJB12H(K32xQ9tnE1nXKK5nvYuj)ZdECR2o0N82(UTFQXRUjMKmVPsMk5FEWJB12H(K32xT9rEYAd3AM0ONe9uRvwJMsmf7yxRPm2XUwGklfujb79ZynqMkfT1afWcKH9rEnqbSaVQ9rEDMgvcuzPGkjgdRPakWG9(zSgitLI26mnQOakWyxwlqLLcQK4NSfynmKm0IUE9OdadLeCOF5o6mfmuh6thgCkOoPNw(rcK4iBbetXQZjS8adkLe0PIck8Ke0PIckVsc6CbOO4jjOZfGI6v(rc0rhD0nhOBlc6afl90aKlzAf90ancTIrf6Y7WIomKm0IovuqHNKGovuq5v0td015ewEGbLIoFaDUauuVYp6HLdjqhD0rhSaOarxmAbKzo0jf6afl90aKlzAf90ancTIrvDIrlGusFs9afl90aKlzAf90ancTIrvDf4fkPdjqhD0r3CGUy0ciZCOlVdlsGo6OJo6OJo6Gfafi6WqtzSg7d6KcDXOfqM5QZODQaewJwGUE0VQqynAHo8JeOJo6OJo6OJ(jS8adkfDsHUMsExNMXQdzsqNm66rhgAkJ1yFq)kqN8F(rc0rhD0rhD0rhgsgArNkkOWtsqNkkO8k6Pb66CclpWGsrNpGoxakQx5hjqhD0rpaPb6ib6OJo6OJo6OddjdTOtffu4jjOtffuEfD9ONkfsGo6OJEy5qIWYTMcOaJ777)Af45B1((VgOawG8DFKxFFF6jN46x23)1uafy8Y((VMcOaJFYwG1WqYql6hzlGykwDoHLhyqPKGovuqHNKGovuq5vsqNcOadEsc6uafy8k)ib6OJo6Md0TfbDgvvkk6Y7WIomKm0IozsqNm6HLdjqhD0rhSaOarxmAbKzo0jf6mQQu06eJwaPK(K6zuvPO1vGxOKoKaD0rhDWcGceDXOfmnoe0jf6mQQu0QdOslUYSgTGPXHOJy0ciZC8JeOJo6OBoqxmAbKPXHGoELqk0)JU8oSib6OJo6OJo6OddjdTO)Ne0)JeOJo6OhG0aDKaD0rhD0rhD0HHKHw0jtc6Krc0rhD0dlhsewoKajqcKajwl3pJ1azQu0wdlIsI99FnxgQetXUM8)1afWcKj7J8KjRvCCgXuSkWkbAEEciDStwlqZZtah76mnQolmgWXWAGmvkAvVnCXAGmvkARL7NXAGmvkARZ2iHWkRvzPSgitLIwLC)mwhjewz9zHXawvodOskW18P1rcHvw3VvCfgrVE4f66mnQYwJmgwFwymGRtUgitLI2A96rhagkj4q)YD0zkyOo0Nom4uqDspT8JeiXr2ciMIvNksqhOKTcjOxGxO8JeOJo6OddjdTOxGxOOZNqpj6klh66uGxOONgOduYwb9RMuONKFKiSCibsGeibsGeibsGeibsGeibsGeibsGeibsGeibsGeibsGeibsGeRbEha851rcHvwhjewHUMpYKkMK2(xMjnMRpTDv)lZ8Lz2EYABwJfAEEciDFKxZOHtEVVBPw)ompVL9L4AyrusSlRblkUXUotJkBKqa3L1IcmSYyxtn2hWyFPiVwldkMXozYAaqfLo21uJ9bmw)lFzo9MDTwgumJD9V8L50B2XWKjRZ0OsuGHvgdRZ0OcaurPJH1qfqm21AzqXm2jtwdlGXyxRLbfZyNmzDMgv0ZaymSMZCCyaYGY9XUwldkMXozY6mnQakAxuYyyn9mag7AQX(ag772KjRFP(JdAi7t3K1LCY(itESRVx)XbnK9PpfV1LCnmEmfl79ZyTeVizySoBfO55jGJDnqMkfT161JoamusWH(L7OZuWqDOpDyWPG6KEA5hjqIJSfqmfRo8JeOJo6OddjdTOlWCGeHLdjqcKajqcKajqIjRnwJubu0obdj42h51kaXuS0XUMkkOm210s2Yvb8wzTb460urLaUMwYwU1mBLaEOaIRzchx9w618XqXNzsgQOxNMbNrDDxYwo61SH2jyWqacELMFI6kppR5kv0s2YTltMSwIxKmmwZSvc4HciUwXXvS0RjTILEAaYLmTpnqJqVondoJ666HxO1jpQ1Vu)XbnK9XJeRl5AfhNrmfRDSsGMNNash7K1kRrtjMIDSR1ug7yxlqLLcQKG9(zSgitLI2AGcybYW(iVgOawGx1(iVotJkbQSuqLeJH1uafyWE)mwdKPsrBDMgvuafySlRfOYsbvs8t2DSggsgArxVE0bGHsco0VChDMcgQd9PddofuN0tl)ibsCKTaIPy15ewEGbLsc6urbfEsc6urbLxjbDUauu8Ke05cqr9k)ib6OJo6Md0TfbDGILEAaYLmTIEAGgHwXOcD5DyrhgsgArNkkOWtsqNkkO8k6Pb66CclpWGsrNpGoxakQx5h9WYHeOJo6OdwauGOlgTaYmh6KcDGILEAaYLmTIEAGgHwXOQoXOfqkPxx9afl90aKlzAf90ancTIrvDf4fkPdjqhD0r3CGUy0ciZCOlVdlsGo6OJo6OJo6Gfafi6WqtzSg7d6KcDXOfqM5QZODQaewJwGUE0VQqynAHo8JeOJo6OJo6OJ(jS8adkfDsHUMsExNMXQdzsqNm66rhgAkJ1yFq)kqN8F(rc0rhD0rhD0rhgsgArNkkOWtsqNkkO8k6Pb66CclpWGsrNpGoxakQx5hjqhD0rpaPb6ib6OJo6OJo6OddjdTOtffu4jjOtffuEfD9ONkfsGo6OJEy5qIWYTMcOaJ777)Af45B1((VgOawG8DFKxFFF6jN46x23)1uafy8Y((VMcOaJFYwG1WqYql6hzlGykwDoHLhyqPKGovuqHNKGovuq5vsqNcOadEsc6uafy8k)ib6OJo6Md0TfbDgvvkk6Y7WIomKm0IozsqNm6HLdjqhD0rhSaOarxmAbKzo0jf6mQQu06eJwaPKED1ZOQsrRRaVqjDib6OJo6Gfafi6IrlyACiOtk0zuvPOvhqLwCLznAbtJdrhXOfqM54hjqhD0r3CGUy0citJdbD8kHuO)hD5Dyrc0rhD0rhD0rhgsgAr)pjO)hjqhD0rpaPb6ib6OJo6OJo6OddjdTOtMe0jJeOJo6OhwoKiSCibsGeibsGeiXA5(zSgitLI2AyrusSV)R5YqLyk21K)VgOawGmzFKNmzTanppbDSRZ0O6SWyahdRbYuPOv92WfRbYuPOTwUFgRbYuPOToBJecRSwLLYAGmvkAvY9ZyDKqyL1Nfgdyv5mGkPaxZNwhjewzD)wXvye96HxORZ0OkBnYyy9zHXaUo5AGmvkAR1RhDayOKGd9l3rNPGH6qF6WGtb1j90YpsGehzlGykwDQibDGs2kKGEbEHYpsGo6OJomKm0IEbEHIEAGoqjBf0VAsHUUiry5wd8oa4ZRJecRSosiScDnFKjvmjT9VmtAmxFA7Q(xM5lZS9K1gU1mPrpzAGEQ12Sgl088eq6(iVMrdN8EF3sT(DyEEl7lX1WIOKyxwdwuCJDDMgv2iHaUlRffyyLXUMASpGX(srETwgumJDYK10ZaySRPg7dySVBtwNPrLOadRmgwZzoomazq5(yxRLbfZyNmznubeJDTwgumJDYK1aGkkDSRPg7dyS(x(YC6n7ATmOyg76F5lZP3SJHjtwNPrf9magdRHfWySR1YGIzStMSotJkGI2fLmgwNPrfaOIshdtwdualWXUpY7NA6MI3uP4nXKPQDlzsDtUd9jVTVu77)(UTFsSgV8Et3A))xRMUPitw3DOpzY9vBFKNmzFKtn21Cg6jO6oB8ISED2kqZZtah7AGmvkAR1RhDayOKGd9l3rNPGH6qF6WGtb1j90YpsGehzlGykwD4hjqhD0rhgsgArxG5ajclhsGeibsGeiXK1W4XuSS3pJ1s8IS2ynsfqr7emKGBFKxRaetXsh7AQOGYyxtlzlxfWBL1gGRttfvc4AAjB5wZSvc4HciUMjCC1BPxZhdfFMjzOIEDAgCg11DjB5OxZgANGbdbi4vA(jQR88SMRurlzl3yyYK1gU1mPrVlzlh6PwR44mIPyvGvc088eq6yNSMrdN8E)ul5)BjYBY)1srUwI3sMAh6tMATnRXcnppbKUpYRFhMN3Y(PwY)3sK3K)RLICTeVLm1o0Nm1AWIIBSRZ0OYgjeWDzTOadRm21uJ9bm2xkYR1YGIzStMSgaurPJDn1yFaJ1)YxMtVzNSotJkrbgwzmSMZCCyaYGY9XUwldkMXozYAOcig7ATmOyg7KjRHfWySR1YGIzStMSotJk6zamgwtpdGXUMASpGX(UnzDMgvafTlkzmSotJkaqfLogMSwGMNNao21Y9ZynqMkfT1azQu0QK7NX6iHWkRbYuPOv92WfRfJwWTMldvIPyx)FDKqyf6A(itQysA7FzM0yU(02v9VmZxMz71azQu0wRxp6aWqjbh6xUJotbd1H(0HbNcQt6PLFKajoYwaXuS6urc6aLSvib9c8cLFKaD0rhDZb62IGoJQkffD5DyrhgsgArpSCib6OJo6Md0TfbDgvvkAfTKTCvIrlqVar)QcH1Of6Wp66rNrvLIwrlzlxLy0c0VA0tHU8oSib6OJo6OJo6OZOQsrROLSLRsmAb6Kc9RkewJwOd)ib6OJo6OJo6OddjdTOxGxOOF1K6g6klh6aLSvqpnqVaVqr)Qjf6jrc0rhD0dlhsewoKajqcKajqcKajqcKajqcKajqcKajqcKajqcKajqI1aVda(86iHWktMmzDc7JCTuKNSb"
	--local weakaurasString2 = "dKJwdaGEGuTlOkVgk0(KcAMajMluuZwvDtGuUns2jqTxXUbTFfJcQ4VKYVPyOqLgmvgoLCqPIofuvhdrDoPs1crqlvkQflvz5u1dLk5POEmjpxPddyQQYKPutN4IsvDvPcxwY1H8tGK(SuAZi02rGNjf5RqrMMuOVdL40QmmOKgnuQzjf4KiYTaIRbfCEsvRePwgPY3KkLd58ctf2oSDEHf)12w(8cl6TQWk0kgQWk0kgknSp7kScTIHkScTIHIfafg3WerqLCgio4p0JBCJZxcYdhNYaxRtHmOvBTo)jRgwaWtzqqzCdDbTh6HEOh6Wfbfu2WyQtTo7GXLuxKa1oyngxsnt6XHvOvmuHbbKXP8fGu2JRN(Xbk)cGii99LnGhN(DG)qp0erqLCgioAnyCkdcknyCgFVf)HECJBCJZxcYdhNYGGY4A44W6qxq7Wk0kgknrVvfUiOGsKWyxxl2sa3KUWFdGDEHrBPblckF6fwa(fuYl8EW2FfW6ihMc9LlVircR(a7Mx49GT)kmUntQp)IegTLMa8lOecdJ2st9b2neg2dOQ8ctH(YLxKiH9MFLxyk0xU8IejmAlT1QuHWWRvPYl8EW2FfWnfjmAlnLHQhGecdBFejEk0x0Nxyk0xU8IejsyIgOWhOxbSUgd7R2ZaF6TQWNYadFWt0ugkRFjLDato8zhUldCTofYG2XXwN)KDCyQZXbAh8Oa(HXYzlyhWnPlmck(RTT85fwHwXqfMicQKZaXb)HECJBCJZxcYdhN4r14g6cAp0d9qp0rcdrup)12w(nGjh2(wRpGEskdmmjOuEIaQcZKug4IzGE3)e9Aw(RwrdaTwN6mODTo)jB4vauyCX1CqjCx9b)63CKWByD4rgpSINoqi3nqABSkGUJbmeMGaMCJ6ihjb"
	
	return {
		order = 5,
		type = "group",
		name = L["WeakAuras Interface"],
		cmdHidden  = true,
		get = function(info) return DS.db.weakauras[info[#info]] end,
		set = function(info, value) DS.db.weakauras[info[#info]] = value; DS:Build() end,
		args = {
			enable = {
				order = 1,
				type = "toggle",
				name = L["Enable"]
			},
			--[[weakaurasStrings = {
				order = 2,
				type = "group",
				name = L["WeakAuras Example Strings"],
				inline = true,
				args = {
					weakaurasString1 = {
						order = 1,
						type = "input",
						name = L["WeakAuras Import String 1"],
						desc = L["WeakAuras String to use when \"WeakAuras\" Display is selected. Copy & paste into WeakAuras to import."],
						width = "full",
						get = function()
							return weakaurasString
						end
					},
					weakaurasString2 = {
						order = 2,
						type = "input",
						name = L["WeakAuras Import String 2"],
						desc = L["WeakAuras String to use when \"WeakAuras\" Display is selected. Copy & paste into WeakAuras to import."],
						width = "full",
						get = function()
							return weakaurasString2
						end
					}
				}
			},]]--
			documentation = {
				order = 3,
				type = "group",
				inline = true,
				name = L["Documentation"],
				args = {
					text = {
						order = 1,
						type = "description",
						name = L["WeakAurasDocumentation"]
					}
				}
			}
		}
	}
end

local defaultSettings = {
	enable = false
}

DS:AddDisplayOptions("weakauras", displayOptions, defaultSettings)