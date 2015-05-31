{Pan2.ar (Klank.ar(`[[800, 1071, 1353, 1723] * (1 rrand: 2), nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) }.play;

{ WhiteNoise.ar (0.1.dup)}.play;


{ Klank.ar(`[[200, 671, 1153, 1723], nil, [1, 1, 1, 1]], PinkNoise.ar([0.007, 0.007])) }.play;


\t1.ft = 5;


({ Klank.ar(`[([800, 1071, 1353, 1723] * (2 rrand: 5)), nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)) } => \t1);

Chuck (\t1).inspect;


{ Dust.ar (600, 0.1) } => \test;

{ WhiteNoise.ar (0.1) * Decay.kr (Dust.kr (10)) } => \test;

{ Silent.ar () } => \test;

//:
{ Pan2.ar (Klank.ar(`[[800, 1071, 1353, 1723] * (1 rrand: 2), nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 100, 200) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 200, 300) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 300, 400) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 400, 500) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 500, 600) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 200, 2500) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (150, 200, 8300) , nil, 0.0001], PinkNoise.ar(0.007)), 0) } => \test;
//:
{
    Decay.kr ( Impulse.kr(LFNoise2.kr(0.2).range(0.2, 10)) ) *
	Pan2.ar (Klank.ar(`[Array.rand (4, 500, 630) , nil, 0.1], PinkNoise.ar(0.05)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 400, 500) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 400, 500) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 400, 500) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:
{ Pan2.ar (Klank.ar(`[Array.rand (4, 400, 500) , nil, [1, 1, 1, 1]], PinkNoise.ar(0.007)), 0) } => \test;
//:






