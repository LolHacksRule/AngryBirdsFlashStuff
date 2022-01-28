package §_-Ah§
{
   import §_-2F§.§_-Wg§;
   import §_-2F§.§_-gs§;
   import §_-2F§.override;
   import §_-3b§.§_-wg§;
   import §_-7x§.§_-4O§;
   import §_-7x§.§_-yE§;
   import §_-8H§.§_-Jb§;
   import §_-Gc§.§_-T4§;
   import §_-Gc§.§_-rQ§;
   import §_-m9§.§_-Uk§;
   import §_-m9§.§_-Z9§;
   import §_-m9§.§_-a4§;
   import §_-m9§.§_-d7§;
   import §_-m9§.§_-wv§;
   import §_-sB§.§_-7G§;
   import §_-sB§.§_-BZ§;
   import §_-wG§.§_-et§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §_-uT§ extends EventDispatcher implements §_-7G§
   {
       
      
      protected var §_-2V§:int;
      
      protected var §_-jZ§:Object;
      
      protected var §_-Jz§:int = 0;
      
      protected var §_-tJ§:§_-wv§;
      
      protected var §_-1J§:Vector.<XML>;
      
      protected var §_-tg§:Loader;
      
      public function §_-uT§()
      {
         this.§_-jZ§ = {};
         this.§_-1J§ = new Vector.<XML>();
         super();
         this.§_-tJ§ = new §_-wv§();
      }
      
      public function get §_-Zo§() : §_-d7§
      {
         return this.§_-tJ§;
      }
      
      public function get §_-rU§() : Boolean
      {
         return this.§_-Jz§ == 0;
      }
      
      public function dispose() : void
      {
         this.§_-tJ§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§_-jZ§[param1] as §_-rQ§).§_-yW§(false);
      }
      
      public function §_-cU§(param1:String) : ByteArray
      {
         return (this.§_-jZ§[param1] as §_-rQ§).content;
      }
      
      public function §_-rf§(param1:String, param2:Function) : void
      {
         return §_-gs§.§_-Ro§(this.§_-cU§(param1),param2);
      }
      
      public function §_-HE§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§_-rQ§ = null;
         if(param2)
         {
            this.§_-Tj§(param1);
         }
         var _loc3_:§_-T4§ = new §_-T4§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§_-pD§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§_-pq§(_loc5_)).§_-7L§.substr(-1) != "/")
            {
               if(!this.§_-jZ§[_loc6_.§_-7L§])
               {
               }
               this.§_-jZ§[_loc6_.§_-7L§] = _loc4_[_loc6_.§_-7L§] = _loc6_;
            }
            _loc5_--;
         }
         this.§_-z§(_loc4_);
      }
      
      protected function §_-z§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §_-rQ§).§_-yW§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",override.§_-Vy§);
               }
               this.§_-mF§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-4O§.§_-9z§(levelNameResults[1].toLowerCase(),§_-yE§.§_-tw§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-GV§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-V§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-Gz§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-6Z§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§_-bB§(fileName);
            }
         }
         if(this.§_-Jz§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §_-bB§(param1:String) : void
      {
         ++this.§_-Jz§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§_-1J§.push(_loc2_);
         if(this.§_-1J§.length == 1)
         {
            this.§_-tg§ = new Loader();
            this.§_-tg§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-zB§);
            this.§_-tg§.loadBytes(this.§_-cU§(_loc2_.Library.@swf));
         }
      }
      
      private function §_-zB§(param1:Event) : void
      {
         this.§_-tg§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-zB§);
         var _loc2_:XML = this.§_-1J§.shift();
         §_-BZ§.§_-mZ§(this.§_-tg§,_loc2_.Library[0]);
         if(this.§_-1J§.length > 0)
         {
            this.§_-tg§ = new Loader();
            this.§_-tg§.contentLoaderInfo.addEventListener(Event.INIT,this.§_-zB§);
            this.§_-tg§.loadBytes(this.§_-cU§(this.§_-1J§[0].Library.@swf));
         }
         this.§_-PB§();
      }
      
      private function §_-6Z§(param1:String) : void
      {
         var _loc2_:Object = §_-Wg§.§_-um§(this.getFileAsString(param1));
         §_-et§.§catch§(_loc2_);
      }
      
      protected function §_-Gz§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-wg§.§_-ys§(_loc2_);
      }
      
      protected function §_-V§(param1:String) : void
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
                  if(§_-jZ§[_loc13_] == null)
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
            §_-tJ§.§_-eL§(new §_-Z9§(_loc2_,_loc4_,param1.bitmapData));
            §_-PB§();
         };
         ++this.§_-Jz§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-rf§(imagePath,onComplete);
      }
      
      protected function §_-PB§() : void
      {
         --this.§_-Jz§;
         if(this.§_-Jz§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §_-GV§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-Jb§.§_-qw§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-rf§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-mF§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-tJ§.§_-eL§(new spriteSheetClass(dataObject,param1.bitmapData));
            §_-PB§();
         };
         ++this.§_-Jz§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-Uk§;
            this.§_-rf§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-a4§;
            this.§_-rf§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-Tj§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§_-2V§ = 185;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-vs§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-vs§() * 255);
            _loc2_ -= int(this.§_-vs§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-vs§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-vs§() : Number
      {
         this.§_-2V§ ^= this.§_-2V§ << 21;
         this.§_-2V§ ^= this.§_-2V§ >>> 35;
         this.§_-2V§ ^= this.§_-2V§ << 4;
         if(this.§_-2V§ < 0)
         {
            this.§_-2V§ &= 2147483647;
         }
         return this.§_-2V§ / 2147483647;
      }
   }
}
