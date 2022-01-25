package §2!3§
{
   import §%!@§.§17§;
   import §'!^§.§37§;
   import §'!^§.§`s§;
   import §'!^§.§const§;
   import §+N§.§=u§;
   import §3U§.§ !M§;
   import §3U§.§2!%§;
   import §<!T§.§ !$§;
   import §<!T§.§^!]§;
   import §>!9§.§,!C§;
   import §[U§.§!!U§;
   import §[U§.§!<§;
   import §[U§.§2§;
   import §[U§.§?#§;
   import §[U§.§[7§;
   import §^g§.§ 1§;
   import §^g§.§0!8§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §#F§ extends EventDispatcher implements § !$§
   {
       
      
      protected var §1`§:int;
      
      protected var §5X§:Object;
      
      protected var §<!_§:int = 0;
      
      protected var §'!U§:§!<§;
      
      protected var §%8§:Vector.<XML>;
      
      protected var §6!?§:Loader;
      
      public function §#F§()
      {
         this.§5X§ = {};
         this.§%8§ = new Vector.<XML>();
         super();
         this.§'!U§ = new §!<§();
      }
      
      public function get § k§() : §!!U§
      {
         return this.§'!U§;
      }
      
      public function get §2J§() : Boolean
      {
         return this.§<!_§ == 0;
      }
      
      public function dispose() : void
      {
         this.§'!U§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§5X§[param1] as §0!8§).§%=§(false);
      }
      
      public function §2P§(param1:String) : ByteArray
      {
         return (this.§5X§[param1] as §0!8§).content;
      }
      
      public function §^y§(param1:String, param2:Function) : void
      {
         return §`s§.§-§(this.§2P§(param1),param2);
      }
      
      public function §!9§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§0!8§ = null;
         if(param2)
         {
            this.§`!;§(param1);
         }
         var _loc3_:§ 1§ = new § 1§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§2X§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§%t§(_loc5_)).§^9§.substr(-1) != "/")
            {
               if(!this.§5X§[_loc6_.§^9§])
               {
               }
               this.§5X§[_loc6_.§^9§] = _loc4_[_loc6_.§^9§] = _loc6_;
            }
            _loc5_--;
         }
         this.§1!3§(_loc4_);
      }
      
      protected function §1!3§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §0!8§).§%=§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§37§.§=?§);
               }
               this.§+P§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §2!%§.§!![§(levelNameResults[1].toLowerCase(),§ !M§.§]!C§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§[%§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§ !P§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§8V§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§&@§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§`w§(fileName);
            }
         }
         if(this.§<!_§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §`w§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§<!_§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§%8§.push(_loc2_);
         if(this.§%8§.length == 1)
         {
            this.§6!?§ = new Loader();
            this.§6!?§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§7#§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§6!?§.loadBytes(this.§2P§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §7#§(param1:Event) : void
      {
         this.§6!?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7#§);
         var _loc2_:XML = this.§%8§.shift();
         §^!]§.§;!'§(this.§6!?§,_loc2_.Library[0]);
         if(this.§%8§.length > 0)
         {
            this.§6!?§ = new Loader();
            this.§6!?§.contentLoaderInfo.addEventListener(Event.INIT,this.§7#§);
            this.§6!?§.loadBytes(this.§2P§(this.§%8§[0].Library.@swf));
         }
         this.§5!'§();
      }
      
      private function §&@§(param1:String) : void
      {
         var _loc2_:Object = §const§.§]!=§(this.getFileAsString(param1));
         §17§.§?D§(_loc2_);
      }
      
      protected function §8V§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §=u§.§!U§(_loc2_);
      }
      
      protected function § !P§(param1:String) : void
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
                  if(§5X§[_loc13_] == null)
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
            §'!U§.§&!d§(new §2§(_loc2_,_loc4_,param1.bitmapData));
            §5!'§();
         };
         ++this.§<!_§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§^y§(imagePath,onComplete);
      }
      
      protected function §5!'§() : void
      {
         --this.§<!_§;
         if(this.§<!_§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §[%§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §,!C§.§else §(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§^y§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §+P§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §'!U§.§&!d§(new spriteSheetClass(dataObject,param1.bitmapData));
            §5!'§();
         };
         ++this.§<!_§;
         if(dataObject.image)
         {
            spriteSheetClass = §?#§;
            this.§^y§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §[7§;
            this.§^y§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §`!;§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§1`§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§0s§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§0s§() * 255);
            _loc2_ -= int(this.§0s§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§0s§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §0s§() : Number
      {
         this.§1`§ ^= this.§1`§ << 21;
         this.§1`§ ^= this.§1`§ >>> 35;
         this.§1`§ ^= this.§1`§ << 4;
         if(this.§1`§ < 0)
         {
            this.§1`§ &= 2147483647;
         }
         return this.§1`§ / 2147483647;
      }
   }
}
