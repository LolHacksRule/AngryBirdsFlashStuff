package §?P§
{
   import §%`§.§`p§;
   import §&! §.§7L§;
   import §&! §.§;&§;
   import §&! §.§]a§;
   import §'!H§.§"+§;
   import §'!H§.§'A§;
   import §'!H§.§5,§;
   import §'!H§.§8!-§;
   import §'!H§.§>!8§;
   import §,!7§.§#!K§;
   import §,!7§.§7!G§;
   import §4W§.§9b§;
   import §8a§.§[!7§;
   import §<!+§.§[!!§;
   import §<!+§.§with§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import §return§.§![§;
   import §return§.§#!D§;
   
   public class §;y§ extends EventDispatcher implements §![§
   {
       
      
      protected var §6!X§:int;
      
      protected var §7Q§:Object;
      
      protected var §7!<§:int = 0;
      
      protected var §&U§:§"+§;
      
      protected var §=c§:Vector.<XML>;
      
      protected var §&H§:Loader;
      
      public function §;y§()
      {
         this.§7Q§ = {};
         this.§=c§ = new Vector.<XML>();
         super();
         this.§&U§ = new §"+§();
      }
      
      public function get §#!J§() : §5,§
      {
         return this.§&U§;
      }
      
      public function get §!!J§() : Boolean
      {
         return this.§7!<§ == 0;
      }
      
      public function dispose() : void
      {
         this.§&U§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§7Q§[param1] as §7!G§).§-7§(false);
      }
      
      public function §9!Y§(param1:String) : ByteArray
      {
         return (this.§7Q§[param1] as §7!G§).content;
      }
      
      public function §6G§(param1:String, param2:Function) : void
      {
         return §;&§.§[@§(this.§9!Y§(param1),param2);
      }
      
      public function § !=§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§7!G§ = null;
         if(param2)
         {
            this.§7T§(param1);
         }
         var _loc3_:§#!K§ = new §#!K§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§`§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§?!8§(_loc5_)).§8!§.substr(-1) != "/")
            {
               if(!this.§7Q§[_loc6_.§8!§])
               {
               }
               this.§7Q§[_loc6_.§8!§] = _loc4_[_loc6_.§8!§] = _loc6_;
            }
            _loc5_--;
         }
         this.§=Q§(_loc4_);
      }
      
      protected function §=Q§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §7!G§).§-7§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§7L§.§87§);
               }
               this.§5C§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §[!!§.§,!Q§(levelNameResults[1].toLowerCase(),§with§.§1!G§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§9I§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§&b§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§<J§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§,^§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§-B§(fileName);
            }
         }
         if(this.§7!<§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §-B§(param1:String) : void
      {
         ++this.§7!<§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§=c§.push(_loc2_);
         if(this.§=c§.length == 1)
         {
            this.§&H§ = new Loader();
            this.§&H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#!-§);
            this.§&H§.loadBytes(this.§9!Y§(_loc2_.Library.@swf));
         }
      }
      
      private function §#!-§(param1:Event) : void
      {
         this.§&H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#!-§);
         var _loc2_:XML = this.§=c§.shift();
         §#!D§.§%!N§(this.§&H§,_loc2_.Library[0]);
         if(this.§=c§.length > 0)
         {
            this.§&H§ = new Loader();
            this.§&H§.contentLoaderInfo.addEventListener(Event.INIT,this.§#!-§);
            this.§&H§.loadBytes(this.§9!Y§(this.§=c§[0].Library.@swf));
         }
         this.§'k§();
      }
      
      private function §,^§(param1:String) : void
      {
         var _loc2_:Object = §]a§.§"y§(this.getFileAsString(param1));
         §[!7§.§^!B§(_loc2_);
      }
      
      protected function §<J§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §9b§.§^l§(_loc2_);
      }
      
      protected function §&b§(param1:String) : void
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
                  if(§7Q§[_loc13_] == null)
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
            §&U§.§]F§(new §'A§(_loc2_,_loc4_,param1.bitmapData));
            §'k§();
         };
         ++this.§7!<§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§6G§(imagePath,onComplete);
      }
      
      protected function §'k§() : void
      {
         --this.§7!<§;
         if(this.§7!<§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §9I§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §`p§.§super§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§6G§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §5C§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §&U§.§]F§(new spriteSheetClass(dataObject,param1.bitmapData));
            §'k§();
         };
         ++this.§7!<§;
         if(dataObject.image)
         {
            spriteSheetClass = §8!-§;
            this.§6G§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §>!8§;
            this.§6G§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §7T§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§6!X§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+B§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+B§() * 255);
            _loc2_ -= int(this.§+B§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§+B§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §+B§() : Number
      {
         this.§6!X§ ^= this.§6!X§ << 21;
         this.§6!X§ ^= this.§6!X§ >>> 35;
         this.§6!X§ ^= this.§6!X§ << 4;
         if(this.§6!X§ < 0)
         {
            this.§6!X§ &= 2147483647;
         }
         return this.§6!X§ / 2147483647;
      }
   }
}
