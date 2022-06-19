package §3!T§
{
   import § `§.§>o§;
   import §#!F§.§%D§;
   import §#!F§.§92§;
   import §#!F§.§^L§;
   import §0b§.§0!=§;
   import §0b§.§2!#§;
   import §2!D§.§'t§;
   import §=!7§.§[!C§;
   import §?p§.§@d§;
   import §?p§.§`w§;
   import §@b§.§0!-§;
   import §@b§.§;!4§;
   import §@b§.§;;§;
   import §@b§.§;M§;
   import §@b§.§?H§;
   import §]!F§.§&!]§;
   import §]!F§.§7e§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §6t§ extends EventDispatcher implements §`w§
   {
       
      
      protected var §30§:int;
      
      protected var §[W§:Object;
      
      protected var §7!U§:int = 0;
      
      protected var §3z§:§;!4§;
      
      protected var §35§:Vector.<XML>;
      
      protected var §1!!§:Loader;
      
      public function §6t§()
      {
         this.§[W§ = {};
         this.§35§ = new Vector.<XML>();
         super();
         this.§3z§ = new §;!4§();
      }
      
      public function get §%v§() : §;M§
      {
         return this.§3z§;
      }
      
      public function get §+!8§() : Boolean
      {
         return this.§7!U§ == 0;
      }
      
      public function dispose() : void
      {
         this.§3z§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§[W§[param1] as §2!#§).§=n§(false);
      }
      
      public function § T§(param1:String) : ByteArray
      {
         return (this.§[W§[param1] as §2!#§).content;
      }
      
      public function §]B§(param1:String, param2:Function) : void
      {
         return §%D§.§;k§(this.§ T§(param1),param2);
      }
      
      public function §;!X§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§2!#§ = null;
         if(param2)
         {
            this.§"]§(param1);
         }
         var _loc3_:§0!=§ = new §0!=§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§1N§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§4P§(_loc5_)).§``§.substr(-1) != "/")
            {
               if(!this.§[W§[_loc6_.§``§])
               {
               }
               this.§[W§[_loc6_.§``§] = _loc4_[_loc6_.§``§] = _loc6_;
            }
            _loc5_--;
         }
         this.§'!"§(_loc4_);
      }
      
      protected function §'!"§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §2!#§).§=n§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§^L§.§!V§);
               }
               this.§;T§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §7e§.§+8§(levelNameResults[1].toLowerCase(),§&!]§.§'F§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§ L§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§54§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§6!J§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§=V§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§"o§(fileName);
            }
         }
         if(this.§7!U§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §"o§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§7!U§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§35§.push(_loc2_);
         if(this.§35§.length == 1)
         {
            this.§1!!§ = new Loader();
            this.§1!!§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§>5§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§1!!§.loadBytes(this.§ T§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §>5§(param1:Event) : void
      {
         this.§1!!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>5§);
         var _loc2_:XML = this.§35§.shift();
         §@d§.§<!N§(this.§1!!§,_loc2_.Library[0]);
         if(this.§35§.length > 0)
         {
            this.§1!!§ = new Loader();
            this.§1!!§.contentLoaderInfo.addEventListener(Event.INIT,this.§>5§);
            this.§1!!§.loadBytes(this.§ T§(this.§35§[0].Library.@swf));
         }
         this.§ ,§();
      }
      
      private function §=V§(param1:String) : void
      {
         var _loc2_:Object = §92§.§!l§(this.getFileAsString(param1));
         §[!C§.§+!'§(_loc2_);
      }
      
      protected function §6!J§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §>o§.§6!C§(_loc2_);
      }
      
      protected function §54§(param1:String) : void
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
                  if(§[W§[_loc13_] == null)
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
            §3z§.§[z§(new §?H§(_loc2_,_loc4_,param1.bitmapData));
            § ,§();
         };
         ++this.§7!U§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§]B§(imagePath,onComplete);
      }
      
      protected function § ,§() : void
      {
         --this.§7!U§;
         if(this.§7!U§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function § L§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §'t§.§>!8§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§]B§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §;T§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §3z§.§[z§(new spriteSheetClass(dataObject,param1.bitmapData));
            § ,§();
         };
         ++this.§7!U§;
         if(dataObject.image)
         {
            spriteSheetClass = §0!-§;
            this.§]B§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §;;§;
            this.§]B§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §"]§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§30§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§%!$§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§%!$§() * 255);
            _loc2_ -= int(this.§%!$§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§%!$§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §%!$§() : Number
      {
         this.§30§ ^= this.§30§ << 21;
         this.§30§ ^= this.§30§ >>> 35;
         this.§30§ ^= this.§30§ << 4;
         if(this.§30§ < 0)
         {
            this.§30§ &= 2147483647;
         }
         return this.§30§ / 2147483647;
      }
   }
}
