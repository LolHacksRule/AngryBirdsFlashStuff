package §4!6§
{
   import §%!>§.§%!8§;
   import §'v§.ParticleManager;
   import §0!D§.§'!5§;
   import §0!D§.§5$§;
   import §2%§.§&!7§;
   import §2%§.§&i§;
   import §9!0§.§85§;
   import §9!0§.§<=§;
   import §9!0§.§@5§;
   import §?!;§.§6H§;
   import §?!;§.§;!,§;
   import §@&§.§!!?§;
   import §@&§.§"!!§;
   import §@&§.§'!§;
   import §@&§.§,D§;
   import §@&§.§5!D§;
   import §^'§.§"'§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §8Y§ extends EventDispatcher implements §'!5§
   {
       
      
      protected var §;I§:int;
      
      protected var §#W§:Object;
      
      protected var §?!0§:int = 0;
      
      protected var §[!-§:§,D§;
      
      protected var §26§:Vector.<XML>;
      
      protected var §'f§:Loader;
      
      public function §8Y§()
      {
         this.§#W§ = {};
         this.§26§ = new Vector.<XML>();
         super();
         this.§[!-§ = new §,D§();
      }
      
      public function get §0D§() : §!!?§
      {
         return this.§[!-§;
      }
      
      public function get §4P§() : Boolean
      {
         return this.§?!0§ == 0;
      }
      
      public function dispose() : void
      {
         this.§[!-§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§#W§[param1] as §&i§).§<!J§(false);
      }
      
      public function §00§(param1:String) : ByteArray
      {
         return (this.§#W§[param1] as §&i§).content;
      }
      
      public function §-!9§(param1:String, param2:Function) : void
      {
         return §<=§.§9q§(this.§00§(param1),param2);
      }
      
      public function §"!6§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§&i§ = null;
         if(param2)
         {
            this.§2u§(param1);
         }
         var _loc3_:§&!7§ = new §&!7§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§ h§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§6s§(_loc5_)).§1p§.substr(-1) != "/")
            {
               if(!this.§#W§[_loc6_.§1p§])
               {
               }
               this.§#W§[_loc6_.§1p§] = _loc4_[_loc6_.§1p§] = _loc6_;
            }
            _loc5_--;
         }
         this.§^G§(_loc4_);
      }
      
      protected function §^G§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §&i§).§<!J§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§85§.§`!G§);
               }
               this.§[G§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §6H§.§6T§(levelNameResults[1].toLowerCase(),§;!,§.§1G§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§2k§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§<H§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§ L§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§6`§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§@p§(fileName);
            }
         }
         if(this.§?!0§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §@p§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§?!0§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§26§.push(_loc2_);
         if(this.§26§.length == 1)
         {
            this.§'f§ = new Loader();
            this.§'f§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§7!C§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§'f§.loadBytes(this.§00§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §7!C§(param1:Event) : void
      {
         this.§'f§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7!C§);
         var _loc2_:XML = this.§26§.shift();
         §5$§.§[!E§(this.§'f§,_loc2_.Library[0]);
         if(this.§26§.length > 0)
         {
            this.§'f§ = new Loader();
            this.§'f§.contentLoaderInfo.addEventListener(Event.INIT,this.§7!C§);
            this.§'f§.loadBytes(this.§00§(this.§26§[0].Library.@swf));
         }
         this.§=!G§();
      }
      
      private function §6`§(param1:String) : void
      {
         var _loc2_:Object = §@5§.§]!7§(this.getFileAsString(param1));
         §%!8§.§0f§(_loc2_);
      }
      
      protected function § L§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §"'§.§`C§(_loc2_);
      }
      
      protected function §<H§(param1:String) : void
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
                  if(§#W§[_loc13_] == null)
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
            §[!-§.§&!J§(new §'!§(_loc2_,_loc4_,param1.bitmapData));
            §=!G§();
         };
         ++this.§?!0§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§-!9§(imagePath,onComplete);
      }
      
      protected function §=!G§() : void
      {
         --this.§?!0§;
         if(this.§?!0§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §2k§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§=w§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§-!9§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §[G§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §[!-§.§&!J§(new spriteSheetClass(dataObject,param1.bitmapData));
            §=!G§();
         };
         ++this.§?!0§;
         if(dataObject.image)
         {
            spriteSheetClass = §"!!§;
            this.§-!9§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §5!D§;
            this.§-!9§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §2u§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§;I§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§ !>§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§ !>§() * 255);
            _loc2_ -= int(this.§ !>§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§ !>§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function § !>§() : Number
      {
         this.§;I§ ^= this.§;I§ << 21;
         this.§;I§ ^= this.§;I§ >>> 35;
         this.§;I§ ^= this.§;I§ << 4;
         if(this.§;I§ < 0)
         {
            this.§;I§ &= 2147483647;
         }
         return this.§;I§ / 2147483647;
      }
   }
}
