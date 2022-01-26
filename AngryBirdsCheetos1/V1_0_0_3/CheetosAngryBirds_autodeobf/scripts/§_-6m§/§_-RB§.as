package §_-6m§
{
   import §_-00f§.§_-8K§;
   import §_-23§.§_-M0§;
   import §_-23§.§_-oZ§;
   import §_-4I§.§_-Kf§;
   import §_-5b§.§_-Mm§;
   import §_-5b§.§_-Vj§;
   import §_-DG§.§_-0O§;
   import §_-DG§.§_-5j§;
   import §_-DG§.§_-G6§;
   import §_-DG§.§_-GH§;
   import §_-DG§.§_-rE§;
   import §_-a§.§_-hu§;
   import §_-aD§.§_-0-V§;
   import §_-aD§.§_-LT§;
   import §_-aD§.§_-jk§;
   import §_-j3§.§_-IM§;
   import §_-j3§.§_-Tg§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §_-RB§ extends EventDispatcher implements §_-M0§
   {
       
      
      protected var §_-SY§:int;
      
      protected var §_-q9§:Object;
      
      protected var §_-g3§:int = 0;
      
      protected var §_-Ef§:§_-5j§;
      
      protected var §_-ct§:Vector.<XML>;
      
      protected var §_-m-§:Loader;
      
      public function §_-RB§()
      {
         this.§_-q9§ = {};
         this.§_-ct§ = new Vector.<XML>();
         super();
         this.§_-Ef§ = new §_-5j§();
      }
      
      public function get §_-xw§() : §_-GH§
      {
         return this.§_-Ef§;
      }
      
      public function get §_-qZ§() : Boolean
      {
         return this.§_-g3§ == 0;
      }
      
      public function dispose() : void
      {
         this.§_-Ef§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§_-q9§[param1] as §_-Tg§).§_-v4§(false);
      }
      
      public function §_-6i§(param1:String) : ByteArray
      {
         return (this.§_-q9§[param1] as §_-Tg§).content;
      }
      
      public function §_-gX§(param1:String, param2:Function) : void
      {
         return §_-LT§.§_-yb§(this.§_-6i§(param1),param2);
      }
      
      public function §_-0-v§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§_-Tg§ = null;
         if(param2)
         {
            this.§_-eG§(param1);
         }
         var _loc3_:§_-IM§ = new §_-IM§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§_-UP§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§_-20§(_loc5_)).§_-00P§.substr(-1) != "/")
            {
               if(!this.§_-q9§[_loc6_.§_-00P§])
               {
               }
               this.§_-q9§[_loc6_.§_-00P§] = _loc4_[_loc6_.§_-00P§] = _loc6_;
            }
            _loc5_--;
         }
         this.§_-ZS§(_loc4_);
      }
      
      protected function §_-ZS§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §_-Tg§).§_-v4§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§_-0-V§.§_-GW§);
               }
               this.§_-9k§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-Mm§.§_-iG§(levelNameResults[1].toLowerCase(),§_-Vj§.§_-g6§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-jh§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-PI§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-P0§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-AU§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§_-zR§(fileName);
            }
         }
         if(this.§_-g3§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §_-zR§(param1:String) : void
      {
         ++this.§_-g3§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§_-ct§.push(_loc2_);
         if(this.§_-ct§.length == 1)
         {
            this.§_-m-§ = new Loader();
            this.§_-m-§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-8h§);
            this.§_-m-§.loadBytes(this.§_-6i§(_loc2_.Library.@swf));
         }
      }
      
      private function §_-8h§(param1:Event) : void
      {
         this.§_-m-§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-8h§);
         var _loc2_:XML = this.§_-ct§.shift();
         §_-oZ§.§_-EI§(this.§_-m-§,_loc2_.Library[0]);
         if(this.§_-ct§.length > 0)
         {
            this.§_-m-§ = new Loader();
            this.§_-m-§.contentLoaderInfo.addEventListener(Event.INIT,this.§_-8h§);
            this.§_-m-§.loadBytes(this.§_-6i§(this.§_-ct§[0].Library.@swf));
         }
         this.§_-iz§();
      }
      
      private function §_-AU§(param1:String) : void
      {
         var _loc2_:Object = §_-jk§.§_-KZ§(this.getFileAsString(param1));
         §_-8K§.§_-Vu§(_loc2_);
      }
      
      protected function §_-P0§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-Kf§.§_-G-§(_loc2_);
      }
      
      protected function §_-PI§(param1:String) : void
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
                  if(§_-q9§[_loc13_] == null)
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
            §_-Ef§.§_-hp§(new §_-0O§(_loc2_,_loc4_,param1.bitmapData));
            §_-iz§();
         };
         ++this.§_-g3§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-gX§(imagePath,onComplete);
      }
      
      protected function §_-iz§() : void
      {
         --this.§_-g3§;
         if(this.§_-g3§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §_-jh§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-hu§.§_-0-g§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-gX§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-9k§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-Ef§.§_-hp§(new spriteSheetClass(dataObject,param1.bitmapData));
            §_-iz§();
         };
         ++this.§_-g3§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-rE§;
            this.§_-gX§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-G6§;
            this.§_-gX§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-eG§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§_-SY§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-8y§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-8y§() * 255);
            _loc2_ -= int(this.§_-8y§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-8y§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-8y§() : Number
      {
         this.§_-SY§ ^= this.§_-SY§ << 21;
         this.§_-SY§ ^= this.§_-SY§ >>> 35;
         this.§_-SY§ ^= this.§_-SY§ << 4;
         if(this.§_-SY§ < 0)
         {
            this.§_-SY§ &= 2147483647;
         }
         return this.§_-SY§ / 2147483647;
      }
   }
}
