package §7^§
{
   import § y§.ParticleManager;
   import §"a§.§2C§;
   import §',§.§0W§;
   import §',§.§63§;
   import §',§.§8f§;
   import §',§.§;^§;
   import §',§.§<K§;
   import §,!§.§0!6§;
   import §,!§.§>N§;
   import §24§.§-`§;
   import §24§.§3s§;
   import §8!G§.§-Z§;
   import §8!G§.§1w§;
   import §>K§.§"@§;
   import §>K§.§>!,§;
   import §>K§.§@U§;
   import §]f§.§06§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §4Q§ extends EventDispatcher implements §0!6§
   {
       
      
      protected var §]t§:int;
      
      protected var §?!2§:Object;
      
      protected var §?H§:int = 0;
      
      protected var §'2§:§63§;
      
      protected var §#z§:Vector.<XML>;
      
      protected var §=X§:Loader;
      
      public function §4Q§()
      {
         this.§?!2§ = {};
         this.§#z§ = new Vector.<XML>();
         super();
         this.§'2§ = new §63§();
      }
      
      public function get §+f§() : §0W§
      {
         return this.§'2§;
      }
      
      public function get §7!!§() : Boolean
      {
         return this.§?H§ == 0;
      }
      
      public function dispose() : void
      {
         this.§'2§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§?!2§[param1] as §3s§).§;z§(false);
      }
      
      public function §"5§(param1:String) : ByteArray
      {
         return (this.§?!2§[param1] as §3s§).content;
      }
      
      public function §2!4§(param1:String, param2:Function) : void
      {
         return §@U§.§7&§(this.§"5§(param1),param2);
      }
      
      public function §5l§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§3s§ = null;
         if(param2)
         {
            this.§,!J§(param1);
         }
         var _loc3_:§-`§ = new §-`§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§=`§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§8!'§(_loc5_)).§,!2§.substr(-1) != "/")
            {
               if(!this.§?!2§[_loc6_.§,!2§])
               {
               }
               this.§?!2§[_loc6_.§,!2§] = _loc4_[_loc6_.§,!2§] = _loc6_;
            }
            _loc5_--;
         }
         this.§?T§(_loc4_);
      }
      
      protected function §?T§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §3s§).§;z§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§"@§.§;!A§);
               }
               this.§-!&§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §-Z§.§6!-§(levelNameResults[1].toLowerCase(),§1w§.§^!7§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§"^§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§1!-§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§[!D§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§4@§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§&!0§(fileName);
            }
         }
         if(this.§?H§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §&!0§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§?H§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§#z§.push(_loc2_);
         if(this.§#z§.length == 1)
         {
            this.§=X§ = new Loader();
            this.§=X§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;f§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§=X§.loadBytes(this.§"5§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §;f§(param1:Event) : void
      {
         this.§=X§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;f§);
         var _loc2_:XML = this.§#z§.shift();
         §>N§.§1T§(this.§=X§,_loc2_.Library[0]);
         if(this.§#z§.length > 0)
         {
            this.§=X§ = new Loader();
            this.§=X§.contentLoaderInfo.addEventListener(Event.INIT,this.§;f§);
            this.§=X§.loadBytes(this.§"5§(this.§#z§[0].Library.@swf));
         }
         this.§!G§();
      }
      
      private function §4@§(param1:String) : void
      {
         var _loc2_:Object = §>!,§.§?$§(this.getFileAsString(param1));
         §06§.§3r§(_loc2_);
      }
      
      protected function §[!D§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §2C§.§ u§(_loc2_);
      }
      
      protected function §1!-§(param1:String) : void
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
                  if(§?!2§[_loc13_] == null)
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
            §'2§.§`'§(new §8f§(_loc2_,_loc4_,param1.bitmapData));
            §!G§();
         };
         ++this.§?H§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§2!4§(imagePath,onComplete);
      }
      
      protected function §!G§() : void
      {
         --this.§?H§;
         if(this.§?H§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §"^§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§?v§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§2!4§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §-!&§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §'2§.§`'§(new spriteSheetClass(dataObject,param1.bitmapData));
            §!G§();
         };
         ++this.§?H§;
         if(dataObject.image)
         {
            spriteSheetClass = §<K§;
            this.§2!4§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §;^§;
            this.§2!4§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §,!J§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§]t§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§3"§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§3"§() * 255);
            _loc2_ -= int(this.§3"§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§3"§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §3"§() : Number
      {
         this.§]t§ ^= this.§]t§ << 21;
         this.§]t§ ^= this.§]t§ >>> 35;
         this.§]t§ ^= this.§]t§ << 4;
         if(this.§]t§ < 0)
         {
            this.§]t§ &= 2147483647;
         }
         return this.§]t§ / 2147483647;
      }
   }
}
