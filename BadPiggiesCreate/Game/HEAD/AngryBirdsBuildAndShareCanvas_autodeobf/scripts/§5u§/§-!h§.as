package §5u§
{
   import §"!1§.§4!b§;
   import §"!1§.§?!q§;
   import §%!K§.§ i§;
   import §%!K§.§7J§;
   import §&z§.§'!i§;
   import §8s§.§<5§;
   import §8s§.§=!d§;
   import §8s§.§>4§;
   import §8s§.§@M§;
   import §8s§.§`s§;
   import §;"7§.§3"#§;
   import §<!1§.§-#§;
   import §<!1§.§9!6§;
   import §<!1§.§@"4§;
   import §<i§.§'!e§;
   import §<i§.§`!r§;
   import §`",§.§2M§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §-!h§ extends EventDispatcher implements §7J§
   {
       
      
      protected var §]7§:int;
      
      protected var §[!b§:Object;
      
      protected var §^T§:int = 0;
      
      protected var §4e§:§>4§;
      
      protected var §^" §:Vector.<XML>;
      
      protected var §5$§:Loader;
      
      public function §-!h§()
      {
         this.§[!b§ = {};
         this.§^" § = new Vector.<XML>();
         super();
         this.§4e§ = new §>4§();
      }
      
      public function get §1h§() : §=!d§
      {
         return this.§4e§;
      }
      
      public function get §?!M§() : Boolean
      {
         return this.§^T§ == 0;
      }
      
      public function dispose() : void
      {
         this.§4e§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§[!b§[param1] as §4!b§).§^! §(false);
      }
      
      public function §6@§(param1:String) : ByteArray
      {
         return (this.§[!b§[param1] as §4!b§).content;
      }
      
      public function §?A§(param1:String, param2:Function) : void
      {
         return §-#§.§6!Y§(this.§6@§(param1),param2);
      }
      
      public function §+"0§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§4!b§ = null;
         if(param2)
         {
            this.§[!§(param1);
         }
         var _loc3_:§?!q§ = new §?!q§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§-!E§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§@!M§(_loc5_)).§['§.substr(-1) != "/")
            {
               if(!this.§[!b§[_loc6_.§['§])
               {
               }
               this.§[!b§[_loc6_.§['§] = _loc4_[_loc6_.§['§] = _loc6_;
            }
            _loc5_--;
         }
         this.§ !D§(_loc4_);
      }
      
      protected function § !D§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §4!b§).§^! §(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§@"4§.§5!G§);
               }
               this.§]!#§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §`!r§.§%"9§(levelNameResults[1].toLowerCase(),§'!e§.§2!9§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§<j§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§'!T§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§0!p§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§38§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§4!3§(fileName);
            }
         }
         if(this.§^T§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §4!3§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§^T§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§^" §.push(_loc2_);
         if(this.§^" §.length == 1)
         {
            this.§5$§ = new Loader();
            this.§5$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0!'§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§5$§.loadBytes(this.§6@§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §0!'§(param1:Event) : void
      {
         this.§5$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0!'§);
         var _loc2_:XML = this.§^" §.shift();
         § i§.§@5§(this.§5$§,_loc2_.Library[0]);
         if(this.§^" §.length > 0)
         {
            this.§5$§ = new Loader();
            this.§5$§.contentLoaderInfo.addEventListener(Event.INIT,this.§0!'§);
            this.§5$§.loadBytes(this.§6@§(this.§^" §[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§+i§();
      }
      
      private function §38§(param1:String) : void
      {
         var _loc2_:Object = §9!6§.§1!G§(this.getFileAsString(param1));
         §2M§.§[!R§(_loc2_);
      }
      
      protected function §0!p§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §3"#§.§9E§(_loc2_);
      }
      
      protected function §'!T§(param1:String) : void
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
                  if(§[!b§[_loc13_] == null)
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
            §4e§.§9!E§(new §<5§(_loc2_,_loc4_,param1.bitmapData));
            §+i§();
         };
         ++this.§^T§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§?A§(imagePath,onComplete);
      }
      
      protected function §+i§() : void
      {
         --this.§^T§;
         if(this.§^T§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §<j§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §'!i§.§ ""§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§?A§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §]!#§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §4e§.§9!E§(new spriteSheetClass(dataObject,param1.bitmapData));
            §+i§();
         };
         ++this.§^T§;
         if(dataObject.image)
         {
            spriteSheetClass = §`s§;
            this.§?A§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §@M§;
            this.§?A§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §[!§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§]7§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§&!v§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§&!v§() * 255);
            _loc2_ -= int(this.§&!v§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§&!v§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §&!v§() : Number
      {
         this.§]7§ ^= this.§]7§ << 21;
         this.§]7§ ^= this.§]7§ >>> 35;
         this.§]7§ ^= this.§]7§ << 4;
         if(this.§]7§ < 0)
         {
            this.§]7§ &= 2147483647;
         }
         return this.§]7§ / 2147483647;
      }
   }
}
