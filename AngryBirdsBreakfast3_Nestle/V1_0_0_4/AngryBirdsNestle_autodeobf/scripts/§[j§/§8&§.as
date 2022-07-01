package §[j§
{
   import §#'§.§3!D§;
   import §%^§.;
   import §%^§.§'!%§;
   import §%^§.§3"'§;
   import §%^§.§6!`§;
   import §%^§.§>!r§;
   import §%^§.§@!n§;
   import §'<§.§;r§;
   import §'<§.§=!o§;
   import §0!l§.§,H§;
   import §0!l§.§3"§;
   import §6_§.§8!K§;
   import §9z§.§^!"§;
   import §@!2§.§7"1§;
   import §`6§.§1A§;
   import §`6§.§54§;
   import §`6§.§7!q§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §8&§ extends EventDispatcher implements §7"1§
   {
      
      protected static const §=0§:Number = 100;
      
      protected static const §0!-§:Number = 20;
       
      
      protected var §>!z§:int;
      
      protected var §&!M§:Object;
      
      protected var §,C§:String;
      
      protected var §4u§:int = 0;
      
      protected var §7Q§:§3"'§;
      
      protected var §"",§:Vector.<XML>;
      
      protected var §9R§:Loader;
      
      protected var §+o§:§=!o§;
      
      protected var §!!u§:Timer;
      
      protected var §-_§:Object;
      
      protected var §'""§:Vector.<String>;
      
      public function §8&§(param1:§=!o§)
      {
         this.§&!M§ = {};
         this.§"",§ = new Vector.<XML>();
         super();
         this.§+o§ = param1;
         this.§7Q§ = new §3"'§("packageManager");
      }
      
      public function get §7!u§() : §@!n§
      {
         return this.§7Q§;
      }
      
      public function get §0G§() : Boolean
      {
         return this.§4u§ == 0 && (!this.§'""§ || this.§'""§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§+o§ = null;
         this.§7Q§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§!!u§)
         {
            this.§!!u§.stop();
            this.§!!u§.removeEventListener(TimerEvent.TIMER,this.§'!x§);
            this.§!!u§ = null;
         }
         if(this.§9R§)
         {
            this.§9R§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!]§);
            this.§9R§ = null;
         }
         this.§-_§ = null;
         this.§'""§ = null;
      }
      
      protected function §7q§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §!"$§(param1:String, param2:String) : §,H§
      {
         return this.§&!M§[this.§7q§(param1,param2)] as §,H§;
      }
      
      protected function §6"!§(param1:String, param2:String, param3:§,H§) : void
      {
         this.§&!M§[this.§7q§(param1,param2)] = param3;
      }
      
      protected function §1M§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§,C§;
         }
         var _loc3_:§,H§ = this.§!"$§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§7q§(param1,param2) + " not found",§7!q§.§8!D§);
         }
         return _loc3_.§+!4§(false);
      }
      
      protected function §1!H§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§,C§;
         }
         var _loc3_:§,H§ = this.§!"$§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§7q§(param1,param2) + " not found",§7!q§.§8!D§);
         }
         return _loc3_.content;
      }
      
      protected function §8![§(param1:String, param2:Function) : void
      {
         return §1A§.§]"2§(this.§1!H§(param1),param2);
      }
      
      public function §=!=§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§,H§ = null;
         if(!this.§0G§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§@w§(param1);
         }
         this.§,C§ = param2;
         var _loc4_:§3"§;
         (_loc4_ = new §3"§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§>!5§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§+! §(_loc6_)).§!O§.substr(-1) != "/")
            {
               if(this.§!"$§(_loc7_.§!O§,this.§,C§))
               {
                  _loc5_[_loc7_.§!O§] = this.§!"$§(_loc7_.§!O§,this.§,C§);
               }
               else
               {
                  _loc5_[_loc7_.§!O§] = _loc7_;
                  this.§6"!§(_loc7_.§!O§,this.§,C§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§%!s§(_loc5_);
      }
      
      public function §1!T§() : void
      {
         this.clear();
      }
      
      protected function §`!O§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§1M§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§7!q§.§5!R§);
         }
         this.§,!0§(jsonObject);
      }
      
      protected function §&!=§(param1:String, param2:String) : void
      {
         if(!this.§+o§.getLevelForId(param1))
         {
            this.§+o§.§,!Z§(param1,§;r§.§0!V§(this.§1M§(param2)));
         }
      }
      
      protected function §%s§(param1:String) : void
      {
         this.§+o§.§&H§(JSON.parse(this.§1M§(param1)));
      }
      
      protected function §68§(param1:String) : void
      {
         var _loc8_:String = null;
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§`!O§(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc8_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§&!=§(_loc8_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§^$§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
         {
            this.§@" §(param1);
         }
         if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
         {
            this.§@" §(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
         {
            this.§]i§(param1);
         }
         var _loc6_:Array;
         if(_loc6_ = param1.match(/cutscenes.lua$/i))
         {
            this.§6"5§(param1);
         }
         var _loc7_:Array;
         if(_loc7_ = param1.match(/cutscene.swf$/i))
         {
            this.§3b§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§3!%§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§%s§(param1);
         }
      }
      
      protected function §%!s§(param1:Object) : void
      {
         this.§%"3§(param1);
         if(this.§!!4§())
         {
            if(!this.§!!u§)
            {
               this.§!!u§ = new Timer(§0!-§,0);
               this.§!!u§.addEventListener(TimerEvent.TIMER,this.§'!x§);
            }
            else
            {
               this.§!!u§.stop();
            }
            this.§!!u§.start();
         }
      }
      
      private function §%"3§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§'""§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§'""§.push(_loc2_);
         }
         this.§-_§ = param1;
      }
      
      private function §!!4§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §=0§ / 2)
         {
            if(!this.§^"2§())
            {
               break;
            }
         }
         var _loc2_:* = this.§'""§.length > 0;
         if(this.§0G§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §^"2§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§'""§.length > 0)
         {
            _loc1_ = this.§'""§[0];
            this.§'""§.splice(0,1);
            this.§68§(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §'!x§(param1:Event) : void
      {
         if(!this.§!!4§())
         {
            if(this.§!!u§)
            {
               this.§!!u§.stop();
            }
         }
      }
      
      private function §3!%§(param1:String) : void
      {
         ++this.§4u§;
         var _loc2_:XML = new XML(this.§1M§(param1));
         this.§"",§.push(_loc2_);
         if(this.§"",§.length == 1)
         {
            this.§9R§ = new Loader();
            this.§9R§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!]§);
            this.§9R§.loadBytes(this.§1!H§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §!]§(param1:Event) : void
      {
         this.§9R§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!]§);
         var _loc2_:XML = this.§"",§.shift();
         if(this.§"",§.length > 0)
         {
            this.§9R§ = new Loader();
            this.§9R§.contentLoaderInfo.addEventListener(Event.INIT,this.§!]§);
            this.§9R§.loadBytes(this.§1!H§(this.§"",§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§'!'§();
      }
      
      private function §6"5§(param1:String) : void
      {
         var _loc2_:Object = §54§.§8!d§(this.§1M§(param1));
         §^!"§.§6"5§(_loc2_);
      }
      
      private function §3b§(param1:String) : void
      {
         §^!"§.§>!S§(this.§,C§,this.§1!H§(param1,this.§,C§));
      }
      
      protected function §]i§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§1M§(param1));
         §8!K§.§=!z§(_loc2_);
      }
      
      protected function §@" §(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§,C§;
         var onComplete:Function = function(param1:Bitmap):void
         {
            var _loc6_:XML = null;
            var _loc7_:String = null;
            var _loc8_:Array = null;
            var _loc9_:String = null;
            var _loc10_:Array = null;
            var _loc11_:String = null;
            var _loc12_:int = 0;
            var _loc13_:* = null;
            var _loc14_:String = null;
            var _loc2_:XML = new XML(§1M§(filePath,activePackageName));
            var _loc3_:Array = [];
            var _loc4_:Vector.<XML> = new Vector.<XML>();
            var _loc5_:XMLList = _loc2_.child("sprite");
            for each(_loc6_ in _loc5_)
            {
               if(_loc7_ = _loc6_.@file)
               {
                  _loc8_ = _loc7_.split("\\");
                  _loc9_ = _loc8_[_loc8_.length - 1];
                  _loc10_ = filePath.split("/");
                  _loc11_ = "";
                  _loc12_ = 0;
                  while(_loc12_ < _loc10_.length - 2)
                  {
                     _loc11_ += _loc10_[_loc12_] + "/";
                     _loc12_++;
                  }
                  _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  if(§!"$§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §1M§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §!w§(new §6!`§(_loc2_,_loc4_,param1.bitmapData));
            §'!'§();
         };
         ++this.§4u§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§8![§(imagePath,onComplete);
      }
      
      protected function §!w§(param1:§'!%§) : void
      {
         this.§7Q§.§^z§(param1);
      }
      
      protected function §'!'§() : void
      {
         --this.§4u§;
         if(this.§0G§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §^$§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §3!D§.§^!b§(id,XML(§1M§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §'!'§();
         };
         ++this.§4u§;
         this.§8![§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §,!0§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §!w§(new spriteSheetClass(dataObject,param1.bitmapData));
            §'!'§();
         };
         ++this.§4u§;
         if(dataObject.image)
         {
            spriteSheetClass = §>!r§;
            this.§8![§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §#4§;
            this.§8![§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §@w§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§>!z§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§&T§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§&T§() * 255);
            _loc2_ -= int(this.§&T§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§&T§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §&T§() : Number
      {
         this.§>!z§ ^= this.§>!z§ << 21;
         this.§>!z§ ^= this.§>!z§ >>> 35;
         this.§>!z§ ^= this.§>!z§ << 4;
         if(this.§>!z§ < 0)
         {
            this.§>!z§ &= 2147483647;
         }
         return this.§>!z§ / 2147483647;
      }
   }
}
