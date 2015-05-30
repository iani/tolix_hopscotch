T.start;
T.restart;
T.stop;
T.verbose = false;
T.verbose = true;

//: 1 ...
T.vax (\v1, { PinkNoise.ar(0.1).perc (0.1)}; )
//: 2 ...
T.vax (\v1, { WhiteNoise.ar(0.1).perc (0.1)}; )
//: 3 ...
T.vax (\v1, { Resonz.ar (WhiteNoise.ar(0.1).perc (0.1), 5500, 5)}; )
//: GLITCH!
T.vax (\v1, { Resonz.ar (WhiteNoise.ar(0.1).perc (0.5), ~e.abs + 1 * 2000, 4 )});

//: Bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 * 2000, 0, 0.1).perc (0.1) });

//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1).perc });

//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1).perc (4.3 * ~e.abs) });

//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1)
	.perc (0.3 * (1 - ~e.abs) max: 0.1) });
//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * [1000, 1200], 0, 0.1)
	.perc (0.3 * (1 - ~e.abs) max: 0.1) });
//:




//:
T.tax (t1, { Resonz.ar (WhiteNoise.ar(0.1).perc (0.5), ~e.abs + 1 * 2000, 4 )});
//:
T.vr (\v1);
//:
T.vr (\v2);
//:
T.vax (\v2, { Resonz.ar(WhiteNoise.ar(0.1).perc (0.1), (1 - ~e.abs).abs * 2000, 0.1 )})
//:
T.va (\v1, {})

{ PinkNoise.ar(0.1).perc (0.1) }.play

//:
T.vax (\v1,
	{
		[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		SinOsc.ar(~e.abs * [150, 200].scramble + 200 min: 10000)
	}
)
//:
T.vax (\v1,
	{
		[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		LFSaw.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
	}
)
//:
T.vax (\v1,
	{
		[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		LFPulse.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
	}
)
//:
T.vax (\v1,
	{
		[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		[LFPulse, LFSaw, SinOsc].choose.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
	}
)
//:
T.tax (\t1, { GrayNoise.ar (0.1).perc });