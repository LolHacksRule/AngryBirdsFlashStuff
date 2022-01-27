package §5R§
{
   import §'!n§.§'!Y§;
   import §'!n§.§4!=§;
   import §'!n§.§`L§;
   import §-!5§.§ `§;
   import §3%§.§]!a§;
   import §4",§.§,!j§;
   import §4",§.§3v§;
   import §8"2§.§3=§;
   import §8"2§.§[!T§;
   import §<[§.§8!a§;
   import §>"$§.§ k§;
   import §>"$§.§'!P§;
   import §>"$§.§-o§;
   import §>"$§.§0!!§;
   import §>"$§.§6e§;
   import §>"$§.§7!v§;
   import §^e§.§>b§;
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
   
   public class §0!P§ extends EventDispatcher implements §8!a§
   {
      
      protected static const §"M§:Number = 100;
      
      protected static const §#!m§:Number = 20;
       
      
      protected var §27§:int;
      
      protected var §7"C§:Object;
      
      protected var §2!P§:String;
      
      protected var §>F§:int = 0;
      
      protected var §5!=§:§6e§;
      
      protected var §;!o§:Vector.<XML>;
      
      protected var §"!m§:Loader;
      
      protected var §]m§:§,!j§;
      
      protected var §@!q§:Timer;
      
      protected var §^&§:Object;
      
      protected var §;"$§:Vector.<String>;
      
      public function §0!P§(param1:§,!j§)
      {
         this.§7"C§ = {};
         this.§;!o§ = new Vector.<XML>();
         super();
         this.§]m§ = param1;
         this.§5!=§ = new §6e§("packageManager");
      }
      
      public function get §91§() : §7!v§
      {
         return this.§5!=§;
      }
      
      public function get §#H§() : Boolean
      {
         return this.§>F§ == 0 && (!this.§;"$§ || this.§;"$§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§]m§ = null;
         this.§5!=§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§@!q§)
         {
            this.§@!q§.stop();
            this.§@!q§.removeEventListener(TimerEvent.TIMER,this.§30§);
            this.§@!q§ = null;
         }
         if(this.§"!m§)
         {
            this.§"!m§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ "3§);
            this.§"!m§ = null;
         }
         this.§^&§ = null;
         this.§;"$§ = null;
      }
      
      protected function §,!4§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function § "C§(param1:String, param2:String) : §[!T§
      {
         return this.§7"C§[this.§,!4§(param1,param2)] as §[!T§;
      }
      
      protected function §4g§(param1:String, param2:String, param3:§[!T§) : void
      {
         this.§7"C§[this.§,!4§(param1,param2)] = param3;
      }
      
      protected function §;"C§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§2!P§;
         }
         var _loc3_:§[!T§ = this.§ "C§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§,!4§(param1,param2) + " not found",§4!=§.§@!i§);
         }
         return _loc3_.§3!z§(false);
      }
      
      protected function §<!c§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§2!P§;
         }
         var _loc3_:§[!T§ = this.§ "C§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§,!4§(param1,param2) + " not found",§4!=§.§@!i§);
         }
         return _loc3_.content;
      }
      
      protected function §9%§(param1:String, param2:Function) : void
      {
         return §'!Y§.§0!§(this.§<!c§(param1),param2);
      }
      
      public function §"[§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§[!T§ = null;
         if(!this.§#H§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§[!'§(param1);
         }
         this.§2!P§ = param2;
         var _loc4_:§3=§;
         (_loc4_ = new §3=§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§%!=§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§`c§(_loc6_)).§2"-§.substr(-1) != "/")
            {
               if(this.§ "C§(_loc7_.§2"-§,this.§2!P§))
               {
                  _loc5_[_loc7_.§2"-§] = this.§ "C§(_loc7_.§2"-§,this.§2!P§);
               }
               else
               {
                  _loc5_[_loc7_.§2"-§] = _loc7_;
                  this.§4g§(_loc7_.§2"-§,this.§2!P§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§&! §(_loc5_);
      }
      
      public function §[!4§() : void
      {
         this.clear();
      }
      
      protected function §2!N§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§;"C§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§4!=§.§0""§);
         }
         this.§>!9§(jsonObject);
      }
      
      protected function §9u§(param1:String, param2:String) : void
      {
         if(!this.§]m§.getLevelForId(param1))
         {
            this.§]m§.addLevel(param1,§3v§.§!!E§(this.§;"C§(param2)));
         }
      }
      
      protected function §9!J§(param1:String) : void
      {
         this.§]m§.§5w§(JSON.parse(this.§;"C§(param1)));
      }
      
      protected function initializeFile(param1:String) : void
      {
         var _loc8_:String = null;
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§2!N§(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc8_ = _loc2_[1].toLowerCase();
            this.§9u§(_loc8_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§4!T§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
         {
            this.§2!t§(param1);
         }
         if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
         {
            this.§2!t§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
         {
            this.§>5§(param1);
         }
         var _loc6_:Array;
         if(_loc6_ = param1.match(/cutscenes.lua$/i))
         {
            this.§<0§(param1);
         }
         var _loc7_:Array;
         if(_loc7_ = param1.match(/cutscene.swf$/i))
         {
            this.§-"@§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§<!+§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§9!J§(param1);
         }
      }
      
      protected function §&! §(param1:Object) : void
      {
         this.§-@§(param1);
         if(this.§,m§())
         {
            if(!this.§@!q§)
            {
               this.§@!q§ = new Timer(§#!m§,0);
               this.§@!q§.addEventListener(TimerEvent.TIMER,this.§30§);
            }
            else
            {
               this.§@!q§.stop();
            }
            this.§@!q§.start();
         }
      }
      
      private function §-@§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§;"$§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§;"$§.push(_loc2_);
         }
         this.§^&§ = param1;
      }
      
      private function §,m§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §"M§ / 2)
         {
            if(!this.§^"E§())
            {
               break;
            }
         }
         var _loc2_:* = this.§;"$§.length > 0;
         if(this.§#H§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §^"E§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§;"$§.length > 0)
         {
            _loc1_ = this.§;"$§[0];
            this.§;"$§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §30§(param1:Event) : void
      {
         if(!this.§,m§())
         {
            if(this.§@!q§)
            {
               this.§@!q§.stop();
            }
         }
      }
      
      private function §<!+§(param1:String) : void
      {
         ++this.§>F§;
         var _loc2_:XML = new XML(this.§;"C§(param1));
         this.§;!o§.push(_loc2_);
         if(this.§;!o§.length == 1)
         {
            this.§"!m§ = new Loader();
            this.§"!m§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ "3§);
            this.§"!m§.loadBytes(this.§<!c§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function § "3§(param1:Event) : void
      {
         this.§"!m§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ "3§);
         var _loc2_:XML = this.§;!o§.shift();
         if(this.§;!o§.length > 0)
         {
            this.§"!m§ = new Loader();
            this.§"!m§.contentLoaderInfo.addEventListener(Event.INIT,this.§ "3§);
            this.§"!m§.loadBytes(this.§<!c§(this.§;!o§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§1"@§();
      }
      
      private function §<0§(param1:String) : void
      {
         var _loc2_:Object = §`L§.§3!,§(this.§;"C§(param1));
         § `§.§<0§(_loc2_);
      }
      
      private function §-"@§(param1:String) : void
      {
         § `§.§>!@§(this.§2!P§,this.§<!c§(param1,this.§2!P§));
      }
      
      protected function §>5§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§;"C§(param1));
         §>b§.§6!D§(_loc2_);
      }
      
      protected function §2!t§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§2!P§;
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
            var _loc2_:XML = new XML(§;"C§(filePath,activePackageName));
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
                  if(§ "C§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §;"C§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new § k§(_loc2_,_loc4_,param1.bitmapData));
            §1"@§();
         };
         ++this.§>F§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§9%§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§0!!§) : void
      {
         this.§5!=§.§ j§(param1);
      }
      
      protected function §1"@§() : void
      {
         --this.§>F§;
         if(this.§#H§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §4!T§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §]!a§.§9;§(id,XML(§;"C§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §1"@§();
         };
         ++this.§>F§;
         this.§9%§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §>!9§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §1"@§();
         };
         ++this.§>F§;
         if(dataObject.image)
         {
            spriteSheetClass = §'!P§;
            this.§9%§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §-o§;
            this.§9%§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §[!'§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§27§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6"2§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6"2§() * 255);
            _loc2_ -= int(this.§6"2§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§6"2§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §6"2§() : Number
      {
         this.§27§ ^= this.§27§ << 21;
         this.§27§ ^= this.§27§ >>> 35;
         this.§27§ ^= this.§27§ << 4;
         if(this.§27§ < 0)
         {
            this.§27§ &= 2147483647;
         }
         return this.§27§ / 2147483647;
      }
   }
}
