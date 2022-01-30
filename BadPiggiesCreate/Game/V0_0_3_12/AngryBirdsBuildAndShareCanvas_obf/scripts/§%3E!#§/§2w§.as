package §>!#§
{
   import §,%§.§6G§;
   import §-!^§.§'u§;
   import §-!^§.§6!L§;
   import §-!^§.§<R§;
   import §0E§.§#O§;
   import §0E§.§-!F§;
   import §3u§.§%6§;
   import §3u§.§5"%§;
   import §3u§.§>Y§;
   import §3u§.§]!%§;
   import §3u§.§]d§;
   import §=!E§.§,!`§;
   import §@!-§.§>"&§;
   import §[$§.§0!U§;
   import §[$§.§^!6§;
   import §]^§.§0!1§;
   import §]^§.§0!3§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §2w§ extends EventDispatcher implements §0!1§
   {
       
      
      protected var §3!F§:int;
      
      protected var §@!%§:Object;
      
      protected var §0!p§:int = 0;
      
      protected var §0!J§:§]d§;
      
      protected var §^F§:Vector.<XML>;
      
      protected var §>!+§:Loader;
      
      public function §2w§()
      {
         this.§@!%§ = {};
         this.§^F§ = new Vector.<XML>();
         super();
         this.§0!J§ = new §]d§();
      }
      
      public function get §7!@§() : §>Y§
      {
         return this.§0!J§;
      }
      
      public function get §1!Z§() : Boolean
      {
         return this.§0!p§ == 0;
      }
      
      public function dispose() : void
      {
         this.§0!J§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§@!%§[param1] as §0!U§).§'!v§(false);
      }
      
      public function §?P§(param1:String) : ByteArray
      {
         return (this.§@!%§[param1] as §0!U§).content;
      }
      
      public function §5">§(param1:String, param2:Function) : void
      {
         return §6!L§.§[L§(this.§?P§(param1),param2);
      }
      
      public function §0z§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§0!U§ = null;
         if(param2)
         {
            this.§]+§(param1);
         }
         var _loc3_:§^!6§ = new §^!6§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§<!0§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§"!v§(_loc5_)).§>!r§.substr(-1) != "/")
            {
               if(!this.§@!%§[_loc6_.§>!r§])
               {
               }
               this.§@!%§[_loc6_.§>!r§] = _loc4_[_loc6_.§>!r§] = _loc6_;
            }
            _loc5_--;
         }
         this.§[!<§(_loc4_);
      }
      
      protected function §[!<§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §0!U§).§'!v§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§<R§.§^"-§);
               }
               this.§`R§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §-!F§.§^D§(levelNameResults[1].toLowerCase(),§#O§.§-@§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§6"3§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§1K§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§7!u§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§=!7§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§?b§(fileName);
            }
         }
         if(this.§0!p§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §?b§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§0!p§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§^F§.push(_loc2_);
         if(this.§^F§.length == 1)
         {
            this.§>!+§ = new Loader();
            this.§>!+§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§1!B§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§>!+§.loadBytes(this.§?P§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §1!B§(param1:Event) : void
      {
         this.§>!+§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1!B§);
         var _loc2_:XML = this.§^F§.shift();
         §0!3§.§@u§(this.§>!+§,_loc2_.Library[0]);
         if(this.§^F§.length > 0)
         {
            this.§>!+§ = new Loader();
            this.§>!+§.contentLoaderInfo.addEventListener(Event.INIT,this.§1!B§);
            this.§>!+§.loadBytes(this.§?P§(this.§^F§[0].Library.@swf));
         }
         this.§?>§();
      }
      
      private function §=!7§(param1:String) : void
      {
         var _loc2_:Object = §'u§.§#Q§(this.getFileAsString(param1));
         §6G§.§,+§(_loc2_);
      }
      
      protected function §7!u§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §>"&§.§?E§(_loc2_);
      }
      
      protected function §1K§(param1:String) : void
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
                  if(§@!%§[_loc13_] == null)
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
            §0!J§.§8Z§(new §]!%§(_loc2_,_loc4_,param1.bitmapData));
            §?>§();
         };
         ++this.§0!p§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§5">§(imagePath,onComplete);
      }
      
      protected function §?>§() : void
      {
         --this.§0!p§;
         if(this.§0!p§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §6"3§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §,!`§.§7"$§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§5">§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §`R§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §0!J§.§8Z§(new spriteSheetClass(dataObject,param1.bitmapData));
            §?>§();
         };
         ++this.§0!p§;
         if(dataObject.image)
         {
            spriteSheetClass = §%6§;
            this.§5">§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §5"%§;
            this.§5">§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §]+§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§3!F§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§`!C§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§`!C§() * 255);
            _loc2_ -= int(this.§`!C§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§`!C§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §`!C§() : Number
      {
         this.§3!F§ ^= this.§3!F§ << 21;
         this.§3!F§ ^= this.§3!F§ >>> 35;
         this.§3!F§ ^= this.§3!F§ << 4;
         if(this.§3!F§ < 0)
         {
            this.§3!F§ &= 2147483647;
         }
         return this.§3!F§ / 2147483647;
      }
   }
}
