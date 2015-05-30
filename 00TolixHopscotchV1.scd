//: First thing to do:

Server.default.boot;

//: Recording!
// Do this at the beginning, before setting up, but after booting the server:
Server.default.prepareForRecord;

//: Do this to start recording:
Server.default.record;

//: Do this to end and finalize the recording: 
Server.default.stopRecording;

//: Do this to find where the recording is:
thisProcess.platform.recordingsDir;
//: Do this to open the directory on MacOS:
format("open %", thisProcess.platform.recordingsDir.asCompileString).unixCmd;
//:
~file = FileReader.read("/Users/iani/Desktop/Tolix_A_Chair.obj");
//: Prepare the data
(
~groups = nil;
~group = nil;
~file do: { | x |
	if (x.size < 2) {
		~groups = ~groups add: ~group;
		~group = nil;
		//	"==========================".postln;
		//	~groups.postln;
		//	"==========================".postln;
	}{
		~group = ~group add: x;
		//	~group.postln;
	};
};
"DONE".postln;
)
//:
~groups.size;
//: View an excerpt
~file[10..20] do: { | array | array do: _.postln; };
//: Play the data
(
{
	var ugen, elements;
	elements = ();
	~file[10..] do: { | array |
		array do: { | element |
			if ([$0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $-] includes: element[0];) {
				{
					[0.3, 1].scramble * EnvGen.kr(Env.perc(0.01, 0.1, 0.2), doneAction: 2) *
					SinOsc.ar(element.interpret.abs * [150, 200].scramble + 200 min: 10000) }.play; 
			}{
				ugen = elements[element.asSymbol];
				if (ugen.isNil) {
					ugen = [WhiteNoise, GrayNoise, PinkNoise, BrownNoise].choose;
					elements[element.asSymbol] = ugen;
				};
				
				{
					[0.3, 1].scramble * EnvGen.kr(Env.sine(0.1, 0.05), doneAction: 2) * ugen.ar()
				}.play; 
			};
			0.1.wait;
		}
	};
}.fork;
)
//: Alternative playing method (was the first try)
(
{
	~groups.sort({ | a, b | a.size < b.size }) do: { | g |
		g do: { | sg |
			sg.postln;
			{ GrayNoise.ar * 
				EnvGen.kr(Env.sine(0.1, 0.1 * sg.size.postln), 
					doneAction: 2);
			}.play;
			0.1.wait;
		};
		
		0.2.wait;
	}
}.fork;
)

Server.killAll;

~groups[..20] do: _.postln;
~groups[0];

~groups[4];

~group[..20] do: { | g, i | postf("%: %\n\n", i, g) };

//:
Server.default.scope;
FreqScope();
//:
{ WhiteNoise.ar(0.1) }.play;
{ GrayNoise.ar(0.1) }.play;
{ PinkNoise.ar(0.1) }.play;
{ BrownNoise.ar(0.1) }.play;

//:
Help.gui;