package §`r§
{
   import § a§.§`4§;
   import §"!_§.§!d§;
   import §"!_§.§?!0§;
   import §%O§.§,!R§;
   import §,J§.§7!A§;
   import §,J§.§74§;
   import §4!9§.§&8§;
   import §4!9§.§3B§;
   import §4!9§.§7-§;
   import §5H§.§0!Y§;
   import §5H§.§0Y§;
   import §5H§.§5<§;
   import §5H§.§8!#§;
   import §5H§.§9!P§;
   import §8v§.§[!7§;
   import §[!U§.§<O§;
   import §[!U§.§?y§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §>Z§ extends EventDispatcher implements §!d§
   {
       
      
      protected var §<R§:int;
      
      protected var §3U§:Object;
      
      protected var §[g§:int = 0;
      
      protected var §&O§:§0Y§;
      
      protected var §5=§:Vector.<XML>;
      
      protected var §#g§:Loader;
      
      public function §>Z§()
      {
         this.§3U§ = {};
         this.§5=§ = new Vector.<XML>();
         super();
         this.§&O§ = new §0Y§();
      }
      
      public function get §82§() : §9!P§
      {
         return this.§&O§;
      }
      
      public function get §@8§() : Boolean
      {
         return this.§[g§ == 0;
      }
      
      public function dispose() : void
      {
         this.§&O§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§3U§[param1] as §<O§).§"!Z§(false);
      }
      
      public function §<e§(param1:String) : ByteArray
      {
         return (this.§3U§[param1] as §<O§).content;
      }
      
      public function §5l§(param1:String, param2:Function) : void
      {
         return §3B§.§3W§(this.§<e§(param1),param2);
      }
      
      public function §!<§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§<O§ = null;
         if(param2)
         {
            this.§]N§(param1);
         }
         var _loc3_:§?y§ = new §?y§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§1K§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§"j§(_loc5_)).§"!N§.substr(-1) != "/")
            {
               if(!this.§3U§[_loc6_.§"!N§])
               {
               }
               this.§3U§[_loc6_.§"!N§] = _loc4_[_loc6_.§"!N§] = _loc6_;
            }
            _loc5_--;
         }
         this.§9+§(_loc4_);
      }
      
      protected function §9+§(param1:Object) : void
      {
         var fileName:String = null;
         var levelNameResults:Array = null;
         var particleNameResults:Array = null;
         var compositeSpriteSheetNameResults:Array = null;
         var compositeNameResults:Array = null;
         var cutSceneNameResults:Array = null;
         var jsonObject:Object = null;
         var packageFiles:Object = param1;
         for(fileName in packageFiles)
         {
            if(fileName.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
            {
               try
               {
                  jsonObject = JSON.parse((packageFiles[fileName] as §<O§).§"!Z§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§&8§.§'!Z§);
               }
               this.§ T§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §7!A§.§2B§(levelNameResults[1].toLowerCase(),§74§.§=!9§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§!O§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§'E§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§9P§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§1B§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§>!B§(fileName);
            }
         }
         if(this.§[g§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §>!B§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§[g§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§5=§.push(_loc2_);
         if(this.§5=§.length == 1)
         {
            this.§#g§ = new Loader();
            this.§#g§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;5§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§#g§.loadBytes(this.§<e§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §;5§(param1:Event) : void
      {
         this.§#g§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;5§);
         var _loc2_:XML = this.§5=§.shift();
         §?!0§.§^?§(this.§#g§,_loc2_.Library[0]);
         if(this.§5=§.length > 0)
         {
            this.§#g§ = new Loader();
            this.§#g§.contentLoaderInfo.addEventListener(Event.INIT,this.§;5§);
            this.§#g§.loadBytes(this.§<e§(this.§5=§[0].Library.@swf));
         }
         this.§1!8§();
      }
      
      private function §1B§(param1:String) : void
      {
         var _loc2_:Object = §7-§.§ z§(this.getFileAsString(param1));
         §`4§.§2g§(_loc2_);
      }
      
      protected function §9P§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §,!R§.§<!1§(_loc2_);
      }
      
      protected function §'E§(param1:String) : void
      {
         var filePath:String = param1;
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
            var _loc2_:XML = new XML(getFileAsString(filePath));
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
                  if(§3U§[_loc13_] == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = getFileAsString(_loc13_);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §&O§.§2#§(new §5<§(_loc2_,_loc4_,param1.bitmapData));
            §1!8§();
         };
         ++this.§[g§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§5l§(imagePath,onComplete);
      }
      
      protected function §1!8§() : void
      {
         --this.§[g§;
         if(this.§[g§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §!O§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §[!7§.§]=§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§5l§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function § T§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §&O§.§2#§(new spriteSheetClass(dataObject,param1.bitmapData));
            §1!8§();
         };
         ++this.§[g§;
         if(dataObject.image)
         {
            spriteSheetClass = §0!Y§;
            this.§5l§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §8!#§;
            this.§5l§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §]N§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§<R§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§2!J§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§2!J§() * 255);
            _loc2_ -= int(this.§2!J§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§2!J§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §2!J§() : Number
      {
         this.§<R§ ^= this.§<R§ << 21;
         this.§<R§ ^= this.§<R§ >>> 35;
         this.§<R§ ^= this.§<R§ << 4;
         if(this.§<R§ < 0)
         {
            this.§<R§ &= 2147483647;
         }
         return this.§<R§ / 2147483647;
      }
   }
}
