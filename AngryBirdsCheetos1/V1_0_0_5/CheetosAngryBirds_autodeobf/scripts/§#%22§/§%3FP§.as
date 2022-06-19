package §#"§
{
   import §#K§.§<!+§;
   import §#K§.§?I§;
   import §%j§.§8a§;
   import §&! §.§7L§;
   import §&! §.§;&§;
   import §&! §.§]a§;
   import §&!W§.§2!'§;
   import §&X§.§%!N§;
   import §&X§.§return§;
   import §'!H§.§"+§;
   import §'!H§.§'A§;
   import §'!H§.§5,§;
   import §'!H§.§8!-§;
   import §'!H§.§>!8§;
   import §6M§.§%`§;
   import §@!X§.§"u§;
   import §@!X§.§,!7§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §?P§ extends EventDispatcher implements §%!N§
   {
       
      
      protected var §;y§:int;
      
      protected var §6!X§:Object;
      
      protected var §7Q§:int = 0;
      
      protected var §>!S§:§"+§;
      
      protected var §7!<§:Vector.<XML>;
      
      protected var §=c§:Loader;
      
      public function §?P§()
      {
         this.§6!X§ = {};
         this.§7!<§ = new Vector.<XML>();
         super();
         this.§>!S§ = new §"+§();
      }
      
      public function get §&H§() : §5,§
      {
         return this.§>!S§;
      }
      
      public function get §#!J§() : Boolean
      {
         return this.§7Q§ == 0;
      }
      
      public function dispose() : void
      {
         this.§>!S§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§6!X§[param1] as §"u§).§'o§(false);
      }
      
      public function §!!J§(param1:String) : ByteArray
      {
         return (this.§6!X§[param1] as §"u§).content;
      }
      
      public function §9!Y§(param1:String, param2:Function) : void
      {
         return §;&§.§[@§(this.§!!J§(param1),param2);
      }
      
      public function §6G§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§"u§ = null;
         if(param2)
         {
            this.§5C§(param1);
         }
         var _loc3_:§,!7§ = new §,!7§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§`r§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§`§(_loc5_)).§25§.substr(-1) != "/")
            {
               if(!this.§6!X§[_loc6_.§25§])
               {
               }
               this.§6!X§[_loc6_.§25§] = _loc4_[_loc6_.§25§] = _loc6_;
            }
            _loc5_--;
         }
         this.§ !=§(_loc4_);
      }
      
      protected function § !=§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §"u§).§'o§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§7L§.§87§);
               }
               this.§9I§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §<!+§.§1L§(levelNameResults[1].toLowerCase(),§?I§.§!!A§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§'k§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§<J§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§,^§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§#!-§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§=Q§(fileName);
            }
         }
         if(this.§7Q§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §=Q§(param1:String) : void
      {
         ++this.§7Q§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§7!<§.push(_loc2_);
         if(this.§7!<§.length == 1)
         {
            this.§=c§ = new Loader();
            this.§=c§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§-B§);
            this.§=c§.loadBytes(this.§!!J§(_loc2_.Library.@swf));
         }
      }
      
      private function §-B§(param1:Event) : void
      {
         this.§=c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-B§);
         var _loc2_:XML = this.§7!<§.shift();
         §return§.§!!L§(this.§=c§,_loc2_.Library[0]);
         if(this.§7!<§.length > 0)
         {
            this.§=c§ = new Loader();
            this.§=c§.contentLoaderInfo.addEventListener(Event.INIT,this.§-B§);
            this.§=c§.loadBytes(this.§!!J§(this.§7!<§[0].Library.@swf));
         }
         this.§&b§();
      }
      
      private function §#!-§(param1:String) : void
      {
         var _loc2_:Object = §]a§.§"y§(this.getFileAsString(param1));
         §8a§.§!!U§(_loc2_);
      }
      
      protected function §,^§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §2!'§.§#!B§(_loc2_);
      }
      
      protected function §<J§(param1:String) : void
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
                  if(§6!X§[_loc13_] == null)
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
            §>!S§.§]F§(new §'A§(_loc2_,_loc4_,param1.bitmapData));
            §&b§();
         };
         ++this.§7Q§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§9!Y§(imagePath,onComplete);
      }
      
      protected function §&b§() : void
      {
         --this.§7Q§;
         if(this.§7Q§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §'k§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §%`§.§<!;§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§9!Y§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §9I§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §>!S§.§]F§(new spriteSheetClass(dataObject,param1.bitmapData));
            §&b§();
         };
         ++this.§7Q§;
         if(dataObject.image)
         {
            spriteSheetClass = §8!-§;
            this.§9!Y§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §>!8§;
            this.§9!Y§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §5C§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§;y§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§7T§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§7T§() * 255);
            _loc2_ -= int(this.§7T§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§7T§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §7T§() : Number
      {
         this.§;y§ ^= this.§;y§ << 21;
         this.§;y§ ^= this.§;y§ >>> 35;
         this.§;y§ ^= this.§;y§ << 4;
         if(this.§;y§ < 0)
         {
            this.§;y§ &= 2147483647;
         }
         return this.§;y§ / 2147483647;
      }
   }
}
