package §]!>§
{
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §3"7§.ParticleManager;
   import §6!D§.§9R§;
   import §9A§.§5Y§;
   import §9A§.§>"§;
   import §<a§.§!!m§;
   import §<a§.§+!l§;
   import §<a§.§6"0§;
   import §>i§.§!7§;
   import §>i§.§'!p§;
   import §>i§.§,!e§;
   import §>i§.§-"D§;
   import §>i§.§5"7§;
   import §?" §.§7"8§;
   import §?" §.§=!L§;
   import §`!]§.§3x§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §1"%§ extends EventDispatcher implements §7"8§
   {
       
      
      protected var §!l§:int;
      
      protected var §%Y§:Object;
      
      protected var §>"6§:int = 0;
      
      protected var §?!L§:§-"D§;
      
      protected var §["1§:Vector.<XML>;
      
      protected var §]D§:Loader;
      
      public function §1"%§()
      {
         this.§%Y§ = {};
         this.§["1§ = new Vector.<XML>();
         super();
         this.§?!L§ = new §-"D§();
      }
      
      public function get §1S§() : §'!p§
      {
         return this.§?!L§;
      }
      
      public function get §%!'§() : Boolean
      {
         return this.§>"6§ == 0;
      }
      
      public function dispose() : void
      {
         this.§?!L§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§%Y§[param1] as §>"§).§,q§(false);
      }
      
      public function §@"'§(param1:String) : ByteArray
      {
         return (this.§%Y§[param1] as §>"§).content;
      }
      
      public function §2";§(param1:String, param2:Function) : void
      {
         return §+!l§.§7b§(this.§@"'§(param1),param2);
      }
      
      public function §,!T§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§>"§ = null;
         if(param2)
         {
            this.§#q§(param1);
         }
         var _loc3_:§5Y§ = new §5Y§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§"z§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§9!8§(_loc5_)).§>" §.substr(-1) != "/")
            {
               if(!this.§%Y§[_loc6_.§>" §])
               {
               }
               this.§%Y§[_loc6_.§>" §] = _loc4_[_loc6_.§>" §] = _loc6_;
            }
            _loc5_--;
         }
         this.§#X§(_loc4_);
      }
      
      protected function §#X§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §>"§).§,q§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§!!m§.§4H§);
               }
               this.§7!E§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§!!w§(levelNameResults[1].toLowerCase(),§1"B§.§2!5§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§"!s§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§1b§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§ %§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§#"'§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§7O§(fileName);
            }
         }
         if(this.§>"6§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §7O§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§>"6§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§["1§.push(_loc2_);
         if(this.§["1§.length == 1)
         {
            this.§]D§ = new Loader();
            this.§]D§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§["8§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§]D§.loadBytes(this.§@"'§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §["8§(param1:Event) : void
      {
         this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§["8§);
         var _loc2_:XML = this.§["1§.shift();
         §=!L§.§ !v§(this.§]D§,_loc2_.Library[0]);
         if(this.§["1§.length > 0)
         {
            this.§]D§ = new Loader();
            this.§]D§.contentLoaderInfo.addEventListener(Event.INIT,this.§["8§);
            this.§]D§.loadBytes(this.§@"'§(this.§["1§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§["3§();
      }
      
      private function §#"'§(param1:String) : void
      {
         var _loc2_:Object = §6"0§.§<I§(this.getFileAsString(param1));
         §3x§.§#!%§(_loc2_);
      }
      
      protected function § %§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §9R§.§!&§(_loc2_);
      }
      
      protected function §1b§(param1:String) : void
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
                  if(§%Y§[_loc13_] == null)
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
            §?!L§.§'`§(new §5"7§(_loc2_,_loc4_,param1.bitmapData));
            §["3§();
         };
         ++this.§>"6§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§2";§(imagePath,onComplete);
      }
      
      protected function §["3§() : void
      {
         --this.§>"6§;
         if(this.§>"6§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §"!s§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§`+§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§2";§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §7!E§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §?!L§.§'`§(new spriteSheetClass(dataObject,param1.bitmapData));
            §["3§();
         };
         ++this.§>"6§;
         if(dataObject.image)
         {
            spriteSheetClass = §!7§;
            this.§2";§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §,!e§;
            this.§2";§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §#q§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§!l§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§9-§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§9-§() * 255);
            _loc2_ -= int(this.§9-§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§9-§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §9-§() : Number
      {
         this.§!l§ ^= this.§!l§ << 21;
         this.§!l§ ^= this.§!l§ >>> 35;
         this.§!l§ ^= this.§!l§ << 4;
         if(this.§!l§ < 0)
         {
            this.§!l§ &= 2147483647;
         }
         return this.§!l§ / 2147483647;
      }
   }
}
