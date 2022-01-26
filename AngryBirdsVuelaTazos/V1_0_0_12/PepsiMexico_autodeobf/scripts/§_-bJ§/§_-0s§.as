package §_-bJ§
{
   import §_-1P§.§_-Wm§;
   import §_-2N§.§_-5R§;
   import §_-2N§.§_-T9§;
   import §_-EG§.§_-4R§;
   import §_-LM§.§_-vR§;
   import §_-Su§.§_-8v§;
   import §_-Su§.§_-Xk§;
   import §_-VX§.JSON;
   import §_-Xr§.§_-dQ§;
   import §_-mK§.§_-77§;
   import §_-mK§.§_-hb§;
   import §_-mK§.§_-hf§;
   import §_-mK§.§_-lc§;
   import §_-wH§.§_-Em§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §_-0s§ implements §_-vR§
   {
      
      protected static var §_-8t§:int;
      
      protected static var §_-B1§:Object = {};
      
      protected static var §_-CH§:int = 0;
      
      protected static var §_-WK§:§_-0s§ = new §_-0s§();
       
      
      public function §_-0s§()
      {
         super();
      }
      
      public static function §_-od§() : §_-0s§
      {
         return §_-WK§;
      }
      
      public function get §_-UB§() : Boolean
      {
         return §_-CH§ == 0;
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (§_-B1§[param1] as §_-T9§).§_-o7§(false);
      }
      
      public function §_-Y0§(param1:String) : ByteArray
      {
         return (§_-B1§[param1] as §_-T9§).content;
      }
      
      public function §_-lq§(param1:String, param2:Function) : void
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
         loader.loadBytes(this.§_-Y0§(filePath),new LoaderContext(false,new ApplicationDomain()));
      }
      
      public function §_-08§(param1:ByteArray) : void
      {
         var _loc5_:§_-T9§ = null;
         this.§_-wS§(param1);
         var _loc2_:§_-5R§ = new §_-5R§();
         _loc2_.loadBytes(param1);
         var _loc3_:Object = {};
         var _loc4_:int = _loc2_.§_-xX§() - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = _loc2_.§_-pX§(_loc4_)).§_-7k§.substr(-1) != "/")
            {
               if(!§_-B1§[_loc5_.§_-7k§])
               {
               }
               §_-B1§[_loc5_.§_-7k§] = _loc3_[_loc5_.§_-7k§] = _loc5_;
            }
            _loc4_--;
         }
         this.§_-8u§(_loc3_);
      }
      
      protected function §_-8u§(param1:Object) : void
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
                  jsonObject = §_-VX§.JSON.§_-RN§((packageFiles[fileName] as §_-T9§).§_-o7§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.");
               }
               this.§_-dz§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-8v§.§_-P0§(levelNameResults[1].toLowerCase(),§_-Xk§.§_-Pl§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-UI§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-tE§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-qT§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-WR§(fileName);
            }
         }
      }
      
      private function §_-WR§(param1:String) : void
      {
         var _loc2_:Object = §_-dQ§.§_-Um§(this.getFileAsString(param1));
         §_-Em§.§_-J8§(_loc2_);
      }
      
      protected function §_-qT§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-Wm§.§_-mf§(_loc2_);
      }
      
      protected function §_-tE§(param1:String) : void
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
               if(§_-B1§[_loc13_] == null)
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
            §_-lc§.§_-2n§(new §_-77§(_loc2_,_loc4_,param1.bitmapData));
            --§_-CH§;
         };
         ++§_-CH§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-lq§(imagePath,onComplete);
      }
      
      protected function §_-UI§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-4R§.§_-YW§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-lq§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-dz§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-lc§.§_-2n§(new spriteSheetClass(dataObject,param1.bitmapData));
            --§_-CH§;
         };
         ++§_-CH§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-hb§;
            this.§_-lq§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-hf§;
            this.§_-lq§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-wS§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         §_-8t§ = 185;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-Dh§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-Dh§() * 255);
            _loc2_ -= int(this.§_-Dh§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-Dh§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-Dh§() : Number
      {
         §_-8t§ ^= §_-8t§ << 21;
         §_-8t§ ^= §_-8t§ >>> 35;
         §_-8t§ ^= §_-8t§ << 4;
         if(§_-8t§ < 0)
         {
            §_-8t§ &= 2147483647;
         }
         return §_-8t§ / 2147483647;
      }
   }
}
