
T {
	classvar <data, <groupedData, <types;
	var <name;
	var <pace = 0.1;
	var <vector, <type;
	var <task;
	var <>verbose = false;

	*initClass {
		StartUp add: {
			this.loadData;
			Server.default.boot;
		}
	}

	*new { | name |
		^Registry(T, name, { this.newCopyArgs(name).init })
	}

	init {
		vector = IdentityDictionary();
		type = IdentityDictionary();
		this.makeTask;
	}

	makeTask {
		task = Task({
			data[10..] do: { | array, j |
				array do: { | element, k |
					
					if ([$0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $-] includes: element[0]) {
						element = element.interpret;
						if (verbose) { postf("vector: % % %\n", element, j, k) };
						\this.changed(\vector, element, j, k);
						// vector do: _.postln;
						vector do: _.(element, j, k);
					}{
						if (verbose) { postf("type: % % %\n", element, j, k) };
						\this.changed(\type, element.asSymbol, j, k);
						type do: _.(element, j, k);
					};
					pace.wait;
				}
			};
		})
	}
 
	*loadData {
		var group;
		types = Set();
		data = FileReader.read("/Users/iani/Desktop/Tolix_A_Chair.obj");
		data do: { | x |
			x do: { | element | 
				if ([$0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $-] includes: element[0]) {
					// do nothing here
				}{
					//	element.postln;
					// types.postln;
					types add: element.asSymbol;
					// types.postln;
				}
			};
			
			if (x.size < 2) {
				groupedData = groupedData add: group;
				group = nil;
			}{
				group = group add: x;
			};
		};
		"================================================================".postln;
		"Loaded data for Tolix!".postln;
		postf("There are % groups to play in Tolix.\n", groupedData.size);
		"================================================================".postln;
	}

	pace_ { | argPace |
		pace = argPace.asStream;
	}

	*start { this.new(\default).start }
	start {
		// remake task to recover from sclang errors
		this.makeTask;
		task.start;
	}
	*stop { this.new(\default).stop }
	stop { task.stop; }
	*resume { this.new(\default).resume }
	resume { task.resume; }
	*verbose_ { | verbose = true | this.new (\default).verbose = verbose }
	*pace_ { | pace = 0.1 | this.new (\default).pace = pace}

	// Add play funcs
	*va { | name, func |
		this.new(\default).va (name, func);
	}
	va { | name, func |
		vector [name] = func;
	}
	*vr { | name |
		this.new(\default).vr (name);
	}
	vr { | name | vector [name] = nil }

	*ta { | name, func |
		this.new(\default).ta (name, func);
	}
	ta { | name, func |
		vector [name] = func;
	}
	*tr { | name |
		this.new(\default).tr (name);
	}
	tr { | name | vector [name] = nil }

	// add play funcs directly
	*vax { | name, func |
		this.new(\default).vax (name, func);
	}
	vax { | name, func |
		vector [name] = this.makePlayFunc (func);
	}

	makePlayFunc { | func |
		^{ | e, j, k |
			(e: e, j: j, k: k) use: { func.play }
		}
	}

	*tax { | name, func |
		this.new(\default).tax (name, func);
	}
	tax { | name, func |
		vector [name] = this.makePlayFunc (func);
	}	

}

