

T (\voice2). start;
T (\voice2). restart;
T (\voice2). stop;
T (\voice2). verbose = false;
T (\voice2). verbose = true;
//:
T (\voice2). pace = Pseq ([0.1, 0.5, 0.25], inf);
//:
T (\voice2). pace  = 0.5;
//: 1 ...
T (\voice2). vax (\v1, { Pan2.ar (PinkNoise.ar(0.1).perc (0.1), Rand (-1, 1))}; );
//: 1 ...
T (\voice2). vax (\v1, {
				~k % 100 / 10 + 0.001 *
				Pan2.ar (PinkNoise.ar(0.1).perc (0.1), Rand (-1, 1))}; );
//:
T (\voice2). tax (\t1, { Pan2.ar (GrayNoise.ar(0.1).perc(0.1), Rand (-1, 1))});
//: 2 ...
T (\voice2). vax (\v1, { Pan2.ar (WhiteNoise.ar(0.1).perc (0.1), Rand (-1, 1))}; )
//: 3 ...
T (\voice2). vax (\v1, { Pan2.ar (Resonz.ar (WhiteNoise.ar(0.1).perc (0.1), 5500, 5)); });
//: 3 ...
T (\voice2). vax (\v1, { Pan2.ar (Resonz.ar (WhiteNoise.ar(0.1).perc (0.1),
												~e.abs + 1 * 100 min: 4000, 10)); });
//: Bells
T (\voice2). vax (\v1, { SinOsc.ar ( ~e.abs + 1 * 2000, 0, 0.1).perc (0.1) });

//: more bells
T (\voice2). vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1).perc });

//: more bells
T (\voice2). vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1).perc (4.3 * ~e.abs) });

//: more bells
T (\voice2). vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * 1000, 0, 0.1)
						.perc (0.3 * (1 - ~e.abs) max: 0.1) });
//: more bells
T (\voice2). vax (\v1, { SinOsc.ar ( ~e.abs + 1 + (~j % 4)  * [1000, 1200], 0, 0.1)
						.perc (0.3 * (1 - ~e.abs) max: 0.1) });
//:




//:
T (\voice2). tax (t1, { Resonz.ar (WhiteNoise.ar(0.1).perc (0.5), ~e.abs + 1 * 2000, 4 )});
//:
T (\voice2). vr (\v1);
//:
T (\voice2). vr (\v2);
//:
T (\voice2). vax (\v2, { Resonz.ar(WhiteNoise.ar(0.1).perc (0.1), (1 - ~e.abs).abs * 2000, 0.1 )})
//:
T (\voice2). va (\v1, {})

{ PinkNoise.ar(0.1).perc (0.1) }.play

//:
T (\voice2). vax (\v1,
		  {
		   [0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		   SinOsc.ar(~e.abs * [150, 200].scramble + 200 min: 10000)
		   }
		  )
//:
T (\voice2). vax (\v1,
		  {
		   [0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		   LFSaw.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
		   }
		  )
//:
T (\voice2). vax (\v1,
		  {
		   [0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		   LFPulse.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
		   }
		  )
//:
T (\voice2). vax (\v1,
		  {
		   [0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
		   [LFPulse, LFSaw, SinOsc].choose.ar(~e.abs * [1000, 150, 200].scramble + 200 min: 10000)
		   }
		  )
//:
T (\voice2). tax (\t1, { GrayNoise.ar (0.1).perc });


