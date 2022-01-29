What is this you ask? Why it's deobfuscated scripts as well as binary data filenames for the game!

How did this happen:

Rovio left a _secure_map.xml file on the two discs of the game, having all of the original deobfuscated strings in the form of an XML map table from the software used to obfuscate the game (for whatever reason) being SecureSWF version 3.6. With automatic replacement of the many strings, the majority of the code is readable.

How were they deobfuscated:

A script on Zenhax was released on the AB SWF discussion thread to deobfuscate decompiled scripts from JPEXS using the said symbol map, using that was FAR more accurate then going into every file and checking code.

There's one script (XMLUtils.as) has one incorrect value, oddly not even mentioned in the map, luckily using the symbols of AB Friends on those servers, I figured out what the proper value is (literally '*').

I redid this one to ensure values are accurate as Box2D has unnamed enums that didn't get deobfuscated.

Enjoy!

--LHR :)