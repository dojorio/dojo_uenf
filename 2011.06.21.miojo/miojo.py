def make_miojo(tempo_preparo, ampulheta_1, ampulheta_2):
    tempo_ampulheta_1 = ampulheta_1
    tempo_ampulheta_2 = ampulheta_2
    diferenca = abs(tempo_ampulheta_1 - tempo_ampulheta_2)
    tempo_total = 0

    contador = 0
    while (diferenca <= 0):
        if ampulheta_1 > ampulheta_2:
            tempo_total += ampulheta_2
            tempo_ampulheta_2 = ampulheta_2
            tempo_ampulheta_1 = diferenca
        else:
            tempo_total += ampulheta_1
            tempo_ampulheta_1 = ampulheta_1
            tempo_ampulheta_2 = diferenca
        if diferenca == tempo_preparo:
            if contador == 0:
                return tempo_total + tempo_preparo
            return tempo_total
        else:
            diferenca = (tempo_ampulheta_1 - tempo_ampulheta_2)
        contador += 1
    return False

