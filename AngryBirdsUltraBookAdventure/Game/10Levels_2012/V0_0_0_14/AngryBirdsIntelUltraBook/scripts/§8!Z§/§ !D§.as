package §8!Z§
{
   import §!!§.§>4§;
   import §!!§.LevelManager;
   import §"!&§.§[>§;
   import §"i§.§5V§;
   import §"i§.§?!;§;
   import §&!h§.§-V§;
   import §&!h§.§2H§;
   import §&!h§.§4!<§;
   import §,6§.§4d§;
   import §0!H§.§1!y§;
   import §0!H§.§^!?§;
   import §<$§.ParticleManager;
   import §?2§.§!!-§;
   import §?2§.§%_§;
   import §?2§.§3N§;
   import §?2§.§5!Z§;
   import §?2§.§^!e§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § !D§ extends EventDispatcher implements §?!;§
   {
       
      
      protected var §=A§:int;
      
      protected var §1!d§:Object;
      
      protected var §=!O§:int = 0;
      
      protected var §!!;§:§^!e§;
      
      protected var §2T§:Vector.<XML>;
      
      protected var §2C§:Loader;
      
      public function § !D§()
      {
         this.§1!d§ = {};
         this.§2T§ = new Vector.<XML>();
         super();
         this.§!!;§ = new §^!e§();
      }
      
      public function get §package§() : §3N§
      {
         return this.§!!;§;
      }
      
      public function get §><§() : Boolean
      {
         return this.§=!O§ == 0;
      }
      
      public function dispose() : void
      {
         this.§!!;§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1!d§[param1] as §^!?§).§ !m§(false);
      }
      
      public function §&!#§(param1:String) : ByteArray
      {
         return (this.§1!d§[param1] as §^!?§).content;
      }
      
      public function §"u§(param1:String, param2:Function) : void
      {
         return §-V§.§&V§(this.§&!#§(param1),param2);
      }
      
      public function §3!%§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§^!?§ = null;
         if(param2)
         {
            this.§=!0§(param1);
         }
         var _loc3_:§1!y§ = new §1!y§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§^!W§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§<x§(_loc5_)).§1L§.substr(-1) != "/")
            {
               if(!this.§1!d§[_loc6_.§1L§])
               {
               }
               this.§1!d§[_loc6_.§1L§] = _loc4_[_loc6_.§1L§] = _loc6_;
            }
            _loc5_--;
         }
         this.§0E§(_loc4_);
      }
      
      protected function §0E§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §^!?§).§ !m§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§4!<§.§ 5§);
               }
               this.§;!v§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§'S§(levelNameResults[1].toLowerCase(),§>4§.§0!;§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§get §(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§[+§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§#!&§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§%!^§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§,!'§(fileName);
            }
         }
         if(this.§=!O§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §,!'§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§=!O§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§2T§.push(_loc2_);
         if(this.§2T§.length == 1)
         {
            this.§2C§ = new Loader();
            this.§2C§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3<§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§2C§.loadBytes(this.§&!#§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §3<§(param1:Event) : void
      {
         this.§2C§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3<§);
         var _loc2_:XML = this.§2T§.shift();
         §5V§.§0!h§(this.§2C§,_loc2_.Library[0]);
         if(this.§2T§.length > 0)
         {
            this.§2C§ = new Loader();
            this.§2C§.contentLoaderInfo.addEventListener(Event.INIT,this.§3<§);
            this.§2C§.loadBytes(this.§&!#§(this.§2T§[0].Library.@swf));
         }
         this.§,I§();
      }
      
      private function §%!^§(param1:String) : void
      {
         var _loc2_:Object = §2H§.§?!m§(this.getFileAsString(param1));
         §[>§.§+'§(_loc2_);
      }
      
      protected function §#!&§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §4d§.§`y§(_loc2_);
      }
      
      protected function §[+§(param1:String) : void
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
                  if(§1!d§[_loc13_] == null)
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
            §!!;§.§?!d§(new §%_§(_loc2_,_loc4_,param1.bitmapData));
            §,I§();
         };
         ++this.§=!O§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§"u§(imagePath,onComplete);
      }
      
      protected function §,I§() : void
      {
         --this.§=!O§;
         if(this.§=!O§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §get §(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§2d§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§"u§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §;!v§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §!!;§.§?!d§(new spriteSheetClass(dataObject,param1.bitmapData));
            §,I§();
         };
         ++this.§=!O§;
         if(dataObject.image)
         {
            spriteSheetClass = §5!Z§;
            this.§"u§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §!!-§;
            this.§"u§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §=!0§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§=A§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§2!r§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§2!r§() * 255);
            _loc2_ -= int(this.§2!r§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§2!r§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §2!r§() : Number
      {
         this.§=A§ ^= this.§=A§ << 21;
         this.§=A§ ^= this.§=A§ >>> 35;
         this.§=A§ ^= this.§=A§ << 4;
         if(this.§=A§ < 0)
         {
            this.§=A§ &= 2147483647;
         }
         return this.§=A§ / 2147483647;
      }
   }
}
