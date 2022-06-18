package §0M§
{
   import § "§.§8!3§;
   import § "§.§;4§;
   import §-'§.§5!5§;
   import §-'§.§7<§;
   import §-'§.§9q§;
   import §-z§.§0!§;
   import §-z§.§1!$§;
   import §-z§.§1!8§;
   import §-z§.§7!#§;
   import §-z§.§`y§;
   import §1g§.§3[§;
   import §1g§.§]R§;
   import §3A§.§6L§;
   import §[n§.§%U§;
   import §`4§.ParticleManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import §null §.§!@§;
   import §null §.§;i§;
   
   public class §@2§ extends EventDispatcher implements §!@§
   {
       
      
      protected var §#C§:int;
      
      protected var §2=§:Object;
      
      protected var §,0§:int = 0;
      
      protected var § r§:§1!8§;
      
      protected var §&R§:Vector.<XML>;
      
      protected var §2I§:Loader;
      
      public function §@2§()
      {
         this.§2=§ = {};
         this.§&R§ = new Vector.<XML>();
         super();
         this.§ r§ = new §1!8§();
      }
      
      public function get §3!D§() : §0!§
      {
         return this.§ r§;
      }
      
      public function get §"L§() : Boolean
      {
         return this.§,0§ == 0;
      }
      
      public function dispose() : void
      {
         this.§ r§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§2=§[param1] as §3[§).§[a§(false);
      }
      
      public function §=f§(param1:String) : ByteArray
      {
         return (this.§2=§[param1] as §3[§).content;
      }
      
      public function §#h§(param1:String, param2:Function) : void
      {
         return §5!5§.§>a§(this.§=f§(param1),param2);
      }
      
      public function §3<§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§3[§ = null;
         if(param2)
         {
            this.§"z§(param1);
         }
         var _loc3_:§]R§ = new §]R§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§2!$§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§<c§(_loc5_)).§<_§.substr(-1) != "/")
            {
               if(!this.§2=§[_loc6_.§<_§])
               {
               }
               this.§2=§[_loc6_.§<_§] = _loc4_[_loc6_.§<_§] = _loc6_;
            }
            _loc5_--;
         }
         this.§1!1§(_loc4_);
      }
      
      protected function §1!1§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §3[§).§[a§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§9q§.§7v§);
               }
               this.§9+§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §8!3§.§<!§(levelNameResults[1].toLowerCase(),§;4§.§@S§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§;8§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§;>§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§,2§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§%t§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§50§(fileName);
            }
         }
         if(this.§,0§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §50§(param1:String) : void
      {
         ++this.§,0§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§&R§.push(_loc2_);
         if(this.§&R§.length == 1)
         {
            this.§2I§ = new Loader();
            this.§2I§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§9z§);
            this.§2I§.loadBytes(this.§=f§(_loc2_.Library.@swf));
         }
      }
      
      private function §9z§(param1:Event) : void
      {
         this.§2I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§9z§);
         var _loc2_:XML = this.§&R§.shift();
         §;i§.§5B§(this.§2I§,_loc2_.Library[0]);
         if(this.§&R§.length > 0)
         {
            this.§2I§ = new Loader();
            this.§2I§.contentLoaderInfo.addEventListener(Event.INIT,this.§9z§);
            this.§2I§.loadBytes(this.§=f§(this.§&R§[0].Library.@swf));
         }
         this.§]%§();
      }
      
      private function §%t§(param1:String) : void
      {
         var _loc2_:Object = §7<§.§=?§(this.getFileAsString(param1));
         §6L§.§&Y§(_loc2_);
      }
      
      protected function §,2§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §%U§.§9s§(_loc2_);
      }
      
      protected function §;>§(param1:String) : void
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
                  if(§2=§[_loc13_] == null)
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
            § r§.§>Q§(new §1!$§(_loc2_,_loc4_,param1.bitmapData));
            §]%§();
         };
         ++this.§,0§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§#h§(imagePath,onComplete);
      }
      
      protected function §]%§() : void
      {
         --this.§,0§;
         if(this.§,0§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §;8§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§3q§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§#h§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §9+§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            § r§.§>Q§(new spriteSheetClass(dataObject,param1.bitmapData));
            §]%§();
         };
         ++this.§,0§;
         if(dataObject.image)
         {
            spriteSheetClass = §7!#§;
            this.§#h§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §`y§;
            this.§#h§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §"z§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§#C§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6B§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6B§() * 255);
            _loc2_ -= int(this.§6B§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§6B§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §6B§() : Number
      {
         this.§#C§ ^= this.§#C§ << 21;
         this.§#C§ ^= this.§#C§ >>> 35;
         this.§#C§ ^= this.§#C§ << 4;
         if(this.§#C§ < 0)
         {
            this.§#C§ &= 2147483647;
         }
         return this.§#C§ / 2147483647;
      }
   }
}
