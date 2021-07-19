package §!?§
{
   import § !Y§.§#@§;
   import § !Y§.§4!1§;
   import § !Y§.§9k§;
   import §'!d§.§^"§;
   import §'"?§.§]"!§;
   import §'"?§.§]"'§;
   import §4&§.§ j§;
   import §7!%§.§%e§;
   import §?_§.§^"4§;
   import §`!j§.§#b§;
   import §`!j§.§9"!§;
   import §`",§.§'8§;
   import §`",§.§4[§;
   import §`",§.§67§;
   import §`",§.§=![§;
   import §`",§.§`!W§;
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
   
   public class §@"C§ extends EventDispatcher implements §%e§
   {
      
      protected static const §3!x§:Number = 100;
      
      protected static const § "8§:Number = 20;
       
      
      protected var §^C§:int;
      
      protected var §4!y§:Object;
      
      protected var §-"H§:String;
      
      protected var §^"$§:int = 0;
      
      protected var §6+§:§`!W§;
      
      protected var §7E§:Vector.<XML>;
      
      protected var §6!u§:Loader;
      
      protected var §6u§:§9"!§;
      
      protected var §&Q§:Timer;
      
      protected var §>,§:Object;
      
      protected var §%U§:Vector.<String>;
      
      public function §@"C§(param1:§9"!§)
      {
         this.§4!y§ = {};
         this.§7E§ = new Vector.<XML>();
         super();
         this.§6u§ = param1;
         this.§6+§ = new §`!W§("packageManager");
      }
      
      public function get §-" §() : §'8§
      {
         return this.§6+§;
      }
      
      public function get §<!9§() : Boolean
      {
         return this.§^"$§ == 0 && (!this.§%U§ || this.§%U§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§6u§ = null;
         this.§6+§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§&Q§)
         {
            this.§&Q§.stop();
            this.§&Q§.removeEventListener(TimerEvent.TIMER,this.§9!k§);
            this.§&Q§ = null;
         }
         if(this.§6!u§)
         {
            this.§6!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§if §);
            this.§6!u§ = null;
         }
         this.§>,§ = null;
         this.§%U§ = null;
      }
      
      protected function §,",§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §9!=§(param1:String, param2:String) : §]"!§
      {
         return this.§4!y§[this.§,",§(param1,param2)] as §]"!§;
      }
      
      protected function §-3§(param1:String, param2:String, param3:§]"!§) : void
      {
         this.§4!y§[this.§,",§(param1,param2)] = param3;
      }
      
      protected function §""@§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§-"H§;
         }
         var _loc3_:§]"!§ = this.§9!=§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§,",§(param1,param2) + " not found",§4!1§.§,"D§);
         }
         return _loc3_.§'!<§(false);
      }
      
      protected function §8U§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§-"H§;
         }
         var _loc3_:§]"!§ = this.§9!=§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§,",§(param1,param2) + " not found",§4!1§.§,"D§);
         }
         return _loc3_.content;
      }
      
      protected function §-!O§(param1:String, param2:Function) : void
      {
         return §#@§.§57§(this.§8U§(param1),param2);
      }
      
      public function §?C§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§]"!§ = null;
         if(!this.§<!9§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§=!I§(param1);
         }
         this.§-"H§ = param2;
         var _loc4_:§]"'§;
         (_loc4_ = new §]"'§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§<!k§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§7&§(_loc6_)).§0^§.substr(-1) != "/")
            {
               if(this.§9!=§(_loc7_.§0^§,this.§-"H§))
               {
                  _loc5_[_loc7_.§0^§] = this.§9!=§(_loc7_.§0^§,this.§-"H§);
               }
               else
               {
                  _loc5_[_loc7_.§0^§] = _loc7_;
                  this.§-3§(_loc7_.§0^§,this.§-"H§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§2=§(_loc5_);
      }
      
      public function §`t§() : void
      {
         this.clear();
      }
      
      protected function §,!o§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§""@§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§4!1§.§++§);
         }
         this.§4c§(jsonObject);
      }
      
      protected function §6!X§(param1:String, param2:String) : void
      {
         if(!this.§6u§.getLevelForId(param1))
         {
            this.§6u§.addLevel(param1,§#b§.§5D§(this.§""@§(param2)));
         }
      }
      
      protected function §7";§(param1:String) : void
      {
         this.§6u§.§ !`§(JSON.parse(this.§""@§(param1)));
      }
      
      protected function initializeFile(param1:String) : void
      {
         var _loc8_:String = null;
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§,!o§(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc8_ = _loc2_[1].toLowerCase();
            this.§6!X§(_loc8_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§`!g§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
         {
            this.§=!X§(param1);
         }
         if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
         {
            this.§=!X§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
         {
            this.§0G§(param1);
         }
         var _loc6_:Array;
         if(_loc6_ = param1.match(/cutscenes.lua$/i))
         {
            this.§#!3§(param1);
         }
         var _loc7_:Array;
         if(_loc7_ = param1.match(/cutscene.swf$/i))
         {
            this.§4"G§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§6O§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§7";§(param1);
         }
      }
      
      protected function §2=§(param1:Object) : void
      {
         this.§6!K§(param1);
         if(this.§?!R§())
         {
            if(!this.§&Q§)
            {
               this.§&Q§ = new Timer(§ "8§,0);
               this.§&Q§.addEventListener(TimerEvent.TIMER,this.§9!k§);
            }
            else
            {
               this.§&Q§.stop();
            }
            this.§&Q§.start();
         }
      }
      
      private function §6!K§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§%U§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§%U§.push(_loc2_);
         }
         this.§>,§ = param1;
      }
      
      private function §?!R§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §3!x§ / 2)
         {
            if(!this.§9!u§())
            {
               break;
            }
         }
         var _loc2_:* = this.§%U§.length > 0;
         if(this.§<!9§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §9!u§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§%U§.length > 0)
         {
            _loc1_ = this.§%U§[0];
            this.§%U§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §9!k§(param1:Event) : void
      {
         if(!this.§?!R§())
         {
            if(this.§&Q§)
            {
               this.§&Q§.stop();
            }
         }
      }
      
      private function §6O§(param1:String) : void
      {
         ++this.§^"$§;
         var _loc2_:XML = new XML(this.§""@§(param1));
         this.§7E§.push(_loc2_);
         if(this.§7E§.length == 1)
         {
            this.§6!u§ = new Loader();
            this.§6!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§if §);
            this.§6!u§.loadBytes(this.§8U§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §if §(param1:Event) : void
      {
         this.§6!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§if §);
         var _loc2_:XML = this.§7E§.shift();
         if(this.§7E§.length > 0)
         {
            this.§6!u§ = new Loader();
            this.§6!u§.contentLoaderInfo.addEventListener(Event.INIT,this.§if §);
            this.§6!u§.loadBytes(this.§8U§(this.§7E§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§`d§();
      }
      
      private function §#!3§(param1:String) : void
      {
         var _loc2_:Object = §9k§.§9"@§(this.§""@§(param1));
         §^"4§.§#!3§(_loc2_);
      }
      
      private function §4"G§(param1:String) : void
      {
         §^"4§.§7"+§(this.§-"H§,this.§8U§(param1,this.§-"H§));
      }
      
      protected function §0G§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§""@§(param1));
         § j§.§?"?§(_loc2_);
      }
      
      protected function §=!X§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§-"H§;
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
            var _loc2_:XML = new XML(§""@§(filePath,activePackageName));
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
                  if(§9!=§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §""@§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §6+§.§>!B§(new §67§(_loc2_,_loc4_,param1.bitmapData));
            §`d§();
         };
         ++this.§^"$§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§-!O§(imagePath,onComplete);
      }
      
      protected function §`d§() : void
      {
         --this.§^"$§;
         if(this.§<!9§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §`!g§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §^"§.§8!J§(id,XML(§""@§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §`d§();
         };
         ++this.§^"$§;
         this.§-!O§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §4c§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §6+§.§>!B§(new spriteSheetClass(dataObject,param1.bitmapData));
            §`d§();
         };
         ++this.§^"$§;
         if(dataObject.image)
         {
            spriteSheetClass = §4[§;
            this.§-!O§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §=![§;
            this.§-!O§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §=!I§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§^C§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§!2§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§!2§() * 255);
            _loc2_ -= int(this.§!2§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§!2§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §!2§() : Number
      {
         this.§^C§ ^= this.§^C§ << 21;
         this.§^C§ ^= this.§^C§ >>> 35;
         this.§^C§ ^= this.§^C§ << 4;
         if(this.§^C§ < 0)
         {
            this.§^C§ &= 2147483647;
         }
         return this.§^C§ / 2147483647;
      }
   }
}
