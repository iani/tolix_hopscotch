T(\t2).start;
T(\t2).restart;
T(\t2).stop;
T(\t2).verbose = false;
T(\t2).verbose = true;
//:
T(\t2).pace = Pseq ([0.1, 1.5, 0.25, Pn(0.1, 10)], inf);

//:
T(\t2).pace = Pseq ([Pn(0.3, 5), Pn(0.1, 10)], inf);
//:
T(\t2).pace = Pseq ([Pn(0.3, 1), Pn(0.1, 20)], inf);
//:
T(\t2).pace = Pseq ([4, Pn(0.3, 1), Pn(0.1, 10)], inf);
//:
T(\t2).pace  = 0.05;

T(\t2).stop;
//:
//: 1 ...
T(\t2).vax (\v1, {
	(~k % 20 / 20) + 0.9 * Pan2.ar (PinkNoise.ar(0.1).perc (0.1), Rand (-1, 1));
	
}; );
//: 1 ...
T(\t2).vax (\v1, {
	~k % 100 / 100 + 2 *
	Pan2.ar (PinkNoise.ar(0.1).perc (0.1), Rand (-1, 1))}; );
//:
T(\t2).tax (\t1, { 0.1 * Pan2.ar (GrayNoise.ar(0.1).perc(0.1), Rand (-1, 1))});
//:
T(\t2).tax (\t1, { 0.1 * Pan2.ar (GrayNoise.ar(0.1).perc(2.1), Rand (-1, 1))});
//:
T(\t2).tax (\t1, { 0.1 * Pan2.ar (
	Ringz.ar (GrayNoise.ar(0.1).perc(0.5), [200, 300, 400, 500, 700].choose, 0.1), Rand (-1, 1))});
//: 2 ...
T(\t2).vax (\v1, { Pan2.ar (WhiteNoise.ar(0.1).perc (0.1), Rand (-1, 1))}; )
//: 3 ...
T(\t2).vax (\v1, { Pan2.ar (Resonz.ar (WhiteNoise.ar(0.1).perc (0.1), 5500, 5)); });
//: 3 ...
T(\t2).vax (\v2, { Pan2.ar (Resonz.ar (WhiteNoise.ar(0.1).perc (0.1), Rand(3000, 6000), 0.3)); });
//: 3 ...
T(\t2).vax (\v1, { Pan2.ar (Resonz.ar (WhiteNoise.ar(0.1).perc (0.1),
	~e.abs + 1 * 100 min: 4000, 10)); });
//: Bells
T(\t2).vax (\v1, { SinOsc.ar ( ~e.abs + 1 * 2000, 0, 0.1).perc (0.1) });

//: Bells
T(\t2).vax (\v1, { SinOsc.ar ( ~e.abs + 1 * 200, 0, 0.1).perc (0.5, 0.2) * 0.2 });

//: more bells
T(\t2).vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1).perc });

//: more bells
T(\t2).vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 800, 0, 0.1).perc (4.3 * ~e.abs) });

//: more bells
T(\t2).vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 800, 0, 0.1).perc (0.3 * ~e.abs) });

//: more bells
T(\t2).vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 400, 0, 0.1).perc (0.3 * ~e.abs) });

//: more bells
T(\t2).vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1)
	.perc (0.3 * (1 - ~e.abs) max: 0.1) });
//: more bells
T(\t2).vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * [1000, 1200], 0, 0.1)
	.perc (0.3 * (1 - ~e.abs) max: 0.1) });
//:




//:
T(\t2).tax (\t1, { Resonz.ar (WhiteNoise.ar(0.1).perc (0.5), Rand(100, 1000), 4 )});
//:
T(\t2).vr (\v1);
//:
T(\t2).vr (\v2);
//:
T(\t2).vax (\v2, { Resonz.ar(WhiteNoise.ar(0.1).perc (0.1), (1 - ~e.abs).abs * 2000, 0.1 )})
//:
T(\t2).va (\v1, {})

{ PinkNoise.ar(0.1).perc (0.1) }.play

//:
T(\t2).vax (\v1,
	{
		[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		SinOsc.ar(~e.abs * [150, 200].scramble + 200 min: 10000)
	}
)
//:
T(\t2).vax (\v1,
	{
		[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		LFSaw.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
	}
)
//:
T(\t2).vax (\v1,
	{
		[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		LFPulse.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
	}
)
//:
T(\t2).vax (\v1,
	{
		[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		[LFPulse, LFSaw, SinOsc].choose.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
	}
)
//:
T(\t2).tax (\t1, { GrayNoise.ar (0.1).perc });


