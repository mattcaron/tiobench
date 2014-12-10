[![Build Status](https://travis-ci.org/mkuoppal/tiobench.svg?branch=master)](https://travis-ci.org/mkuoppal/tiobench)  
Tiobench and tiotest (https://github.com/mkuoppal/tiobench)
   
Threaded I/O bench for Linux (or any *nix system with POSIX threads
support library) Author can be reached at: miku at iki.fi

Copyright (C) 1999-2014 Mika Kuoppala

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

Installation:

	compile by typing 'make'
	after compilation './tiotest -h' should give you list of options
	for backend io tester. 

	'./tiobench.pl --help' will give you more nicer output
	and more friendly user interface

	tiobench.pl is frontend to tiotest to run predefined or 
	configurable test suites

Credits:
	
	James Manning <jmm at users.sf.net> wrote tiobench.pl
	and also provided several fixes and improvements to 
	other parts of the tiobench project as a whole. He also has
	relentlessly fixed typos and Mika's misspellings 
	everywhere.

	Jakob Østergaard <jakob at ostenfeld.dk> proposed fsync
	fix, and option for sequential writing to prevent
	file fragmentation.

	Sami Korhonen <sjkorhon at cc.hut.fi> noticed
	thread_attr not initialized bug.

	Numerous other contributions from fearless benchmarkers.
