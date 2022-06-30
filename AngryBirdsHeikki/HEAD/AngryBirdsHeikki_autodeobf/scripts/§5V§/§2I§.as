package §5V§
{
   import §!Y§.§<S§;
   import §!Y§.§?!1§;
   import §"!@§.§=!J§;
   import §#!C§.§3o§;
   import §#!C§.§;a§;
   import §#!C§.§^R§;
   import §#!C§.§`!B§;
   import §#!C§.§if§;
   import §+!]§.§9+§;
   import §1!F§.§-"§;
   import §1!F§.§;!`§;
   import §7e§.§#w§;
   import §7e§.§8!P§;
   import §9!Q§.§#y§;
   import §9!Q§.§5J§;
   import §9!Q§.§;!_§;
   import §[b§.§`c§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §2I§ extends EventDispatcher implements §-"§
   {
       
      
      protected var §`=§:int;
      
      protected var §0C§:Object;
      
      protected var §]m§:int = 0;
      
      protected var §=F§:§if§;
      
      protected var §;!7§:Vector.<XML>;
      
      protected var §&!I§:Loader;
      
      public function §2I§()
      {
         this.§0C§ = {};
         this.§;!7§ = new Vector.<XML>();
         super();
         this.§=F§ = new §if§();
      }
      
      public function get §?6§() : §3o§
      {
         return this.§=F§;
      }
      
      public function get §0@§() : Boolean
      {
         return this.§]m§ == 0;
      }
      
      public function dispose() : void
      {
         this.§=F§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§0C§[param1] as §<S§).§5e§(false);
      }
      
      public function §&h§(param1:String) : ByteArray
      {
         return (this.§0C§[param1] as §<S§).content;
      }
      
      public function §5N§(param1:String, param2:Function) : void
      {
         return §5J§.§9t§(this.§&h§(param1),param2);
      }
      
      public function §0!Q§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§<S§ = null;
         if(param2)
         {
            this.§<#§(param1);
         }
         var _loc3_:§?!1§ = new §?!1§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§7p§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§'!=§(_loc5_)).§5'§.substr(-1) != "/")
            {
               if(!this.§0C§[_loc6_.§5'§])
               {
               }
               this.§0C§[_loc6_.§5'§] = _loc4_[_loc6_.§5'§] = _loc6_;
            }
            _loc5_--;
         }
         this.§?!0§(_loc4_);
      }
      
      protected function §?!0§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §<S§).§5e§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§;!_§.§!B§);
               }
               this.§#$§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §#w§.§>f§(levelNameResults[1].toLowerCase(),§8!P§.§]!7§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§5L§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§4!&§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§&!S§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§[x§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§%M§(fileName);
            }
         }
         if(this.§]m§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §%M§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§]m§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§;!7§.push(_loc2_);
         if(this.§;!7§.length == 1)
         {
            this.§&!I§ = new Loader();
            this.§&!I§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§`#§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§&!I§.loadBytes(this.§&h§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §`#§(param1:Event) : void
      {
         this.§&!I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§`#§);
         var _loc2_:XML = this.§;!7§.shift();
         §;!`§.§ m§(this.§&!I§,_loc2_.Library[0]);
         if(this.§;!7§.length > 0)
         {
            this.§&!I§ = new Loader();
            this.§&!I§.contentLoaderInfo.addEventListener(Event.INIT,this.§`#§);
            this.§&!I§.loadBytes(this.§&h§(this.§;!7§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§+!5§();
      }
      
      private function §[x§(param1:String) : void
      {
         var _loc2_:Object = §#y§.§2w§(this.getFileAsString(param1));
         §=!J§.§3!b§(_loc2_);
      }
      
      protected function §&!S§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §9+§.§2U§(_loc2_);
      }
      
      protected function §4!&§(param1:String) : void
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
                  if(§0C§[_loc13_] == null)
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
            §=F§.§8!_§(new §;a§(_loc2_,_loc4_,param1.bitmapData));
            §+!5§();
         };
         ++this.§]m§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§5N§(imagePath,onComplete);
      }
      
      protected function §+!5§() : void
      {
         --this.§]m§;
         if(this.§]m§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §5L§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §`c§.§%!>§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§5N§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §#$§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §=F§.§8!_§(new spriteSheetClass(dataObject,param1.bitmapData));
            §+!5§();
         };
         ++this.§]m§;
         if(dataObject.image)
         {
            spriteSheetClass = §^R§;
            this.§5N§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §`!B§;
            this.§5N§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §<#§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§`=§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6J§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6J§() * 255);
            _loc2_ -= int(this.§6J§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§6J§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §6J§() : Number
      {
         this.§`=§ ^= this.§`=§ << 21;
         this.§`=§ ^= this.§`=§ >>> 35;
         this.§`=§ ^= this.§`=§ << 4;
         if(this.§`=§ < 0)
         {
            this.§`=§ &= 2147483647;
         }
         return this.§`=§ / 2147483647;
      }
   }
}
