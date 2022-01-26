package §_-D0§
{
   import §_-3P§.§_-dN§;
   import §_-3P§.§_-ry§;
   import §_-AI§.§_-4Z§;
   import §_-AI§.§_-Ul§;
   import §_-HJ§.§_-ln§;
   import §_-I4§.§_-E5§;
   import §_-I4§.§_-ey§;
   import §_-I4§.§_-g6§;
   import §_-I4§.§_-hj§;
   import §_-Ij§.§_-YF§;
   import §_-KS§.§_-n-§;
   import §_-KX§.§try §;
   import §_-Y7§.JSON;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §_-0V§ extends EventDispatcher
   {
      
      protected static var §_-pn§:int;
      
      protected static var §_-rI§:Object = {};
      
      protected static var §_-o0§:int = 0;
      
      protected static var §_-vJ§:§_-0V§ = new §_-0V§();
       
      
      public function §_-0V§()
      {
         super();
      }
      
      public static function §_-KU§() : §_-0V§
      {
         return §_-vJ§;
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (§_-rI§[param1] as §_-Ul§).§_-P6§(false);
      }
      
      public function §_-xJ§(param1:String) : ByteArray
      {
         return (§_-rI§[param1] as §_-Ul§).content;
      }
      
      public function §_-GH§(param1:String, param2:Function) : void
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
         loader.loadBytes(this.§_-xJ§(filePath),new LoaderContext(false,new ApplicationDomain()));
      }
      
      public function §_-Db§(param1:ByteArray) : void
      {
         var _loc5_:§_-Ul§ = null;
         this.§_-EE§(param1);
         var _loc2_:§_-4Z§ = new §_-4Z§();
         _loc2_.loadBytes(param1);
         var _loc3_:Object = {};
         var _loc4_:int = _loc2_.§_-Mf§() - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = _loc2_.§_-60§(_loc4_)).§_-XE§.substr(-1) != "/")
            {
               if(!§_-rI§[_loc5_.§_-XE§])
               {
               }
               §_-rI§[_loc5_.§_-XE§] = _loc3_[_loc5_.§_-XE§] = _loc5_;
            }
            _loc4_--;
         }
         this.§_-IL§(_loc3_);
      }
      
      protected function §_-IL§(param1:Object) : void
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
                  jsonObject = §_-Y7§.JSON.§_-YM§((packageFiles[fileName] as §_-Ul§).§_-P6§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.");
               }
               this.§_-Ja§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-dN§.§_-1k§(levelNameResults[1].toLowerCase(),§_-ry§.§_-Hu§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-gr§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-CV§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-li§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-Bg§(fileName);
            }
         }
      }
      
      private function §_-Bg§(param1:String) : void
      {
         var _loc2_:Object = §_-ln§.§_-qe§(this.getFileAsString(param1));
         §try §.§_-S0§(_loc2_);
      }
      
      protected function §_-li§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-n-§.§_-Wj§(_loc2_);
      }
      
      protected function §_-CV§(param1:String) : void
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
               if(§_-rI§[_loc13_] == null)
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
            §_-g6§.§_-8o§(new §_-hj§(_loc2_,_loc4_,param1.bitmapData));
            --§_-o0§;
            if(§_-o0§ == 0)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         };
         ++§_-o0§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-GH§(imagePath,onComplete);
      }
      
      protected function §_-gr§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-YF§.each(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-GH§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-Ja§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-g6§.§_-8o§(new spriteSheetClass(dataObject,param1.bitmapData));
            --§_-o0§;
            if(§_-o0§ == 0)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         };
         ++§_-o0§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-ey§;
            this.§_-GH§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-E5§;
            this.§_-GH§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-EE§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         §_-pn§ = 185;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-jv§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-jv§() * 255);
            _loc2_ -= int(this.§_-jv§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-jv§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-jv§() : Number
      {
         §_-pn§ ^= §_-pn§ << 21;
         §_-pn§ ^= §_-pn§ >>> 35;
         §_-pn§ ^= §_-pn§ << 4;
         if(§_-pn§ < 0)
         {
            §_-pn§ &= 2147483647;
         }
         return §_-pn§ / 2147483647;
      }
   }
}
