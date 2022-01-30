package §#!`§
{
   import §"E§.§&z§;
   import §&Y§.§ !j§;
   import §-!F§.§'k§;
   import §-!F§.§<s§;
   import §-!F§.§?!6§;
   import §2e§.§+!H§;
   import §2e§.§=!I§;
   import §6!?§.§0+§;
   import §6%§.§?!m§;
   import §9`§.§#!W§;
   import §9`§.§&>§;
   import §9`§.§3i§;
   import §9`§.§<!§;
   import §9`§.§>1§;
   import §9`§.§`h§;
   import §>!a§.§-?§;
   import §>!a§.§5l§;
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
   public class §%!w§ extends EventDispatcher implements §?!m§
   {
      
      protected static const §=!V§:Number = 100;
      
      protected static const §1`§:Number = 20;
       
      
      protected var §%§:int;
      
      protected var §,[§:Object;
      
      protected var §3!P§:String;
      
      protected var § !=§:int = 0;
      
      protected var §+1§:§3i§;
      
      protected var §-1§:Vector.<XML>;
      
      protected var §+;§:Loader;
      
      protected var §^!§:§5l§;
      
      protected var §7§:Timer;
      
      protected var §>"!§:Object;
      
      protected var §<J§:Vector.<String>;
      
      public function §%!w§(param1:§5l§)
      {
         this.§,[§ = {};
         this.§-1§ = new Vector.<XML>();
         super();
         this.§^!§ = param1;
         this.§+1§ = new §3i§("packageManager");
      }
      
      public function get §;"#§() : §&>§
      {
         return this.§+1§;
      }
      
      public function get §3&§() : Boolean
      {
         return this.§ !=§ == 0 && (!this.§<J§ || this.§<J§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§^!§ = null;
         this.§+1§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§7§)
         {
            this.§7§.stop();
            this.§7§.removeEventListener(TimerEvent.TIMER,this.§?!l§);
            this.§7§ = null;
         }
         if(this.§+;§)
         {
            this.§+;§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8!e§);
            this.§+;§ = null;
         }
         this.§>"!§ = null;
         this.§<J§ = null;
      }
      
      protected function §9!2§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §@!u§(param1:String, param2:String) : §+!H§
      {
         return this.§,[§[this.§9!2§(param1,param2)] as §+!H§;
      }
      
      protected function §03§(param1:String, param2:String, param3:§+!H§) : void
      {
         this.§,[§[this.§9!2§(param1,param2)] = param3;
      }
      
      protected function §[!]§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§3!P§;
         }
         var _loc3_:§+!H§ = this.§@!u§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§9!2§(param1,param2) + " not found",§<s§.§%!`§);
         }
         return _loc3_.§+b§(false);
      }
      
      protected function §1!I§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§3!P§;
         }
         var _loc3_:§+!H§ = this.§@!u§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§9!2§(param1,param2) + " not found",§<s§.§%!`§);
         }
         return _loc3_.content;
      }
      
      protected function §4!d§(param1:String, param2:Function) : void
      {
         return §?!6§.§=!X§(this.§1!I§(param1),param2);
      }
      
      public function §]R§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§+!H§ = null;
         if(!this.§3&§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§;T§(param1);
         }
         this.§3!P§ = param2;
         var _loc4_:§=!I§;
         (_loc4_ = new §=!I§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§-!-§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§0y§(_loc6_)).§=!N§.substr(-1) != "/")
            {
               if(this.§@!u§(_loc7_.§=!N§,this.§3!P§))
               {
                  _loc5_[_loc7_.§=!N§] = this.§@!u§(_loc7_.§=!N§,this.§3!P§);
               }
               else
               {
                  _loc5_[_loc7_.§=!N§] = _loc7_;
                  this.§03§(_loc7_.§=!N§,this.§3!P§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§["§(_loc5_);
      }
      
      public function §=S§() : void
      {
         this.clear();
      }
      
      protected function §5!k§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§[!]§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§<s§.§]Q§);
         }
         this.§-!d§(jsonObject);
      }
      
      protected function §4r§(param1:String, param2:String) : void
      {
         if(!this.§^!§.getLevelForId(param1))
         {
            this.§^!§.§];§(param1,§-?§.§6! §(this.§[!]§(param2)));
         }
      }
      
      protected function §<r§(param1:String) : void
      {
         this.§^!§.§7!m§(JSON.parse(this.§[!]§(param1)));
      }
      
      protected function §3!q§(param1:String) : void
      {
         var _loc8_:String = null;
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§5!k§(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc8_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§4r§(_loc8_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§@!0§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
         {
            this.§<"-§(param1);
         }
         if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
         {
            this.§<"-§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
         {
            this.§@o§(param1);
         }
         var _loc6_:Array;
         if(_loc6_ = param1.match(/cutscenes.lua$/i))
         {
            this.§9T§(param1);
         }
         var _loc7_:Array;
         if(_loc7_ = param1.match(/cutscene.swf$/i))
         {
            this.§2&§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§6l§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§<r§(param1);
         }
      }
      
      protected function §["§(param1:Object) : void
      {
         this.§3!I§(param1);
         if(this.§8"#§())
         {
            if(!this.§7§)
            {
               this.§7§ = new Timer(§1`§,0);
               this.§7§.addEventListener(TimerEvent.TIMER,this.§?!l§);
            }
            else
            {
               this.§7§.stop();
            }
            this.§7§.start();
         }
      }
      
      private function §3!I§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§<J§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§<J§.push(_loc2_);
         }
         this.§>"!§ = param1;
      }
      
      private function §8"#§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §=!V§ / 2)
         {
            if(!this.§"!f§())
            {
               break;
            }
         }
         var _loc2_:* = this.§<J§.length > 0;
         if(this.§3&§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §"!f§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§<J§.length > 0)
         {
            _loc1_ = this.§<J§[0];
            this.§<J§.splice(0,1);
            this.§3!q§(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §?!l§(param1:Event) : void
      {
         if(!this.§8"#§())
         {
            if(this.§7§)
            {
               this.§7§.stop();
            }
         }
      }
      
      private function §6l§(param1:String) : void
      {
         ++this.§ !=§;
         var _loc2_:XML = new XML(this.§[!]§(param1));
         this.§-1§.push(_loc2_);
         if(this.§-1§.length == 1)
         {
            this.§+;§ = new Loader();
            this.§+;§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§8!e§);
            this.§+;§.loadBytes(this.§1!I§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §8!e§(param1:Event) : void
      {
         this.§+;§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8!e§);
         var _loc2_:XML = this.§-1§.shift();
         if(this.§-1§.length > 0)
         {
            this.§+;§ = new Loader();
            this.§+;§.contentLoaderInfo.addEventListener(Event.INIT,this.§8!e§);
            this.§+;§.loadBytes(this.§1!I§(this.§-1§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§8!V§();
      }
      
      private function §9T§(param1:String) : void
      {
         var _loc2_:Object = §'k§.§5!]§(this.§[!]§(param1));
         §&z§.§9T§(_loc2_);
      }
      
      private function §2&§(param1:String) : void
      {
         §&z§.§>!p§(this.§3!P§,this.§1!I§(param1,this.§3!P§));
      }
      
      protected function §@o§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§[!]§(param1));
         §0+§.§,!;§(_loc2_);
      }
      
      protected function §<"-§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§3!P§;
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
            var _loc2_:XML = new XML(§[!]§(filePath,activePackageName));
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
                  if(§@!u§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §[!]§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §!"§(new §#!W§(_loc2_,_loc4_,param1.bitmapData));
            §8!V§();
         };
         ++this.§ !=§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§4!d§(imagePath,onComplete);
      }
      
      protected function §!"§(param1:§<!§) : void
      {
         this.§+1§.§8"'§(param1);
      }
      
      protected function §8!V§() : void
      {
         --this.§ !=§;
         if(this.§3&§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §@!0§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            § !j§.§'A§(id,XML(§[!]§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §8!V§();
         };
         ++this.§ !=§;
         this.§4!d§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §-!d§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §!"§(new spriteSheetClass(dataObject,param1.bitmapData));
            §8!V§();
         };
         ++this.§ !=§;
         if(dataObject.image)
         {
            spriteSheetClass = §`h§;
            this.§4!d§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §>1§;
            this.§4!d§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §;T§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§%§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§ A§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§ A§() * 255);
            _loc2_ -= int(this.§ A§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§ A§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function § A§() : Number
      {
         this.§%§ ^= this.§%§ << 21;
         this.§%§ ^= this.§%§ >>> 35;
         this.§%§ ^= this.§%§ << 4;
         if(this.§%§ < 0)
         {
            this.§%§ &= 2147483647;
         }
         return this.§%§ / 2147483647;
      }
   }
}
