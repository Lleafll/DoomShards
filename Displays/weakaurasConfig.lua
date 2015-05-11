if not IsAddOnLoaded("WeakAuras") then return end


-- Get addon object
local CS = LibStub("AceAddon-3.0"):GetAddon("Conspicuous Spirits", true)
if not CS then return end


-- Libraries
local L = LibStub("AceLocale-3.0"):GetLocale("ConspicuousSpirits")


-- Options
local weakaurasString = "dK0IobakuPofQKvrQaVsKGzbkDlsv7sK0VurHHPQQJHcltK6zQcttf6AIOTrQ03qfnorOZHkyDQOOMhPc5EGc7tfL6GOOAHOipeffxufyJQI6JQOKrQII0jbvTsGMPkQUPiH2PQYpvbnuqrlLurpvYurPRks0xjvqJfvOZQs0BrrPMRkH7IIs2RYFLQgmLdtYIvrEmitgvDzQ2Su5ZQsJwvLtl0RjvOMnGBtk7wWVLYWvPwoINJ00jUUO2Ui47GkJxvKZRsA(QOi2p0JXyxPg7Kv0vPtLrQ)tnTEgCQ)9O7koKm5kTv8R4h7kQd0bZwmiRy6qw2dtXZp4z2ve)n2cSxV9vVKw(EviRXsIVVoHUpgRI8RyMwGEhHYTmfT6osIcfnDiZxb0u8JDvM69qakkDLqY(kIcYh7kTmGeh7KjR4JDDrOmGCDSR0YasCStMSsuaEqg7kTmGeh7KjRGauu6yxrJHxaFfm1j8huStwrAa(yxPLbK4yNmzYk)PBvG35httwbn29XySRUEyxh1L9P)ihsn5kI)gBb2R3(kXFsYeFLqIVVozSRKR3(kQOKmD1DdoN03UDIsAKvNnmwLPE)DdoNmMw5j4bzv9tX3GdTdjNORYuVphIYyAvo4j4bzLklTv3n4CYkgRGYuPP1)lY7RKOMZpzvmeLEOM2nGlo)(ySs8NKmXxbFqCsNcYVqXZ3c0lyMwGEhHYTmTUJKOqVifD(O6IdjNOPkVQvqnGgzS7JXEwxotKrICGr6)psQlh0nrDxN(Kh3x69CIpEO7FopQ7)JpsKtopY560Nm5(ESNpQBAotNMZetM(4JKj1n560N8X(oUpgtwbxKx(TVhPxP45JsSfua9cj((6e6y3hJXUsiX3xNm2vzQ331iAJPv08jpbpivURl(0QEMH5fBFXYCDYUQRr02hJvEcEqwvIka5NXZnI2zW8mrTIMp5j4bbMeVl(0QcMhC(5RYuVphIYyAvoeLv3aQRozvo4j4bzLklTvY1BFfvusMUcktLMw)ViVVsIAo)Kv5GqIVVozSR6AeT9XyYKjRcznws891j09LEvKF1HKtOXy1pp((t2xIRinrj(oTcOP4h7Qm17dEcozNwjkapiJDLwgqIJDYKv0BhASROXWlGVVhtwXh76Iqza56yxPLbK4yNmzfPb4JDLwgqIJDYKvzQ3tVDOX0kiafLo2v0y4fWxbtDc)bf7kTmGeh7kyQt4pOyhttMSIOG8XUsldiXXozYQm17Hauu6yAYQNoSRJ6Y(0RRUPMCY(sp2vxpSRJ6YEwVUCqxDt(NXdotu30moE8460FKZve)n2cSxV9vI)KKj(QNoSRJ6YEw)rozCKtghpEKdj(iX)jY560FKZvr(vhsoHw6vXqu6HAA3aU487JXkXFsYeFf8bXjDki)cfpFlqVGzAb6Dek3Y06osIc9Iu05JQloKCIMQ8Qwb1aAKXUpg7zD5mrgjYbgP))iPUCq3e1DD6tECFP3Zj(4HU)58OU)p(iro58iNRtFYK77XE(OUP5mDAotmz6JpsMu3KRtFYh774(ymzfCrE53(EKELINpkXwqb0lK47RtOJDFmg7kHeFFDYyxLPEFxJOnMwrZN8e8Gu5UU4tR6zgMxS9flZ1j7QUgrBFmw5j4bzvjQaKFgp3iANbZZe1kA(KNGheys8U4tRkyEW5NVkt9(CikJPv5quwDdOU6Kv5GNGhKvQS0wjxV9vurjz6kOmvAA9)I8(kjQ58twLdcj((6KXUQRr02hJjtMSkK1yjX3xNq3x6vcj((6KXUsUE7ROIsY0v3n4CsF72jkPrwD2WyvM693n4CYyALNGhKv1pfFdo0oKCIUkh8e8GSsLL2Qm17ZHOmMwD3GZjRsVcktLMw)ViVVsIAo)Kv)847pzFjUI0eL470kGMIFSRYuVp4j4KDALOa8Gm2vAzajo2jtwrVDOXUIgdVa((EmzfFSRlcLbKRJDLwgqIJDYKvKgGp2vAzajo2jtwLPEp92HgtRGauu6yxrJHxaFfm1j8huSR0YasCSRGPoH)GIDmnzYkIcYh7kTmGeh7KjRYuVhcqrPJPjt23JXU6Pd76OUSp9)tn5QRh21rDzpRxxoORUj)Z4bNjQBAghpECD6pY5kI)gBb2R3(kXFsYeFLqIVVozSRKR3(kQOKmD1DdoN03UDIsAKvNnmwLPE)DdoNmMw5j4bzv9tX3GdTdjNORYuVphIYyAvo4j4bzLklTv3n4CYQhRGYuPP1)lY7RKOMZpzvmeLEOM2nGlo)(ySs8NKmXxbFqCsNcYVqXZ3c0lyMwGEhHYTmTUJKOqVifD(O6IdjNOPkVQvqnGgzS7JXEwxotKrICGr6)psQlh0nrDxN(Kh3x69CIpEO7FopQ7)JpsKtopY560Nm5(ESNpQBAotNMZetM(4JKj1n560N8X(oUpgtwP45JsSfua9cj((6e6y3hJXUsiX3xNm2vzQ331iAJPv08jpbpivURl(0QEMH5fBFXYCDYUQRr02hJvEcEqwvIka5NXZnI2zW8mrTIMp5j4bbMeVl(0QcMhC(5RYuVphIYyAvoeLv3aQRozvo4j4bzLklTvY1BFfvusMUcktLMw)ViVVsIAo)Kv5GqIVVozSR6AeT9XyYKjRGlYl)23J0Rcznws891j09LEvKF1HKtO9y1pp((t2xIRinrj(oTcOP4h7Qm17dEcozNwjkapiJDLwgqIJDYKv0BhASROXWlGVVhtwXh76Iqza56yxPLbK4yNmzfPb4JDLwgqIJDYKvzQ3tVDOX0kiafLo2v0y4fWxbtDc)bf7kTmGeh7kyQt4pOyhttMSIOG8XUsldiXXozYQm17Hauu6yAYK9DCSRUEyxh1L9SED5GU6M8pJhCMOUPzC84X1P)iNRi(BSfyVE7Re)jjt8vpDyxh1L99iDQjxf5xDi5eAhxfdrPhQPDd4IZVpgRe)jjt8vWheN0PG8lu88Ta9cMPfO3rOCltR7ijk0lsrNpQU4qYjAQYRAfudOrg7(ySNpQBAotNMZetM(4JKj1n560N8X(sVV)77XEoXJCY5dDp())XJ6MMbdDxN(Kj33X9XyYk4I8YV99i9kfpFuITGcOxiX3xNqh7(ym2vcj((6KXUkt9(UgrBmTIMp5j4bPYDDXNw1ZmmVy7lwMRt2vDnI2(ySYtWdYQsubi)mEUr0odMNjQv08jpbpiWK4DXNwvW8GZpFvM695qugtRYHOS6gqD1jRYbpbpiRuzPTsUE7ROIsY0vqzQ006)f59vsuZ5NSkhes891jJDvxJOTpgtMmzviRXsIVVoHUV0Res891jJDLC92xrfLKPRUBW5K(2TtusJS6SHXQm17VBW5KX0kpbpiRQFk(gCODi5eDvo4j4bzLklTvzQ3NdrzmT6UbNtwDCfuMknT(FrEFLe1C(jR(5X3FY(sCfPjkX3Pvanf)yxLPEFWtWj70krb4bzSR0YasCStMSIE7qJDfngEb899yYk(yxxekdixh7kTmGeh7KjRinaFSR0YasCStMSkt9E6TdnMwbbOO0XUIgdVa(kyQt4pOyxPLbK4yxbtDc)bf7yAYKvefKp2vAzajo2jtwLPEpeGIshttMSVKJD1th21rDzpFu3)CGbJJ)tmro8GXJhPxN(J6UI4VXwG96TVs8NKmXxb1aAKXUpg75J6MMZ0P5mXKPp(izsDtUo9jFSV077)(ESNt8iNC(q3J))F8OUPzWq31PpzY9DCFmMSkYV6qYj0sUkgIsput7gWfNFFmwj(tsM4RGpioPtb5xO45Bb6fmtlqVJq5wMw3rsuOxKIoFuDXHKt0uLx1kfpFuITGcOxiX3xNqh7(ym2vcj((6KXUkt9(UgrBmTIMp5j4bPYDDXNw1ZmmVy7lwMRt2vDnI2(ySYtWdYQsubi)mEUr0odMNjQv08jpbpiWK4DXNwvW8GZpFvM695qugtRYHOS6gqD1jRYbpbpiRuzPTsUE7ROIsY0vqzQ006)f59vsuZ5NSkhes891jJDvxJOTpgtMmzfCrE53(EKEviRXsIVVoHUV0Res891jJDLC92xrfLKPRUBW5K(2TtusJS6SHXQm17VBW5KX0kpbpiRQFk(gCODi5eDvo4j4bzLklTvzQ3NdrzmT6UbNtwLCfuMknT(FrEFLe1C(jR(5X3FY(sCfPjkX3Pvanf)yxLPEFWtWj70krb4bzSR0YasCStMSIE7qJDfngEb899yYk(yxxekdixh7kTmGeh7KjRinaFSR0YasCStMSkt9E6TdnMwbbOO0XUIgdVa(kyQt4pOyxPLbK4yxbtDc)bf7yAYKvefKp2vAzajo2jtwLPEpeGIshttwD9WUoQl7z96YbD1n5Fgp4mrDtZ44XJRt)roNSpDh7QNoSRJ6Y(0RRUPMC11d76OUSp9P5m1KRi(BSfyVE7Re)jjt8vqnGgzS7JXE(iN6MysgCMoz6K)5ahECCD6t(yFP3Zh5u3etYGZ0jtN8ph4WJJRtFYh77XE(iN6MysgCMoz6K)5ahECCD6t(yFh3hJjRIHO0d10UbCX53hJvI)KKj(k4dIt6uq(fkE(wGEbZ0c07iuULP1DKef6fPOZhvxCi5env5vTsXZhLylOa6fs891j0XozvKFfZl0ySsfIAkj2cJDLMkgg7kOgqJOZ9XyfudOry((yScQb0iN1(ySkt9EHOcuaL4JPvY1BFfuMknTvuifG)CoaTI4sMeqRlhGKylW9nP9sCkfw0OIIiCew0OIIixclAuifGZryrJcPa8l5cbrdn0ql2HwOjObNQxrrt(5b0iUKjb0yalAmqZd8iiAOHgAanifaAsuZjWZJgmqdovVIMQe1CcLzZGzHGOHgAOb0GuaOjrn)CVtqdgObNQxr77ikn)mZg18Z9oHBjQ5e455cbrdn0ql2HMe1CY5ENGgEMad0(JM8ZdiiAOHgAOHgAOrCjtcOrffr4iSOrffrUebrdn0qZbOoAiiAOHgAOHgAOrCjtcOrHuaohHfnkKcWVebrdn0qZd8iOh4rqeebrqeebrWvcrfOakXFohGwrCjtcOPxpAqexjopANUI25aUQt)beNxr4(GuYfcIGD5aKeBbUVjTxItPWIgvueHJWIgvue5syrJ3befhHfnEhquxYfcIgAOHwSdTqtqdovVIIM8ZdOrCjtcOrffr4iSOrffrUeTuanUVjTxItPOPdqJ3be1LCHMh4rq0qdn0aAqka0KOMtGNhnyGgulqVJq5wM2tVJKOq7HtLQe1CcLzZGzHGOHgAOf7qtIAobEE0KFEabrdn0qdn0qdnGgKcanIRPIHy4fnyGMe1Cc88Pg1UvqcBuZrtpANLlSrnNBUqq0qdn0qdn0q7M0EjoLIgmqttj)svlg4MbSOXan9OrCnvmedVODgOX4pxiiAOHgAOHgAOrCjtcOrffr4iSOrffrUeTuanUVjTxItPOPdqJ3be1LCHGOHgAO5auhneen0qdn0qdn0iUKjb0OIIiCew0OIIixIME0sNgbrdn0qZd8iOh4rqeebrqeCffsb4x33)vkG7FQ99Fffsb4SxV9vqzQ00wDDF6zK4QN23)vzQ3tHua(oTsiQafqjo71BFfuMknTv8zIsITWkg)xrAIs899Fffsb4pTV)RGAanct7JXKjRes891jJDvM693n4CYyALC92xbLPstB1DdoN03UDIsAKv6OvqzQ006)f59vqzQ00w5j4bzv9tX3GdTdjNORYuVphIYyA1DdoNSIXQCWtWdYkvwAR8e8GqxPdzEpZtzbt4zg4pmLvFbt41j8S1kOFoKoELNGhKvqzQ006LR3(kpbpiRGYuPPTsVE0GiUsCE0oDfTZbCvN(dioVIW9bPKleeb7Ybij2cC3dlAqTCqGfTg5eLleen0qdnIlzsaTg5efnDeAmqtf4rJ7g5efTuanOwoiOD2WangCHGEGFYk4I8YV99i9QqwJLeFFDcDFmw9ZJV)K9L4kstuIVtRaAk(XUkt9(GNGt2PvIcWdYyxrJHxaFFPzSsldiXXozYkiafLo2v0y4fWxbtDc)bf7kTmGeh7kyQt4pOyhttMSkt9Erb4bzmTkt9EiafLoMwruq(yxPLbK4yNmzfPb4JDLwgqIJDYKvzQ3tVDOX0k(yxxekdixh7kTmGeh7KjRYuVhQPDsjJPv0BhASROXWlGVVhtMSkhes891jJDfuMknTv61JgeXvIZJ2PRODoGR60FaX5veUpiLCHGiyxoajXwGBUqq0qdn0iUKjb0es2rqpWJGiicIGiicIGi4Kj7JZXU66HDDux2N(0CMAYve)n2cSxV9vI)KKj(kOgqJm29XypFKtDtmjdotNmDY)CGdpoUo9jFSV075JCQBIjzWz6KPt(NdC4XX1Pp5J99ypFKtDtmjdotNmDY)CGdpoUo9jFSVJ7JXKvpDyxh1L9S(JCY4iNmoE8ihs8rI)tKZ1P)iNRIHO0d10UbCX53hJvI)KKj(k4dIt6uq(fkE(wGEbZ0c07iuULP1DKef6fPOZhvxCi5env5vTsXZhLylOa6fs891j0XozLqIVVozSRYuV)UbNtgtRKR3(kOmvAARGYuPP1lxV9vEcEqwD3GZj9TBNOKgzLoAfuMknT(FrEFfuMknTvEcEqwv)u8n4q7qYj6Q7gCozv6v5GNGhKvQS0w5j4bHUshY8EMNYcMWZmWFykR(cMWRt4zRvq)CiD8kpbpiRGYuPPTsVE0GiUsCE0oDfTZbCvN(dioVIW9bPKleeb7Ybij2cC3dlAqTCqGfTg5eLleen0qdnIlzsaTg5efnDeAPrtf4rJ7g5efTuanOwoiOD2WaT0CHGEGhbrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeCvM695qugttwPcrnLeBHXUstfdJDfudOr05(ySIcPa8N23)vqnGgHP9XyfudOroR9XyvM69crfOakXhtRKR3(kOmvAAROqka)5CaAfXLmjGwxoajXwG7Bs7L4ukSOrffr4iSOrffrUew0OqkaNJWIgfsb4xYfcIgAOHwSdTqtqdovVIIM8ZdOrCjtcOXaw0yGMh4rq0qdn0aAqka0KOMtGNhnyGgCQEfnvjQ5ekZoTE4u9kAQnYjkZcbrdn0qdObPaqtIA(5ENGgmqdovVI23ruA(zMnQ5N7Dc3suZjWZZfcIgAOHwSdnjQ5KZ9obn8mbgO9hn5Nhqq0qdn0qdn0qJ4sMeqJkkIWryrJkkICjcIgAOHMdqD0qq0qdn0qdn0qJ4sMeqJcPaCoclAuifGFjcIgAOHMh4rqpWJGiicIGiicIGReIkqbuI)CoaTI4sMeqtVE0GiUsCE0oDfTZbCvN(dioVIW9bPKleeb7Ybij2cCFtAVeNsHfnQOichHfnQOiYLWIgVdikoclA8oGOUKleen0qdTyhAHMGgCQEffn5NhqJ4sMeqJkkIWryrJkkICjAPaACFtAVeNsrthGgVdiQl5cnpWJGOHgAOb0GuaOjrnNappAWan4u9kAQsuZjuMDA9WP6v0uBKtuMfcIgAOHgqdsbGMe18Z9obnyGgCQEfnv2OMFU3jClrnNappxiiAOHgAXo0KOMtGNhn5Nhqq0qdn0qdn0qdObPaqJ4AQyigErdgOjrnNapFQrTBfKWg1C00J2z5cBuZ5Mleen0qdn0qdn0UjTxItPObd00uYVu1IbUzalAmqtpAextfdXWlANbAm(ZfcIgAOHgAOHgAexYKaAurreoclAurrKlrlfqJ7Bs7L4ukA6a04DarDjxiiAOHgAoa1rdbrdn0qdn0qdnIlzsanQOichHfnQOiYLOPhT0Prq0qdn08apc6b(vuifGFDF)xPaU)P23)vuifGZE92xbLPstB119PNrIREAF)xLPEpfsb470kHOcuaL4SxV9vqzQ00wrAIs899FfFMOKylSIX)vqnGgH57JXKjRI8RyEHw6vWf5LF77r6vHSglj((6e6(yS6NhF)j7lXvKMOeFNwb0u8JDvM69bpbNStRefGhKXUIgdVa((sZyLwgqIJDYKvqakkDSROXWlGVcM6e(dk2vAzajo2vWuNWFqXoMMmzvM69IcWdYyAvM69qakkDmTIOG8XUsldiXXozYksdWh7kTmGeh7KjRYuVNE7qJPv8XUUiugqUo2vAzajo2jtwLPEput7KsgtRO3o0yxrJHxaFFpMmzvoiK47Rtg7kOmvAAR0RhniIReNhTtxr7Cax1P)aIZRiCFqk5cbrWUCasITa3CHGOHgAOrCjtcOjKSJGEGhbrqeebrqeebrWjt2xIJD1th21rDzF6)NAYvxpSRJ6Y(0NMZutUI4VXwG96TVs8NKmXxLdcj((6KXUcktLM2k96rdI4kX5r70v0ohWvD6pG48kc3hKsUqqeSlhGKylWnxiiAOHgAexYKaAcj7iOh4rqeebrqeebrqeCYQyik9qnTBaxC(9XyL4pjzIVc(G4KofKFHINVfOxWmTa9ocLBzADhjrHErk68r1fhsortvEvRu88rj2ckGEHeFFDcDStwf5xX8cThRuHOMsITWyxPPIHXUsiQafqjo71BFfuMknTv8zIsITWkg)xb1aAeMVpgRGAanYzTpgRYuVxiQafqj(yALC92xbLPstBffsb4pNdqRiUKjb06Ybij2cCFtAVeNsHfnQOichHfnQOiYLWIgfsb4Cew0Oqka)sUqq0qdn0IDOfAcAWP6vu0KFEanIlzsangWIgd08apcIgAOHgqdsbGMe1Cc88Obd0Gt1ROPkrnNqz2p0dNQxrtTrorzwiiAOHgAanifaAsuZp37e0GbAWP6v0(oIsZpZSrn)CVt4wIAobEEUqq0qdn0IDOjrnNCU3jOHNjWaT)Oj)8acIgAOHgAOHgAexYKaA)HfT)iiAOHgAoa1rdbrdn0qdn0qdnIlzsangWIgdeen0qdnpWJGEGhbrqeebrqeebxjevGcOe)5CaAfXLmjGME9ObrCL48OD6kANd4Qo9hqCEfH7dsjxiic2LdqsSf4(M0EjoLclAurreoclAurrKlHfnEhquCew04DarDjxiiAOHgAXo0cnbn4u9kkAYppGgXLmjGgvueHJWIgvue5s0sb04(M0EjoLIMoanEhquxYfAEGhbrdn0qdObPaqtIAobEE0GbAqTa9ocLBzAp9osIcThovQsuZjuM9d9WP6v0uBKtuMfcIgAOHgqdsbGMe18Z9obnyGgulqVJq5wM2tVJKOq7HtLkBuZp37eULOMtGNNleen0qdTyhAsuZjWZJM8ZdiiAOHgAOHgAOb0GuaOrCnvmedVObd0KOMtGNp1O2TcsyJAoA6r7SCHnQ5CZfcIgAOHgAOHgA3K2lXPu0GbAAk5xQAXa3mGfngOPhnIRPIHy4fTZang)5cbrdn0qdn0qdnIlzsanQOichHfnQOiYLOLcOX9nP9sCkfnDaA8oGOUKleen0qdnhG6OHGOHgAOHgAOHgXLmjGgvueHJWIgvue5s00Jw60iiAOHgAEGhb9a)kkKcWVUV)Rua3)u77)kkKcWzVE7RGYuPPT66(0ZiXvpTV)RYuVNcPa8DAfudOr05(ySI0eL477)kkKcWFAF)xb1aAeM2hJjtwjK47Rtg7Qm17VBW5KX0k56TVcktLM2Q7gCoPVD7eL0iR0rRGYuPP1)lY7RGYuPPTYtWdYkM5NsqlfDkv96RYuVphIYyA1DdoNS6XQCWtWdYkvwAR8e8GqxPdzEpZtzbt4zg4pmLvFbt41j8S1kOFoKoELNGhKvqzQ006LR3(kpbpiRGYuPPTsVE0GiUsCE0oDfTZbCvN(dioVIW9bPKleeb7Ybij2cC3dlAqTCqGfTg5eLleen0qdnIlzsaTg5efnDeApqtf4rJ7g5efTuanOwoiOD2WaThCHGEGhbrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeCYQqwJLeFFDcDFmwbxKx(TVhPx9ZJV)K9L4kstuIVtRaAk(XUkt9(GNGt2PvIcWdYyxrJHxaFFPzSsldiXXozYkiafLo2v0y4fWxbtDc)bf7kTmGeh7kyQt4pOyhttMSkt9Erb4bzmTkt9EiafLoMwruq(yxPLbK4yNmzfPb4JDLwgqIJDYKvzQ3tVDOX0k(yxxekdixh7kTmGeh7KjRYuVhQPDsjJPv0BhASROXWlGVVhtMScQb0iJDFm2Zh5u3etYGZ0jtN8ph4WJJRtFYh7l9E(iN6MysgCMoz6K)5ahECCD6t(yFp2Zh5u3etYGZ0jtN8ph4WJJRtFYh774(ymzY(4Wyxb1aAKXUpg75JCQBIjzWz6KPt(NdC4XX1Pp5J9LEpFKtDtmjdotNmDY)CGdpoUo9jFSVh75JCQBIjzWz6KPt(NdC4XX1Pp5J9DCFmMSkhes891jJDfuMknTv61JgeXvIZJ2PRODoGR60FaX5veUpiLCHGiyxoajXwGBUqq0qdn0iUKjb0es2rqpWJGiicIGiicozfXFJTa71BFL4pjzIV66HDDux2N(0CMAYvpDyxh1L99iDQjxfdrPhQPDd4IZVpgRuqsSfOJDvxmeP)g7k(wpuMknTDAYKvI)KKj(k4dIt6uq(fkE(wGEbZ0c07iuULP1DKef6fPOZhvxCi5env5vTsXZhLylOa6fs891j0XozLqIVVozSRYuV)UbNtgtRKR3(kOmvAARGYuPP1lxV9vEcEqwD3GZj9TBNOKgzLoAfuMknT(FrEFfuMknTvEcEqwv)u8n4q7qYj6Q7gCoz1Xv5GNGhKvQS0w5j4bHUshY8EMNYcMWZmWFykR(cMWRt4zRvq)CiD8kpbpiRGYuPPTsVE0GiUsCE0oDfTZbCvN(dioVIW9bPKleeb7Ybij2cC3dlAqTCqGfTg5eLleen0qdnIlzsaTg5efnDeAhrtf4rJ7g5efTuanOwoiOD2WaTJCHGEGhbrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeebrqeCvM695qugttwPcrnLeBHXUstfdJDLqubkGsC2R3(kOmvAARYuVNcPa8DAfudOryAFmwb1aAKZAFmwLPEVqubkGs8X0k56TVcktLM2kkKcWFohGwrCjtcO1LdqsSf4(M0EjoLclAurreoclAurrKlHfnkKcW5iSOrHua(LCHGOHgAOf7ql0e0Gt1ROOj)8aAexYKaAmGfngO5bEeen0qdnGgKcanjQ5e45rdgObNQxrtvIAoHYSpQhovVIMAJCIYSqq0qdn0aAqka0KOMFU3jObd0Gt1RO9DeLMFMzJA(5ENWTe1Cc88CHGOHgAOf7qtIAo5CVtqdptGbA)rt(5been0qdn0qdn0iUKjb0(dlA)rq0qdn0CaQJgcIgAOHgAOHgAexYKaAmGfngiiAOHgAEGhb9apcIGiicIGiicUIcPaC2R3(kOmvAAReIkqbuI)CoaTI4sMeqtVE0GiUsCE0oDfTZbCvN(dioVIW9bPKleeb7Ybij2cCFtAVeNsHfnQOichHfnQOiYLWIgVdikoclA8oGOUKleen0qdTyhAHMGgCQEffn5NhqJ4sMeqJkkIWryrJkkICjAPaACFtAVeNsrthGgVdiQl5cnpWJGOHgAOb0GuaOjrnNappAWanOwGEhHYTmTNEhjrH2dNkvjQ5ekZ(OE4u9kAQnYjkZcbrdn0qdObPaqtIA(5ENGgmqdQfO3rOClt7P3rsuO9WPsLnQ5N7Dc3suZjWZZfcIgAOHwSdnjQ5e45rt(5been0qdn0qdn0aAqka0iUMkgIHx0GbAsuZjWZNAu7wbjSrnhn9ODwUWg1CU5cbrdn0qdn0qdTBs7L4ukAWannL8lvTyGBgWIgd00JgX1uXqm8I2zGgJ)CHGOHgAOHgAOHgXLmjGgvueHJWIgvue5s0sb04(M0EjoLIMoanEhquxYfcIgAOHMdqD0qq0qdn0qdn0qJ4sMeqJkkIWryrJkkICjA6rlDAeen0qdnpWJGEGFffsb4x33)vkG7FQ99FfFMOKylSIX)vx3NEgjU6P99Fffsb4pTV)RGAancZ3hJvKMOeFF)xDtCQlRua3)uWmdq9vqnGgrN7JXKjRI8RyEH2XvWf5LF77r6vHSglj((6e6(yS6NhF)j7lXvKMOeFNwb0u8JDvM69bpbNStRefGhKXUIgdVa((sZyLwgqIJDYKvqakkDSROXWlGVcM6e(dk2vAzajo2vWuNWFqXoMMmzvM69IcWdYyAvM69qakkDmTIOG8XUsldiXXozYksdWh7kTmGeh7KjRYuVNE7qJPv8XUUiugqUo2vAzajo2jtwLPEput7KsgtRO3o0yxrJHxaFFpMmzY(y8FSRE6WUoQl7t3KPMCvoiK47Rtg7kOmvAAR0RhniIReNhTtxr7Cax1P)aIZRiCFqk5cbrWUCasITa3CHGOHgAOrCjtcOjKSJGEGhbrqeebrqeebrWjRi(BSfyVE7Re)jjt8vqnGgzS7JXE(iN6MysgCMoz6K)5ahECCD6t(yFP3Zh5u3etYGZ0jtN8ph4WJJRtFYh77XE(iN6MysgCMoz6K)5ahECCD6t(yFh3hJjRIHO0d10UbCX53hJvkij2c0XUIkkIm2v8TEAlh43Pv0woWVc(G4KofKFbZ55pmqVqh6kDmZZef9Iu05JQlQwoWtVG11UbCMCaGZ08RNA79DfTLd89q)uHGdSkfvuXjtMSs8NKmXxbFqCsNcYVqXZ3c0lyMwGEhHYTmTUJKOqVifD(O6IdjNOPkVQvkE(OeBbfqVqIVVoHo2jRes891jJDvM693n4CYyALC92xbLPstBfuMknTE56TVYtWdYQ7gCoPVD7eL0iR0rRGYuPP1)lY7RGYuPPTYtWdYQ6NIVbhAhsorxD3GZjRsUkh8e8GSsLL2kpbpi0v6qM3Z8uwWeEMb(dtz1xWeEDcpBTc6NdPJx5j4bzfuMknTv61JgeXvIZJ2PRODoGR60FaX5veUpiLCHGiyxoajXwG7EyrdQLdcSO1iNOCHGOHgAOrCjtcO1iNOOPJqljAQapAC3iNOOLcOb1YbbTZggOLKle0d8iicIGiicIGiicIGiicIGiicIGiicIGiicIGiicIGiicIGiicIGRYuVphIYyAYkviQPKylm2vAQyySReIkqbuIZE92xbLPstBfFMOKylSIX)vqnGgH57JXkOgqJCw7JXQm17fIkqbuIpMwjxV9vqzQ00wrHua(Z5a0kIlzsaTUCasITa33K2lXPuyrJkkIWryrJkkICjSOrHuaohHfnkKcWVKleen0qdTyhAHMGgCQEffn5NhqJ4sMeqJbSOXanpWJGOHgAOb0GuaOjrnNappAWan4u9kAQsuZjuMDs9WP6v0uBKtuMfcIgAOHgqdsbGMe18Z9obnyGgCQEfTVJO08ZmBuZp37eULOMtGNNleen0qdTyhAsuZjN7DcA4zcmq7pAYppGGOHgAOHgAOHgXLmjG2Fyr7pcIgAOHMdqD0qq0qdn0qdn0qJ4sMeqJbSOXabrdn0qZd8iOh4rqeebrqeCLqubkGs8NZbOvexYKaA61JgeXvIZJ2PRODoGR60FaX5veUpiLCHGiyxoajXwG7Bs7L4ukSOrffr4iSOrffrUew04DarXryrJ3be1LCHGOHgAOf7ql0e0Gt1ROOj)8aAexYKaAurreoclAurrKlrlfqJ7Bs7L4ukA6a04DarDjxO5bEeen0qdnGgKcanjQ5e45rdgOb1c07iuULP907ijk0E4uPkrnNqz2j1dNQxrtTrorzwiiAOHgAanifaAsuZp37e0GbAqTa9ocLBzAp9osIcThovQSrn)CVt4wIAobEEUqq0qdn0IDOjrnNappAYppGGOHgAOHgAOHgqdsbGgX1uXqm8IgmqtIAobE(uJA3kiHnQ5OPhTZYf2OMZnxiiAOHgAOHgAODtAVeNsrdgOPPKFPQfdCZaw0yGME0iUMkgIHx0od0y8Nleen0qdn0qdn0iUKjb0OIIiCew0OIIixIwkGg33K2lXPu00bOX7aI6sUqq0qdn0CaQJgcIgAOHgAOHgAexYKaAurreoclAurrKlrtpAPtJGOHgAO5bEe0d8ROqka)6((VsbC)tTV)ROqkaN96TVcktLM2QR7tpJex90((Vkt9EkKcW3PvqnGgrN7JXkstuIVV)ROqka)P99FfudOryAFmMmzvKFfZl0sUkK1yjX3xNq3hJvWf5LF77r6v)847pzFjUI0eL470kGMIFSRYuVp4j4KDALOa8Gm2v0y4fW3xAgR0YasCStMSccqrPJDfngEb8vWuNWFqXUsldiXXUcM6e(dk2X0KjRYuVxuaEqgtRYuVhcqrPJPvefKp2vAzajo2jtwrAa(yxPLbK4yNmzvM690BhAmTIp21fHYaY1XUsldiXXozYQm17HAANuYyAf92Hg7kAm8c477XKjRUEyxh1L9PpnNPMCY(yWySRGAanYy3hJ98rDtZz60CMyY0hFKmPUjxN(Kp2x699FFp2ZjEKtoFO7X))pEu30myO760Nm5(oUpgtwLdcj((6KXUcktLM2k96rdI4kX5r70v0ohWvD6pG48kc3hKsUqqeSlhGKylWnxiiAOHgAexYKaAcj7iOh4rqeebrqeebrqeCYkI)gBb2R3(kXFsYeF1th21rDzFCiXutUsiX3xNm2vzQ3F3GZjJPvqzQ006)f59vqzQ00wjxV9vqzQ00wbLPstRxUE7R8e8GS6UbNt6B3orjnYkD0kpbpiRQFk(gCODi5eD1DdoNSk5kpbpi0v6qM3Z8uwWeEMb(dtz1xWeEDcpBTkt9(CikJPvq)CiD8kpbpiRGYuPPTsVE0GiUsCE0oDfTZbCvN(dioVIW9bPKleeb7Ybij2cC3dlAqTCqGfTg5eLleen0qdnIlzsaTg5efTuanOwoiOD2WanDrqpWVkh8e8GSsLL2KvXqu6HAA3aU487JXkfKeBb6yxrffrg7kAlh47H(PcbhyvkQOItwrB5a)k4dIt6uq(fmNN)Wa9cDOR0Xmptu0lsrNpQUOA5ap9cwx7gWzYbaotZVEQT33v8TEAlh43Pjtwj(tsM4RGpioPtb5xO45Bb6fmtlqVJq5wMw3rsuOxKIoFuDXHKt0uLx1kviQPKylm2vAQyySReIkqbuIZE92xbLPstBfFMOKylSIX)vqnGgH57JXkOgqJCw7JXQm17fIkqbuIpMwjxV9vqzQ00wrHua(Z5a0kIlzsaTUCasITa33K2lXPuyrJkkIWryrJkkICjSOrHuaohHfnkKcWVKleen0qdTyhAHMGgCQEffn5NhqJ4sMeqJbSOXanpWJGOHgAOb0GuaOjrnNappAWan4u9kAQsuZjuMTU6Ht1ROP2iNOmleen0qdnGgKcanjQ5N7DcAWan4u9kAFhrP5Nz2OMFU3jClrnNappxiiAOHgAXo0KOMto37e0WZeyG2F0KFEabrdn0qdn0qdnIlzsaT)WI2Feen0qdnhG6OHGOHgAOHgAOHgXLmjGgdyrJbcIgAOHMh4rqpWJGiicIGiicIGReIkqbuI)CoaTI4sMeqtVE0GiUsCE0oDfTZbCvN(dioVIW9bPKleeb7Ybij2cCFtAVeNsHfnQOichHfnQOiYLWIgVdikoclA8oGOUKleen0qdTyhAHMGgCQEffn5NhqJ4sMeqJkkIWryrJkkICjAPaACFtAVeNsrthGgVdiQl5cnpWJGOHgAOb0GuaOjrnNappAWanOwGEhHYTmTNEhjrH2dNkvjQ5ekZwx9WP6v0uBKtuMfcIgAOHgqdsbGMe18Z9obnyGgulqVJq5wM2tVJKOq7HtLkBuZp37eULOMtGNNleen0qdTyhAsuZjWZJM8ZdiiAOHgAOHgAOb0GuaOrCnvmedVObd0KOMtGNp1O2TcsyJAoA6r7SCHnQ5CZfcIgAOHgAOHgA3K2lXPu0GbAAk5xQAXa3mGfngOPhnIRPIHy4fTZang)5cbrdn0qdn0qdnIlzsanQOichHfnQOiYLOLcOX9nP9sCkfnDaA8oGOUKleen0qdnhG6OHGOHgAOHgAOHgXLmjGgvueHJWIgvue5s00Jw60iiAOHgAEGhb9a)kkKcWVUV)Rua3)u77)kkKcWzVE7RGYuPPT66(0ZiXvpTV)RYuVNcPa8DAfudOr05(ySI0eL477)kkKcWFAF)xb1aAeM2hJjtwbxKx(TVhPxP45JsSfua9cj((6e6yNSkK1yjX3xNq3hJvr(vmVqlzkS6NhF)j7lXvKMOeFNwb0u8JDvM69bpbNStRefGhKXUIgdVa((sZyLwgqIJDYKv0BhASROXWlGVVhtwLPEVOa8GmMwXh76Iqza56yxPLbK4yNmzfrb5JDLwgqIJDYKvqakkDSROXWlGVcM6e(dk2vAzajo2vWuNWFqXoMMmzvM690BhAmTI0a8XUsldiXXozYQm17HAANuYyAvM69qakkDmnz11d76OUSp9P5m1Kt2hJ0JDfFKEdOUY6pjRwLdcj((6KXUcktLM2k96rdI4kX5r70v0ohWvD6pG48kc3hKsUqqeSlhGKylWnxiiAOHgAexYKaAcj7iOh4rqeebrqeebNSI4VXwG96TVs8NKvXqu6HAA3aU487JXkfKeBb6yxrffrg7kAlh47H(PcbhyvkQOItwrB5a)k4dIt6uq(fmNN)Wa9cDOR0Xmptu0lsrNpQUOA5ap9cwx7gWzYbaotZVEQT33v8TEAlh4httMSsiX3xNm2vY1BFfuMknTvqzQ006)f59vsuZ5xXNjkj2cR(VcktLMwVC92x5j4bzfuMknTv61JgeXvIZJ2PRODoGR60FaX5veUpiLCHGiyxoajXwG7EyrdQLdcSO1iNOCHGOHgAOf7ql0e0Gt1ROOj)8aAexYKaAEGhbrdn0ql2HwOjObNQxr7PTCGVxIAoAncANLlSrnNBUqtpAWP6v0EAlh47LOMJ2zJwA0KFEabrdn0qdn0qdn4u9kApTLd89suZrdgODwUWg1CU5cbrdn0qdn0qdnIlzsaTg5efTZggpqtf4rdQLdcAPaAnYjkANnmqljcIgAOHMh4rqpWJGiicIGiicIGiicIGiicIGiicIGiicIGiicIGiicUYtWdcDLoK59mpLfmHNzG)Wuw9fmHxNWZwRG(5q64vEcEqMScUiV8BpFm5)hjYzY)htZ4yIpsMED6tMEviRXsIVVoHUpgR(5X3FYE(yY)psKZK)pMMXXeFKm960Nm9Qi)kMxOvTCGFfqtXp2vzQ3h8eCYoTsuaEqg7kAm8c47lnJvAzajo2jtwbbOO0XUIgdVa(kyQt4pOyNSkt9Erb4bzmTIp21fHYaY1XUsldiXXozYkIcYh7kTmGeh7KjRinaFSR0YasCStMSkt9E6TdnMwrVDOXUIgdVa((EmzvM69qnTtkzmTkt9EiafLoMMmzYQe2hJJPzmzda"
local weakaurasString2 = "dKJwdaGEGuTlOkVgk0(KcAMajMluuZwvDtGuUns2jqTxXUbTFfJcQ4VKYVPyOqLgmvgoLCqPIofuvhdrDoPs1crqlvkQflvz5u1dLk5POEmjpxPddyQQYKPutN4IsvDvPcxwY1H8tGK(SuAZi02rGNjf5RqrMMuOVdL40QmmOKgnuQzjf4KiYTaIRbfCEsvRePwgPY3KkLd58ctf2oSDEHf)12w(8cl6TQWk0kgQWk0kgknSp7kScTIHkScTIHIfafg3WerqLCgio4p0JBCJZxcYdhNYaxRtHmOvBTo)jRgwaWtzqqzCdDbTh6HEOh6Wfbfu2WyQtTo7GXLuxKa1oyngxsnt6XHvOvmuHbbKXP8fGu2JRN(Xbk)cGii99LnGhN(DG)qp0erqLCgioAnyCkdcknyCgFVf)HECJBCJZxcYdhNYGGY4A44W6qxq7Wk0kgknrVvfUiOGsKWyxxl2sa3KUWFdGDEHrBPblckF6fwa(fuYl8EW2FfW6ihMc9LlVircR(a7Mx49GT)kmUntQp)IegTLMa8lOecdJ2st9b2neg2dOQ8ctH(YLxKiH9MFLxyk0xU8IejmAlT1QuHWWRvPYl8EW2FfWnfjmAlnLHQhGecdBFejEk0x0Nxyk0xU8IejsyIgOWhOxbSUgd7R2ZaF6TQWNYadFWt0ugkRFjLDato8zhUldCTofYG2XXwN)KDCyQZXbAh8Oa(HXYzlyhWnPlmck(RTT85fwHwXqfMicQKZaXb)HECJBCJZxcYdhN4r14g6cAp0d9qp0rcdrup)12w(nGjh2(wRpGEskdmmjOuEIaQcZKug4IzGE3)e9Aw(RwrdaTwN6mODTo)jB4vauyCX1CqjCx9b)63CKWByD4rgpSINoqi3nqABSkGUJbmeMGaMCJ6ihjb"
CS:AddDisplayOptions("weakauras",
	{
		order = 5,
		type = "group",
		name = L["WeakAuras Interface"],
		cmdHidden  = true,
		args = {
			enable = {
				order = 1,
				type = "toggle",
				name = L["Enable"],
				get = function()
					return CS.db.display == "WeakAuras"
				end,
				set = function(info, val)
					if val then
						CS.db.display = "WeakAuras"
						--timerFrame:HideChildren()
						--timerFrame:Lock()
					end
					CS:Build()
				end
			},
			weakaurasStrings = {
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
			},
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
	},
	{
	}
)