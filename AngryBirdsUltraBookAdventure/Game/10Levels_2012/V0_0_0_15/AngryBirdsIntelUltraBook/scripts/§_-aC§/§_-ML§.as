package §_-aC§
{
   import §_-0BV§.ParticleManager;
   import §_-6E§.§ var§;
   import §_-6E§.§_-7O§;
   import §_-6E§.§_-Fp§;
   import §_-6E§.§_-So§;
   import §_-6E§.§_-yO§;
   import §_-8d§.§_-mB§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-bm§;
   import §_-dX§.§_-03L§;
   import §_-dX§.§_-J4§;
   import §_-eS§.§_-08D§;
   import §_-eS§.§_-4E§;
   import §_-eS§.§_-Bx§;
   import §_-n§.§_-II§;
   import §_-of§.§_-Ec§;
   import §_-of§.§_-IC§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §_-ML§ extends EventDispatcher implements §_-J4§
   {
       
      
      protected var §_-U2§:int;
      
      protected var §_-09p§:Object;
      
      protected var §_-Xb§:int = 0;
      
      protected var §_-k1§:§_-7O§;
      
      protected var §_-07P§:Vector.<XML>;
      
      protected var §_-l2§:Loader;
      
      public function §_-ML§()
      {
         this.§_-09p§ = {};
         this.§_-07P§ = new Vector.<XML>();
         super();
         this.§_-k1§ = new §_-7O§();
      }
      
      public function get §_-07S§() : § var§
      {
         return this.§_-k1§;
      }
      
      public function get §_-wB§() : Boolean
      {
         return this.§_-Xb§ == 0;
      }
      
      public function dispose() : void
      {
         this.§_-k1§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§_-09p§[param1] as §_-Ec§).§_-08J§(false);
      }
      
      public function §_-mr§(param1:String) : ByteArray
      {
         return (this.§_-09p§[param1] as §_-Ec§).content;
      }
      
      public function §_-i4§(param1:String, param2:Function) : void
      {
         return §_-Bx§.§_-R7§(this.§_-mr§(param1),param2);
      }
      
      public function §_-Vt§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§_-Ec§ = null;
         if(param2)
         {
            this.§_-xu§(param1);
         }
         var _loc3_:§_-IC§ = new §_-IC§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§_-RC§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§_-ct§(_loc5_)).§_-UM§.substr(-1) != "/")
            {
               if(!this.§_-09p§[_loc6_.§_-UM§])
               {
               }
               this.§_-09p§[_loc6_.§_-UM§] = _loc4_[_loc6_.§_-UM§] = _loc6_;
            }
            _loc5_--;
         }
         this.§_-Ne§(_loc4_);
      }
      
      protected function §_-Ne§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §_-Ec§).§_-08J§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§_-4E§.§_-ju§);
               }
               this.§_-5F§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§_-tc§(levelNameResults[1].toLowerCase(),§_-bm§.§_-009§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-AF§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-pW§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-070§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-xJ§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§_-8e§(fileName);
            }
         }
         if(this.§_-Xb§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §_-8e§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§_-Xb§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§_-07P§.push(_loc2_);
         if(this.§_-07P§.length == 1)
         {
            this.§_-l2§ = new Loader();
            this.§_-l2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-pE§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§_-l2§.loadBytes(this.§_-mr§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §_-pE§(param1:Event) : void
      {
         this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-pE§);
         var _loc2_:XML = this.§_-07P§.shift();
         §_-03L§.§_-1L§(this.§_-l2§,_loc2_.Library[0]);
         if(this.§_-07P§.length > 0)
         {
            this.§_-l2§ = new Loader();
            this.§_-l2§.contentLoaderInfo.addEventListener(Event.INIT,this.§_-pE§);
            this.§_-l2§.loadBytes(this.§_-mr§(this.§_-07P§[0].Library.@swf));
         }
         this.§_-0BN§();
      }
      
      private function §_-xJ§(param1:String) : void
      {
         var _loc2_:Object = §_-08D§.§_-0BY§(this.getFileAsString(param1));
         §_-II§.§_-f2§(_loc2_);
      }
      
      protected function §_-070§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-mB§.§_-er§(_loc2_);
      }
      
      protected function §_-pW§(param1:String) : void
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
                  if(§_-09p§[_loc13_] == null)
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
            §_-k1§.§_-Ho§(new §_-Fp§(_loc2_,_loc4_,param1.bitmapData));
            §_-0BN§();
         };
         ++this.§_-Xb§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-i4§(imagePath,onComplete);
      }
      
      protected function §_-0BN§() : void
      {
         --this.§_-Xb§;
         if(this.§_-Xb§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §_-AF§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§_-01T§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-i4§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-5F§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-k1§.§_-Ho§(new spriteSheetClass(dataObject,param1.bitmapData));
            §_-0BN§();
         };
         ++this.§_-Xb§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-So§;
            this.§_-i4§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-yO§;
            this.§_-i4§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-xu§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§_-U2§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-6i§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-6i§() * 255);
            _loc2_ -= int(this.§_-6i§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-6i§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-6i§() : Number
      {
         this.§_-U2§ ^= this.§_-U2§ << 21;
         this.§_-U2§ ^= this.§_-U2§ >>> 35;
         this.§_-U2§ ^= this.§_-U2§ << 4;
         if(this.§_-U2§ < 0)
         {
            this.§_-U2§ &= 2147483647;
         }
         return this.§_-U2§ / 2147483647;
      }
   }
}
