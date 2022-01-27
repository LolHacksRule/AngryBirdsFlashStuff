package §4!D§
{
   import § !N§.§^!>§;
   import §"I§.§+5§;
   import §"I§.§,o§;
   import §"I§.§8!"§;
   import §'!I§.§8Y§;
   import §+!0§.§,!P§;
   import §+!0§.§3%§;
   import §+!0§.§8l§;
   import §+!0§.§@§;
   import §+!0§.§[_§;
   import §+T§.§7e§;
   import §+T§.§@!?§;
   import §5=§.§8G§;
   import §5=§.§^n§;
   import §?P§.§,!Q§;
   import §?P§.§]f§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import §try§.ParticleManager;
   
   public class §2H§ extends EventDispatcher implements §7e§
   {
       
      
      protected var §?"§:int;
      
      protected var §1p§:Object;
      
      protected var §&!&§:int = 0;
      
      protected var §2z§:§3%§;
      
      protected var §[%§:Vector.<XML>;
      
      protected var §?Y§:Loader;
      
      public function §2H§()
      {
         this.§1p§ = {};
         this.§[%§ = new Vector.<XML>();
         super();
         this.§2z§ = new §3%§();
      }
      
      public function get §0n§() : §8l§
      {
         return this.§2z§;
      }
      
      public function get §!L§() : Boolean
      {
         return this.§&!&§ == 0;
      }
      
      public function dispose() : void
      {
         this.§2z§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1p§[param1] as §,!Q§).§@x§(false);
      }
      
      public function §7B§(param1:String) : ByteArray
      {
         return (this.§1p§[param1] as §,!Q§).content;
      }
      
      public function §+!C§(param1:String, param2:Function) : void
      {
         return §8!"§.§>K§(this.§7B§(param1),param2);
      }
      
      public function §"!N§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§,!Q§ = null;
         if(param2)
         {
            this.§2!0§(param1);
         }
         var _loc3_:§]f§ = new §]f§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§1o§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§"!>§(_loc5_)).§<!K§.substr(-1) != "/")
            {
               if(!this.§1p§[_loc6_.§<!K§])
               {
               }
               this.§1p§[_loc6_.§<!K§] = _loc4_[_loc6_.§<!K§] = _loc6_;
            }
            _loc5_--;
         }
         this.§"!#§(_loc4_);
      }
      
      protected function §"!#§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §,!Q§).§@x§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§+5§.§^9§);
               }
               this.§0G§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §^n§.§+r§(levelNameResults[1].toLowerCase(),§8G§.§7!#§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§^E§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§0!1§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§[!J§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§#!I§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§!>§(fileName);
            }
         }
         if(this.§&!&§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §!>§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§&!&§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§[%§.push(_loc2_);
         if(this.§[%§.length == 1)
         {
            this.§?Y§ = new Loader();
            this.§?Y§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5&§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§?Y§.loadBytes(this.§7B§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §5&§(param1:Event) : void
      {
         this.§?Y§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5&§);
         var _loc2_:XML = this.§[%§.shift();
         §@!?§.§5A§(this.§?Y§,_loc2_.Library[0]);
         if(this.§[%§.length > 0)
         {
            this.§?Y§ = new Loader();
            this.§?Y§.contentLoaderInfo.addEventListener(Event.INIT,this.§5&§);
            this.§?Y§.loadBytes(this.§7B§(this.§[%§[0].Library.@swf));
         }
         this.§#Z§();
      }
      
      private function §#!I§(param1:String) : void
      {
         var _loc2_:Object = §,o§.§ !D§(this.getFileAsString(param1));
         §8Y§.§'!+§(_loc2_);
      }
      
      protected function §[!J§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §^!>§.§4! §(_loc2_);
      }
      
      protected function §0!1§(param1:String) : void
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
                  if(§1p§[_loc13_] == null)
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
            §2z§.§+,§(new §[_§(_loc2_,_loc4_,param1.bitmapData));
            §#Z§();
         };
         ++this.§&!&§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§+!C§(imagePath,onComplete);
      }
      
      protected function §#Z§() : void
      {
         --this.§&!&§;
         if(this.§&!&§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §^E§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§"5§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§+!C§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §0G§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §2z§.§+,§(new spriteSheetClass(dataObject,param1.bitmapData));
            §#Z§();
         };
         ++this.§&!&§;
         if(dataObject.image)
         {
            spriteSheetClass = §@§;
            this.§+!C§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §,!P§;
            this.§+!C§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §2!0§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§?"§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§'!"§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§'!"§() * 255);
            _loc2_ -= int(this.§'!"§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§'!"§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §'!"§() : Number
      {
         this.§?"§ ^= this.§?"§ << 21;
         this.§?"§ ^= this.§?"§ >>> 35;
         this.§?"§ ^= this.§?"§ << 4;
         if(this.§?"§ < 0)
         {
            this.§?"§ &= 2147483647;
         }
         return this.§?"§ / 2147483647;
      }
   }
}
