% Hechos: síntomas observados por el usuario
sintoma(pc1, no_enciende).
sintoma(pc1, ventilador_no_suena).
sintoma(pc1, sin_luces_led).

sintoma(pc2, enciende_y_apaga).
sintoma(pc2, pitidos_continuos).

% Diagnósticos posibles
diagnostico(PC, fuente_poder_defectuosa) :-
    sintoma(PC, no_enciende),
    sintoma(PC, ventilador_no_suena),
    sintoma(PC, sin_luces_led).

diagnostico(PC, problema_memoria_ram) :-
    sintoma(PC, enciende_y_apaga),
    sintoma(PC, pitidos_continuos).

% Tratamientos o soluciones sugeridas
solucion(PC, reemplazar_fuente_poder) :-
    diagnostico(PC, fuente_poder_defectuosa).

solucion(PC, revisar_o_reemplazar_ram) :-
    diagnostico(PC, problema_memoria_ram).

% Consulta general
mostrar_diagnostico_y_solucion(PC) :-
    diagnostico(PC, D),
    solucion(PC, S),
    format('El diagnóstico para ~w es: ~w.~n', [PC, D]),
    format('La solución sugerida es: ~w.~n', [S]).
