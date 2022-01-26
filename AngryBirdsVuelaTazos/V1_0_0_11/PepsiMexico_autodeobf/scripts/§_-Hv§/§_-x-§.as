package §_-Hv§
{
   import §_-4R§.§_-AU§;
   import §_-Bp§.§_-Mn§;
   import §_-Sc§.§_-iB§;
   import §_-Xc§.§_-6L§;
   import §_-Xc§.§_-FV§;
   import §_-Xc§.§_-H2§;
   import §_-Xc§.§_-NB§;
   import §_-Y-§.§_-A5§;
   import §_-Y-§.§_-Wl§;
   import §_-bO§.§_-Qq§;
   import §_-bO§.§_-pe§;
   import §_-nU§.§_-NH§;
   import §_-w0§.JSON;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §_-x-§ extends EventDispatcher
   {
      
      protected static var §_-vk§:int;
      
      protected static var §_-EB§:Object = {};
      
      protected static var §_-mV§:int = 0;
      
      protected static var §_-9v§:§_-x-§ = new §_-x-§();
       
      
      public function §_-x-§()
      {
         super();
      }
      
      public static function §_-45§() : §_-x-§
      {
         return §_-9v§;
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (§_-EB§[param1] as §_-pe§).§_-Xv§(false);
      }
      
      public function §_-MA§(param1:String) : ByteArray
      {
         return (§_-EB§[param1] as §_-pe§).content;
      }
      
      public function §_-gI§(param1:String, param2:Function) : void
      {
         var loader:Loader = null;
         var filePath:String = param1;
         var callback:Function = param2;
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
         {
            loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
            callback(loader.content as Bitmap);
         });
         loader.loadBytes(this.§_-MA§(filePath),new LoaderContext(false,new ApplicationDomain()));
      }
      
      public function §_-He§(param1:ByteArray) : void
      {
         var _loc5_:§_-pe§ = null;
         this.§_-SC§(param1);
         var _loc2_:§_-Qq§ = new §_-Qq§();
         _loc2_.loadBytes(param1);
         var _loc3_:Object = {};
         var _loc4_:int = _loc2_.§_-DX§() - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = _loc2_.§_-Si§(_loc4_)).§_-sk§.substr(-1) != "/")
            {
               if(!§_-EB§[_loc5_.§_-sk§])
               {
               }
               §_-EB§[_loc5_.§_-sk§] = _loc3_[_loc5_.§_-sk§] = _loc5_;
            }
            _loc4_--;
         }
         this.§_-gX§(_loc3_);
      }
      
      protected function §_-gX§(param1:Object) : void
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
                  jsonObject = §_-w0§.JSON.§_-bW§((packageFiles[fileName] as §_-pe§).§_-Xv§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.");
               }
               this.§_-gY§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-A5§.§_-Yx§(levelNameResults[1].toLowerCase(),§_-Wl§.§_-J§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-f-§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-8D§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-x3§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-1p§(fileName);
            }
         }
      }
      
      private function §_-1p§(param1:String) : void
      {
         var _loc2_:Object = §_-AU§.§_-rm§(this.getFileAsString(param1));
         §_-iB§.§_-ux§(_loc2_);
      }
      
      protected function §_-x3§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-Mn§.§_-F1§(_loc2_);
      }
      
      protected function §_-8D§(param1:String) : void
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
               _loc8_ = (_loc7_ = _loc6_.@file).split("\\");
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
               if(§_-EB§[_loc13_] == null)
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
            §_-NB§.§_-ew§(new §_-6L§(_loc2_,_loc4_,param1.bitmapData));
            --§_-mV§;
            if(§_-mV§ == 0)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         };
         ++§_-mV§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-gI§(imagePath,onComplete);
      }
      
      protected function §_-f-§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-NH§.§_-NK§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-gI§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-gY§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-NB§.§_-ew§(new spriteSheetClass(dataObject,param1.bitmapData));
            --§_-mV§;
            if(§_-mV§ == 0)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         };
         ++§_-mV§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-FV§;
            this.§_-gI§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-H2§;
            this.§_-gI§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-SC§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         §_-vk§ = 185;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§var§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§var§() * 255);
            _loc2_ -= int(this.§var§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§var§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §var§() : Number
      {
         §_-vk§ ^= §_-vk§ << 21;
         §_-vk§ ^= §_-vk§ >>> 35;
         §_-vk§ ^= §_-vk§ << 4;
         if(§_-vk§ < 0)
         {
            §_-vk§ &= 2147483647;
         }
         return §_-vk§ / 2147483647;
      }
   }
}
