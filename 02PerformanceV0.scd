ServerMeter(Server.default)
//:
{ SinOsc.ar([400, 500], 0, 0.1)}.play;
//:

T.start;
T.restart;
T.stop;
T.verbose = false;
T.verbose = true;
//:
T.pace = Prand ([0.1, 1.5, 0.25, Pn(0.1, 100)], inf);

//:
T.pace = Pseq ([Pn(2.55, 2), Pn(0.01, 350)], inf);
//:
T.pace = Pseq ([Pn(0.3, 1), Pn(0.1, 20)], inf);
//:
T.pace = Pseq ([Pn(0.3, 1), Pn(0.1, 10)], inf);
//:
T.pace  = 1.6;
//: 1 ...
T.vax (\v1, { Pan2.ar (PinkNoise.ar(0.8).perc (0.5), Rand (-1, 1))}; );
//: 1 ...
T.vax (\v1, {
	~k % 100 / 100 + 2 *
	Pan2.ar (PinkNoise.ar(0.1).perc (0.1), Rand (-1, 1))}; );
//:
T.tax (\t1, { 1.1 * Pan2.ar (GrayNoise.ar(0.1).perc(0.1), Rand (-1, 1))});
//:
T.tax (\t1, { 1.1 * Pan2.ar (BrownNoise.ar(0.1).perc(2.1), Rand (-1, 1))});
//:
T.tax (\t1, { 0.04 * Pan2.ar (
	Ringz.ar (GrayNoise.ar(0.01).perc(0.5), [100, 200, 300, 400].choose, 0.1), Rand (-1, 1))});
//: 2 ...
T.vax (\v1, { Pan2.ar (WhiteNoise.ar(0.1).perc (0.01), Rand (-1, 1))}; )
//: 3 ...
T.vax (\v2, { Pan2.ar (Resonz.ar (WhiteNoise.ar(0.1).perc (0.1), 5500, 5)); });
//: 3 ...
T.vax (\v2, { Pan2.ar (Resonz.ar (WhiteNoise.ar(0.1).perc (0.1), Rand(3000, 6000), 0.3)); });
//: 3 ...
T.vax (\v1, { Pan2.ar (Resonz.ar (WhiteNoise.ar(0.1).perc (0.1),
	~e.abs + 1 * 100 min: 4000, 10)); });
//: Bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 * 200, 0, 0.1).perc (0.1) });

//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1).perc(0.1) });

//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 800, 0, 0.1).perc (4.3 * ~e.abs) });

//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 800, 0, 0.1).perc (0.3 * ~e.abs) });

//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 50, 0, 0.1).perc (0.3 * ~e.abs) });

//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1)
	.perc (0.3 * (1 - ~e.abs) max: 0.1) });
//: more bells
T.vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * [1000, 1200], 0, 0.1)
	.perc (0.3 * (1 - ~e.abs) max: 0.1) });
//:




//:!! 
T.tax (\t1, { Resonz.ar (WhiteNoise.ar(0.1).perc (0.5), Rand(100, 1000), 4 )});
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
		[0.3, 0.1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		LFSaw.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
	}
)
//:
T.vax (\v1,
	{
		[0.3, 1.1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		LFSaw.ar(~e.abs * [50, 150, 200].scramble + 100 min: 1000)
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


