package §=+§
{
   import §+!R§.§4r§;
   import §+!R§.§8!0§;
   import §+!R§.§]!P§;
   import §+!R§.§]!Q§;
   import §+!R§.§^<§;
   import §2P§.§6n§;
   import §6!=§.§";§;
   import §6!=§.§implements§;
   import §7!5§.§&%§;
   import §7!5§.§=!2§;
   import §=!S§.§ !&§;
   import §=!S§.§#$§;
   import §=!S§.§4!Z§;
   import §=X§.§"!6§;
   import §=X§.§7!4§;
   import §>!J§.§?0§;
   import §`!H§.§7!B§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §#O§ extends EventDispatcher implements §&%§
   {
       
      
      protected var §%5§:int;
      
      protected var §+J§:Object;
      
      protected var §2y§:int = 0;
      
      protected var §<!9§:§^<§;
      
      protected var §case§:Vector.<XML>;
      
      protected var §8!c§:Loader;
      
      public function §#O§()
      {
         this.§+J§ = {};
         this.§case§ = new Vector.<XML>();
         super();
         this.§<!9§ = new §^<§();
      }
      
      public function get §9F§() : §8!0§
      {
         return this.§<!9§;
      }
      
      public function get §2F§() : Boolean
      {
         return this.§2y§ == 0;
      }
      
      public function dispose() : void
      {
         this.§<!9§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§+J§[param1] as §implements§).§%4§(false);
      }
      
      public function §1P§(param1:String) : ByteArray
      {
         return (this.§+J§[param1] as §implements§).content;
      }
      
      public function §]>§(param1:String, param2:Function) : void
      {
         return §4!Z§.§7!@§(this.§1P§(param1),param2);
      }
      
      public function §`!2§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§implements§ = null;
         if(param2)
         {
            this.§+1§(param1);
         }
         var _loc3_:§";§ = new §";§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§0!I§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§=h§(_loc5_)).§,i§.substr(-1) != "/")
            {
               if(!this.§+J§[_loc6_.§,i§])
               {
               }
               this.§+J§[_loc6_.§,i§] = _loc4_[_loc6_.§,i§] = _loc6_;
            }
            _loc5_--;
         }
         this.§0!§(_loc4_);
      }
      
      protected function §0!§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §implements§).§%4§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§ !&§.§-E§);
               }
               this.§>!&§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §7!4§.§!,§(levelNameResults[1].toLowerCase(),§"!6§.§]!<§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§;!T§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§]M§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§8g§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§ G§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§6!O§(fileName);
            }
         }
         if(this.§2y§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §6!O§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§2y§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§case§.push(_loc2_);
         if(this.§case§.length == 1)
         {
            this.§8!c§ = new Loader();
            this.§8!c§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§4o§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§8!c§.loadBytes(this.§1P§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §4o§(param1:Event) : void
      {
         this.§8!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§4o§);
         var _loc2_:XML = this.§case§.shift();
         §=!2§.§?!§(this.§8!c§,_loc2_.Library[0]);
         if(this.§case§.length > 0)
         {
            this.§8!c§ = new Loader();
            this.§8!c§.contentLoaderInfo.addEventListener(Event.INIT,this.§4o§);
            this.§8!c§.loadBytes(this.§1P§(this.§case§[0].Library.@swf));
         }
         this.§;q§();
      }
      
      private function § G§(param1:String) : void
      {
         var _loc2_:Object = §#$§.§2I§(this.getFileAsString(param1));
         §?0§.§<!S§(_loc2_);
      }
      
      protected function §8g§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §7!B§.§<j§(_loc2_);
      }
      
      protected function §]M§(param1:String) : void
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
                  if(§+J§[_loc13_] == null)
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
            §<!9§.§'^§(new §4r§(_loc2_,_loc4_,param1.bitmapData));
            §;q§();
         };
         ++this.§2y§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§]>§(imagePath,onComplete);
      }
      
      protected function §;q§() : void
      {
         --this.§2y§;
         if(this.§2y§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §;!T§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §6n§.§!!M§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§]>§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §>!&§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §<!9§.§'^§(new spriteSheetClass(dataObject,param1.bitmapData));
            §;q§();
         };
         ++this.§2y§;
         if(dataObject.image)
         {
            spriteSheetClass = §]!Q§;
            this.§]>§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §]!P§;
            this.§]>§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §+1§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§%5§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>!>§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>!>§() * 255);
            _loc2_ -= int(this.§>!>§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§>!>§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §>!>§() : Number
      {
         this.§%5§ ^= this.§%5§ << 21;
         this.§%5§ ^= this.§%5§ >>> 35;
         this.§%5§ ^= this.§%5§ << 4;
         if(this.§%5§ < 0)
         {
            this.§%5§ &= 2147483647;
         }
         return this.§%5§ / 2147483647;
      }
   }
}
