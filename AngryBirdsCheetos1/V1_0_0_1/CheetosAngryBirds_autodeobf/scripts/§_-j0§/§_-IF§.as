package §_-j0§
{
   import §_-5p§.§_-0-B§;
   import §_-CR§.§_-nU§;
   import §_-LQ§.§_-R§;
   import §_-LQ§.§_-Vj§;
   import §_-T8§.§_-GI§;
   import §_-T8§.§_-Sa§;
   import §_-dH§.§_-9E§;
   import §_-dH§.§_-DU§;
   import §_-dH§.§_-ay§;
   import §_-dH§.§_-lg§;
   import §_-dH§.§_-o7§;
   import §_-vT§.§_-la§;
   import §_-wO§.§_-8i§;
   import §_-wO§.§_-Q0§;
   import §_-wO§.§_-eG§;
   import §_-zg§.§_-8u§;
   import §_-zg§.§_-nt§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §_-IF§ extends EventDispatcher implements §_-R§
   {
       
      
      protected var §_-LK§:int;
      
      protected var §_-s0§:Object;
      
      protected var §_-u3§:int = 0;
      
      protected var §_-BX§:§_-o7§;
      
      protected var §_-W9§:Vector.<XML>;
      
      protected var §_-0O§:Loader;
      
      public function §_-IF§()
      {
         this.§_-s0§ = {};
         this.§_-W9§ = new Vector.<XML>();
         super();
         this.§_-BX§ = new §_-o7§();
      }
      
      public function get §_-xf§() : §_-9E§
      {
         return this.§_-BX§;
      }
      
      public function get §_-rv§() : Boolean
      {
         return this.§_-u3§ == 0;
      }
      
      public function dispose() : void
      {
         this.§_-BX§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§_-s0§[param1] as §_-8u§).§_-km§(false);
      }
      
      public function §_-8§(param1:String) : ByteArray
      {
         return (this.§_-s0§[param1] as §_-8u§).content;
      }
      
      public function §_-Yg§(param1:String, param2:Function) : void
      {
         return §_-eG§.§_-3a§(this.§_-8§(param1),param2);
      }
      
      public function §_-Q6§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§_-8u§ = null;
         if(param2)
         {
            this.§_-SW§(param1);
         }
         var _loc3_:§_-nt§ = new §_-nt§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§_-Fb§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§_-Lg§(_loc5_)).§_-8c§.substr(-1) != "/")
            {
               if(!this.§_-s0§[_loc6_.§_-8c§])
               {
               }
               this.§_-s0§[_loc6_.§_-8c§] = _loc4_[_loc6_.§_-8c§] = _loc6_;
            }
            _loc5_--;
         }
         this.§_-oC§(_loc4_);
      }
      
      protected function §_-oC§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §_-8u§).§_-km§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§_-Q0§.§_-MD§);
               }
               this.§_-AN§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-Sa§.§_-kX§(levelNameResults[1].toLowerCase(),§_-GI§.§_-al§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-Jp§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-aV§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-U2§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-kI§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§_-QE§(fileName);
            }
         }
         if(this.§_-u3§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §_-QE§(param1:String) : void
      {
         ++this.§_-u3§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§_-W9§.push(_loc2_);
         if(this.§_-W9§.length == 1)
         {
            this.§_-0O§ = new Loader();
            this.§_-0O§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-dQ§);
            this.§_-0O§.loadBytes(this.§_-8§(_loc2_.Library.@swf));
         }
      }
      
      private function §_-dQ§(param1:Event) : void
      {
         this.§_-0O§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-dQ§);
         var _loc2_:XML = this.§_-W9§.shift();
         §_-Vj§.§_-rA§(this.§_-0O§,_loc2_.Library[0]);
         if(this.§_-W9§.length > 0)
         {
            this.§_-0O§ = new Loader();
            this.§_-0O§.contentLoaderInfo.addEventListener(Event.INIT,this.§_-dQ§);
            this.§_-0O§.loadBytes(this.§_-8§(this.§_-W9§[0].Library.@swf));
         }
         this.§_-hW§();
      }
      
      private function §_-kI§(param1:String) : void
      {
         var _loc2_:Object = §_-8i§.§_-xx§(this.getFileAsString(param1));
         §_-nU§.§_-yM§(_loc2_);
      }
      
      protected function §_-U2§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-0-B§.§_-hF§(_loc2_);
      }
      
      protected function §_-aV§(param1:String) : void
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
                  if(§_-s0§[_loc13_] == null)
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
            §_-BX§.§_-Zw§(new §_-ay§(_loc2_,_loc4_,param1.bitmapData));
            §_-hW§();
         };
         ++this.§_-u3§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-Yg§(imagePath,onComplete);
      }
      
      protected function §_-hW§() : void
      {
         --this.§_-u3§;
         if(this.§_-u3§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §_-Jp§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-la§.§_-vh§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-Yg§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-AN§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-BX§.§_-Zw§(new spriteSheetClass(dataObject,param1.bitmapData));
            §_-hW§();
         };
         ++this.§_-u3§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-DU§;
            this.§_-Yg§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-lg§;
            this.§_-Yg§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-SW§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§_-LK§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-Ms§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-Ms§() * 255);
            _loc2_ -= int(this.§_-Ms§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-Ms§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-Ms§() : Number
      {
         this.§_-LK§ ^= this.§_-LK§ << 21;
         this.§_-LK§ ^= this.§_-LK§ >>> 35;
         this.§_-LK§ ^= this.§_-LK§ << 4;
         if(this.§_-LK§ < 0)
         {
            this.§_-LK§ &= 2147483647;
         }
         return this.§_-LK§ / 2147483647;
      }
   }
}
