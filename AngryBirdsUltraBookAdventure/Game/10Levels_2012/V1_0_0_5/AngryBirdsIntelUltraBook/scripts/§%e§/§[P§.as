package §%e§
{
   import §-w§.§]c§;
   import §0!M§.§#!d§;
   import §0!M§.§%!C§;
   import §0!M§.§2!4§;
   import §0!M§.§4!O§;
   import §0!M§.§7U§;
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §0X§.§%'§;
   import §0X§.§7!R§;
   import §0X§.§=-§;
   import §=!M§.§"T§;
   import §=!M§.§3Q§;
   import §?!G§.ParticleManager;
   import §^;§.§6!S§;
   import §^;§.§`E§;
   import §`!i§.§6n§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §[P§ extends EventDispatcher implements §`E§
   {
       
      
      protected var §null§:int;
      
      protected var §,!B§:Object;
      
      protected var § !i§:int = 0;
      
      protected var §@!`§:§4!O§;
      
      protected var §@[§:Vector.<XML>;
      
      protected var §`!u§:Loader;
      
      public function §[P§()
      {
         this.§,!B§ = {};
         this.§@[§ = new Vector.<XML>();
         super();
         this.§@!`§ = new §4!O§();
      }
      
      public function get §`Q§() : §#!d§
      {
         return this.§@!`§;
      }
      
      public function get §"!E§() : Boolean
      {
         return this.§ !i§ == 0;
      }
      
      public function dispose() : void
      {
         this.§@!`§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§,!B§[param1] as §"T§).§4p§(false);
      }
      
      public function §&!H§(param1:String) : ByteArray
      {
         return (this.§,!B§[param1] as §"T§).content;
      }
      
      public function §?"§(param1:String, param2:Function) : void
      {
         return §7!R§.§6O§(this.§&!H§(param1),param2);
      }
      
      public function §get §(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§"T§ = null;
         if(param2)
         {
            this.§3!P§(param1);
         }
         var _loc3_:§3Q§ = new §3Q§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§'!H§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§"I§(_loc5_)).§,,§.substr(-1) != "/")
            {
               if(!this.§,!B§[_loc6_.§,,§])
               {
               }
               this.§,!B§[_loc6_.§,,§] = _loc4_[_loc6_.§,,§] = _loc6_;
            }
            _loc5_--;
         }
         this.§"!g§(_loc4_);
      }
      
      protected function §"!g§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §"T§).§4p§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§%'§.§<!D§);
               }
               this.§14§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§6! §(levelNameResults[1].toLowerCase(),§=+§.§"M§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§=j§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§'!d§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§#!?§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§48§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§;!=§(fileName);
            }
         }
         if(this.§ !i§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §;!=§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§ !i§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§@[§.push(_loc2_);
         if(this.§@[§.length == 1)
         {
            this.§`!u§ = new Loader();
            this.§`!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§]L§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§`!u§.loadBytes(this.§&!H§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §]L§(param1:Event) : void
      {
         this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§]L§);
         var _loc2_:XML = this.§@[§.shift();
         §6!S§.§>!'§(this.§`!u§,_loc2_.Library[0]);
         if(this.§@[§.length > 0)
         {
            this.§`!u§ = new Loader();
            this.§`!u§.contentLoaderInfo.addEventListener(Event.INIT,this.§]L§);
            this.§`!u§.loadBytes(this.§&!H§(this.§@[§[0].Library.@swf));
         }
         this.§]!#§();
      }
      
      private function §48§(param1:String) : void
      {
         var _loc2_:Object = §=-§.§-A§(this.getFileAsString(param1));
         §6n§.§33§(_loc2_);
      }
      
      protected function §#!?§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §]c§.§3!+§(_loc2_);
      }
      
      protected function §'!d§(param1:String) : void
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
                  if(§,!B§[_loc13_] == null)
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
            §@!`§.§1!L§(new §%!C§(_loc2_,_loc4_,param1.bitmapData));
            §]!#§();
         };
         ++this.§ !i§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§?"§(imagePath,onComplete);
      }
      
      protected function §]!#§() : void
      {
         --this.§ !i§;
         if(this.§ !i§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §=j§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§>m§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§?"§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §14§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §@!`§.§1!L§(new spriteSheetClass(dataObject,param1.bitmapData));
            §]!#§();
         };
         ++this.§ !i§;
         if(dataObject.image)
         {
            spriteSheetClass = §7U§;
            this.§?"§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §2!4§;
            this.§?"§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §3!P§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§null§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+!;§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+!;§() * 255);
            _loc2_ -= int(this.§+!;§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§+!;§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §+!;§() : Number
      {
         this.§null§ ^= this.§null§ << 21;
         this.§null§ ^= this.§null§ >>> 35;
         this.§null§ ^= this.§null§ << 4;
         if(this.§null§ < 0)
         {
            this.§null§ &= 2147483647;
         }
         return this.§null§ / 2147483647;
      }
   }
}
