package §3@§
{
   import §!!&§.§%9§;
   import §!!&§.§'$§;
   import §!!&§.§+!S§;
   import §!P§.§2"4§;
   import §!P§.§5!1§;
   import §0!?§.§%i§;
   import §0!`§.§#!7§;
   import §0!`§.§%f§;
   import §0!`§.§-",§;
   import §0!`§.§0W§;
   import §0!`§.§;W§;
   import §0!`§.§??§;
   import §;L§.§?D§;
   import §<!n§.§"Z§;
   import §=M§.§"!8§;
   import §^![§.§2p§;
   import §^![§.§`!q§;
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
   public class §4!m§ extends EventDispatcher implements §"!8§
   {
      
      protected static const §@!c§:Number = 100;
      
      protected static const §#",§:Number = 20;
       
      
      protected var §"!C§:int;
      
      protected var §[!M§:Object;
      
      protected var §7n§:String;
      
      protected var §1!=§:int = 0;
      
      protected var §%"2§:§??§;
      
      protected var §0"-§:Vector.<XML>;
      
      protected var §3!N§:Loader;
      
      protected var §97§:§5!1§;
      
      protected var §<3§:Timer;
      
      protected var §[-§:Object;
      
      protected var §^"1§:Vector.<String>;
      
      public function §4!m§(param1:§5!1§)
      {
         this.§[!M§ = {};
         this.§0"-§ = new Vector.<XML>();
         super();
         this.§97§ = param1;
         this.§%"2§ = new §??§("packageManager");
      }
      
      public function get §5h§() : §-",§
      {
         return this.§%"2§;
      }
      
      public function get §&Q§() : Boolean
      {
         return this.§1!=§ == 0 && (!this.§^"1§ || this.§^"1§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§97§ = null;
         this.§%"2§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§<3§)
         {
            this.§<3§.stop();
            this.§<3§.removeEventListener(TimerEvent.TIMER,this.§=o§);
            this.§<3§ = null;
         }
         if(this.§3!N§)
         {
            this.§3!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§'?§);
            this.§3!N§ = null;
         }
         this.§[-§ = null;
         this.§^"1§ = null;
      }
      
      protected function §;E§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §"!3§(param1:String, param2:String) : §2p§
      {
         return this.§[!M§[this.§;E§(param1,param2)] as §2p§;
      }
      
      protected function §=<§(param1:String, param2:String, param3:§2p§) : void
      {
         this.§[!M§[this.§;E§(param1,param2)] = param3;
      }
      
      protected function §[!p§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§7n§;
         }
         var _loc3_:§2p§ = this.§"!3§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§;E§(param1,param2) + " not found",§'$§.§ !m§);
         }
         return _loc3_.§7!?§(false);
      }
      
      protected function §3O§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§7n§;
         }
         var _loc3_:§2p§ = this.§"!3§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§;E§(param1,param2) + " not found",§'$§.§ !m§);
         }
         return _loc3_.content;
      }
      
      protected function final(param1:String, param2:Function) : void
      {
         return §+!S§.§"!P§(this.§3O§(param1),param2);
      }
      
      public function §-!=§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§2p§ = null;
         if(!this.§&Q§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§#,§(param1);
         }
         this.§7n§ = param2;
         var _loc4_:§`!q§;
         (_loc4_ = new §`!q§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§^s§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§]O§(_loc6_)).§]!+§.substr(-1) != "/")
            {
               if(this.§"!3§(_loc7_.§]!+§,this.§7n§))
               {
                  _loc5_[_loc7_.§]!+§] = this.§"!3§(_loc7_.§]!+§,this.§7n§);
               }
               else
               {
                  _loc5_[_loc7_.§]!+§] = _loc7_;
                  this.§=<§(_loc7_.§]!+§,this.§7n§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§?P§(_loc5_);
      }
      
      public function §<!h§() : void
      {
         this.clear();
      }
      
      protected function §%b§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§[!p§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§'$§.§7!q§);
         }
         this.§'"5§(jsonObject);
      }
      
      protected function §4Y§(param1:String, param2:String) : void
      {
         if(!this.§97§.getLevelForId(param1))
         {
            this.§97§.§14§(param1,§2"4§.§4"%§(this.§[!p§(param2)));
         }
      }
      
      protected function §<!f§(param1:String) : void
      {
         this.§97§.§4!-§(JSON.parse(this.§[!p§(param1)));
      }
      
      protected function §&"%§(param1:String) : void
      {
         var _loc8_:String = null;
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§%b§(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc8_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§4Y§(_loc8_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§9!H§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
         {
            this.§?T§(param1);
         }
         if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
         {
            this.§?T§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
         {
            this.§""&§(param1);
         }
         var _loc6_:Array;
         if(_loc6_ = param1.match(/cutscenes.lua$/i))
         {
            this.§@'§(param1);
         }
         var _loc7_:Array;
         if(_loc7_ = param1.match(/cutscene.swf$/i))
         {
            this.§6!§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§+!L§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§<!f§(param1);
         }
      }
      
      protected function §?P§(param1:Object) : void
      {
         this.§1!s§(param1);
         if(this.§<`§())
         {
            if(!this.§<3§)
            {
               this.§<3§ = new Timer(§#",§,0);
               this.§<3§.addEventListener(TimerEvent.TIMER,this.§=o§);
            }
            else
            {
               this.§<3§.stop();
            }
            this.§<3§.start();
         }
      }
      
      private function §1!s§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§^"1§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§^"1§.push(_loc2_);
         }
         this.§[-§ = param1;
      }
      
      private function §<`§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §@!c§ / 2)
         {
            if(!this.§5!J§())
            {
               break;
            }
         }
         var _loc2_:* = this.§^"1§.length > 0;
         if(this.§&Q§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §5!J§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§^"1§.length > 0)
         {
            _loc1_ = this.§^"1§[0];
            this.§^"1§.splice(0,1);
            this.§&"%§(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §=o§(param1:Event) : void
      {
         if(!this.§<`§())
         {
            if(this.§<3§)
            {
               this.§<3§.stop();
            }
         }
      }
      
      private function §+!L§(param1:String) : void
      {
         ++this.§1!=§;
         var _loc2_:XML = new XML(this.§[!p§(param1));
         this.§0"-§.push(_loc2_);
         if(this.§0"-§.length == 1)
         {
            this.§3!N§ = new Loader();
            this.§3!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§'?§);
            this.§3!N§.loadBytes(this.§3O§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §'?§(param1:Event) : void
      {
         this.§3!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§'?§);
         var _loc2_:XML = this.§0"-§.shift();
         if(this.§0"-§.length > 0)
         {
            this.§3!N§ = new Loader();
            this.§3!N§.contentLoaderInfo.addEventListener(Event.INIT,this.§'?§);
            this.§3!N§.loadBytes(this.§3O§(this.§0"-§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§<,§();
      }
      
      private function §@'§(param1:String) : void
      {
         var _loc2_:Object = §%9§.§&"#§(this.§[!p§(param1));
         §%i§.§@'§(_loc2_);
      }
      
      private function §6!§(param1:String) : void
      {
         §%i§.§'!`§(this.§7n§,this.§3O§(param1,this.§7n§));
      }
      
      protected function §""&§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§[!p§(param1));
         §?D§.§"!p§(_loc2_);
      }
      
      protected function §?T§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§7n§;
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
            var _loc2_:XML = new XML(§[!p§(filePath,activePackageName));
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
                  if(§"!3§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §[!p§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §'Z§(new §%f§(_loc2_,_loc4_,param1.bitmapData));
            §<,§();
         };
         ++this.§1!=§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.final(imagePath,onComplete);
      }
      
      protected function §'Z§(param1:§0W§) : void
      {
         this.§%"2§.§^"+§(param1);
      }
      
      protected function §<,§() : void
      {
         --this.§1!=§;
         if(this.§&Q§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §9!H§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §"Z§.§"!k§(id,XML(§[!p§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §<,§();
         };
         ++this.§1!=§;
         this.final("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §'"5§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §'Z§(new spriteSheetClass(dataObject,param1.bitmapData));
            §<,§();
         };
         ++this.§1!=§;
         if(dataObject.image)
         {
            spriteSheetClass = §#!7§;
            this.final("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §;W§;
            this.final("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §#,§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§"!C§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§8!r§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§8!r§() * 255);
            _loc2_ -= int(this.§8!r§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§8!r§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §8!r§() : Number
      {
         this.§"!C§ ^= this.§"!C§ << 21;
         this.§"!C§ ^= this.§"!C§ >>> 35;
         this.§"!C§ ^= this.§"!C§ << 4;
         if(this.§"!C§ < 0)
         {
            this.§"!C§ &= 2147483647;
         }
         return this.§"!C§ / 2147483647;
      }
   }
}
