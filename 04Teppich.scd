{Pan2.ar (Klank.ar(`[[800, 1071, 1353, 1723] * (1 rrand: 2), nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) }.play;

{ WhiteNoise.ar (0.1.dup)}.play;


{ Klank.ar(`[[200, 671, 1153, 1723], nil, [1, 1, 1, 1]], PinkNoise.ar([0.007, 0.007])) }.play;


\t1.ft = 5;


({ Klank.ar(`[([800, 1071, 1353, 1723] * (2 rrand: 5)), nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)) } => \t1);

Chuck (\t1).inspect;