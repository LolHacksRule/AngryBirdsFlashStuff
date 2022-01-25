package §8B§
{
   import §&,§.§-?§;
   import §&,§.§3F§;
   import §-S§.§1h§;
   import §-S§.§;!2§;
   import §-S§.§?f§;
   import §-S§.§@!"§;
   import §-S§.§`"§;
   import §3n§.§2!C§;
   import §86§.§!!d§;
   import §86§.§9]§;
   import §9!Y§.§'S§;
   import §;m§.§'!a§;
   import §;m§.§8!A§;
   import §;m§.§=#§;
   import §<!M§.§'x§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import §use §.§"!X§;
   import §use §.§[!,§;
   
   public class §?7§ extends EventDispatcher implements §-?§
   {
       
      
      protected var §8P§:int;
      
      protected var §5!X§:Object;
      
      protected var §0n§:int = 0;
      
      protected var §;!+§:§?f§;
      
      protected var §-!R§:Vector.<XML>;
      
      protected var §9!7§:Loader;
      
      public function §?7§()
      {
         this.§5!X§ = {};
         this.§-!R§ = new Vector.<XML>();
         super();
         this.§;!+§ = new §?f§();
      }
      
      public function get §5!D§() : §`"§
      {
         return this.§;!+§;
      }
      
      public function get §6!_§() : Boolean
      {
         return this.§0n§ == 0;
      }
      
      public function dispose() : void
      {
         this.§;!+§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§5!X§[param1] as §"!X§).§9!J§(false);
      }
      
      public function §?F§(param1:String) : ByteArray
      {
         return (this.§5!X§[param1] as §"!X§).content;
      }
      
      public function §2F§(param1:String, param2:Function) : void
      {
         return §8!A§.§=!8§(this.§?F§(param1),param2);
      }
      
      public function §&v§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§"!X§ = null;
         if(param2)
         {
            this.§9X§(param1);
         }
         var _loc3_:§[!,§ = new §[!,§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§'![§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§^N§(_loc5_)).§<8§.substr(-1) != "/")
            {
               if(!this.§5!X§[_loc6_.§<8§])
               {
               }
               this.§5!X§[_loc6_.§<8§] = _loc4_[_loc6_.§<8§] = _loc6_;
            }
            _loc5_--;
         }
         this.§?%§(_loc4_);
      }
      
      protected function §?%§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §"!X§).§9!J§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§=#§.§7k§);
               }
               this.§@L§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §!!d§.§6T§(levelNameResults[1].toLowerCase(),§9]§.§]!2§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§0!$§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§%!7§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§!!V§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§!5§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§<!1§(fileName);
            }
         }
         if(this.§0n§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §<!1§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§0n§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§-!R§.push(_loc2_);
         if(this.§-!R§.length == 1)
         {
            this.§9!7§ = new Loader();
            this.§9!7§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§+!E§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§9!7§.loadBytes(this.§?F§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §+!E§(param1:Event) : void
      {
         this.§9!7§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+!E§);
         var _loc2_:XML = this.§-!R§.shift();
         §3F§.§5X§(this.§9!7§,_loc2_.Library[0]);
         if(this.§-!R§.length > 0)
         {
            this.§9!7§ = new Loader();
            this.§9!7§.contentLoaderInfo.addEventListener(Event.INIT,this.§+!E§);
            this.§9!7§.loadBytes(this.§?F§(this.§-!R§[0].Library.@swf));
         }
         this.§^B§();
      }
      
      private function §!5§(param1:String) : void
      {
         var _loc2_:Object = §'!a§.§%D§(this.getFileAsString(param1));
         §2!C§.§08§(_loc2_);
      }
      
      protected function §!!V§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §'S§.§3!"§(_loc2_);
      }
      
      protected function §%!7§(param1:String) : void
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
                  if(§5!X§[_loc13_] == null)
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
            §;!+§.§8! §(new §1h§(_loc2_,_loc4_,param1.bitmapData));
            §^B§();
         };
         ++this.§0n§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§2F§(imagePath,onComplete);
      }
      
      protected function §^B§() : void
      {
         --this.§0n§;
         if(this.§0n§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §0!$§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §'x§.§^j§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§2F§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §@L§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §;!+§.§8! §(new spriteSheetClass(dataObject,param1.bitmapData));
            §^B§();
         };
         ++this.§0n§;
         if(dataObject.image)
         {
            spriteSheetClass = §;!2§;
            this.§2F§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §@!"§;
            this.§2F§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §9X§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§8P§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+!_§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+!_§() * 255);
            _loc2_ -= int(this.§+!_§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§+!_§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §+!_§() : Number
      {
         this.§8P§ ^= this.§8P§ << 21;
         this.§8P§ ^= this.§8P§ >>> 35;
         this.§8P§ ^= this.§8P§ << 4;
         if(this.§8P§ < 0)
         {
            this.§8P§ &= 2147483647;
         }
         return this.§8P§ / 2147483647;
      }
   }
}
