package §&z§
{
   import §!%§.§+"§;
   import §!%§.§;!2§;
   import §!%§.§@J§;
   import §0C§.§"!T§;
   import §0C§.§;!Q§;
   import §2]§.§#!I§;
   import §2m§.§,p§;
   import §2m§.§<7§;
   import §5C§.§%!Q§;
   import §9!6§.§-!7§;
   import §9!6§.§]t§;
   import §>V§.§,z§;
   import §>V§.§0S§;
   import §>V§.§8O§;
   import §>V§.§8^§;
   import §>V§.§>D§;
   import §@!§.§>!4§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §"!&§ extends EventDispatcher implements §]t§
   {
       
      
      protected var §2a§:int;
      
      protected var §9!S§:Object;
      
      protected var §?!4§:int = 0;
      
      protected var §^E§:§>D§;
      
      protected var §15§:Vector.<XML>;
      
      protected var §7!+§:Loader;
      
      public function §"!&§()
      {
         this.§9!S§ = {};
         this.§15§ = new Vector.<XML>();
         super();
         this.§^E§ = new §>D§();
      }
      
      public function get §0N§() : §8O§
      {
         return this.§^E§;
      }
      
      public function get §&+§() : Boolean
      {
         return this.§?!4§ == 0;
      }
      
      public function dispose() : void
      {
         this.§^E§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§9!S§[param1] as §,p§).§@K§(false);
      }
      
      public function §9@§(param1:String) : ByteArray
      {
         return (this.§9!S§[param1] as §,p§).content;
      }
      
      public function §2!K§(param1:String, param2:Function) : void
      {
         return §+"§.§%j§(this.§9@§(param1),param2);
      }
      
      public function §@! §(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§,p§ = null;
         if(param2)
         {
            this.§ w§(param1);
         }
         var _loc3_:§<7§ = new §<7§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§0E§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§]!9§(_loc5_)).§49§.substr(-1) != "/")
            {
               if(!this.§9!S§[_loc6_.§49§])
               {
               }
               this.§9!S§[_loc6_.§49§] = _loc4_[_loc6_.§49§] = _loc6_;
            }
            _loc5_--;
         }
         this.§+!>§(_loc4_);
      }
      
      protected function §+!>§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §,p§).§@K§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§;!2§.§&!^§);
               }
               this.§@P§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §"!T§.§?!I§(levelNameResults[1].toLowerCase(),§;!Q§.§#j§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§-!,§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§^!M§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§#!'§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§+!§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§,!0§(fileName);
            }
         }
         if(this.§?!4§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §,!0§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§?!4§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§15§.push(_loc2_);
         if(this.§15§.length == 1)
         {
            this.§7!+§ = new Loader();
            this.§7!+§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3'§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§7!+§.loadBytes(this.§9@§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §3'§(param1:Event) : void
      {
         this.§7!+§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3'§);
         var _loc2_:XML = this.§15§.shift();
         §-!7§.§9!A§(this.§7!+§,_loc2_.Library[0]);
         if(this.§15§.length > 0)
         {
            this.§7!+§ = new Loader();
            this.§7!+§.contentLoaderInfo.addEventListener(Event.INIT,this.§3'§);
            this.§7!+§.loadBytes(this.§9@§(this.§15§[0].Library.@swf));
         }
         this.§!=§();
      }
      
      private function §+!§(param1:String) : void
      {
         var _loc2_:Object = §@J§.§!`§(this.getFileAsString(param1));
         §#!I§.§6z§(_loc2_);
      }
      
      protected function §#!'§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §>!4§.§9Y§(_loc2_);
      }
      
      protected function §^!M§(param1:String) : void
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
                  if(§9!S§[_loc13_] == null)
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
            §^E§.§!!I§(new §,z§(_loc2_,_loc4_,param1.bitmapData));
            §!=§();
         };
         ++this.§?!4§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§2!K§(imagePath,onComplete);
      }
      
      protected function §!=§() : void
      {
         --this.§?!4§;
         if(this.§?!4§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §-!,§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §%!Q§.§%S§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§2!K§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §@P§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §^E§.§!!I§(new spriteSheetClass(dataObject,param1.bitmapData));
            §!=§();
         };
         ++this.§?!4§;
         if(dataObject.image)
         {
            spriteSheetClass = §8^§;
            this.§2!K§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §0S§;
            this.§2!K§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function § w§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§2a§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§^!P§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§^!P§() * 255);
            _loc2_ -= int(this.§^!P§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§^!P§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §^!P§() : Number
      {
         this.§2a§ ^= this.§2a§ << 21;
         this.§2a§ ^= this.§2a§ >>> 35;
         this.§2a§ ^= this.§2a§ << 4;
         if(this.§2a§ < 0)
         {
            this.§2a§ &= 2147483647;
         }
         return this.§2a§ / 2147483647;
      }
   }
}
