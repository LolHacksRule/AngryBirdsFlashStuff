package §_-Mb§
{
   import §_-2z§.§_-rz§;
   import §_-PC§.§_-Ce§;
   import §_-Wy§.§_-qj§;
   import §_-Y2§.§_-mk§;
   import §_-id§.§_-Ir§;
   import §_-id§.§_-dj§;
   import §_-id§.§_-j2§;
   import §_-id§.§_-mB§;
   import §_-ja§.§_-GH§;
   import §_-ja§.§_-Re§;
   import §_-mc§.§_-9U§;
   import §_-mc§.§_-Vi§;
   import §_-rD§.§_-yK§;
   import §_-uh§.§_-HB§;
   import §_-uh§.§_-US§;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-10§ implements §_-yK§
   {
      
      protected static var §_-Hf§:int;
      
      protected static var §_-Ef§:Object = {};
      
      protected static var §_-Fz§:int = 0;
      
      protected static var §_-aP§:§_-10§ = new §_-10§();
       
      
      public function §_-10§()
      {
         super();
      }
      
      public static function §_-Ic§() : §_-10§
      {
         return §_-aP§;
      }
      
      public function get §_-la§() : Boolean
      {
         return §_-Fz§ == 0;
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (§_-Ef§[param1] as §_-GH§).§_-ak§(false);
      }
      
      public function §_-g-§(param1:String) : ByteArray
      {
         return (§_-Ef§[param1] as §_-GH§).content;
      }
      
      public function §_-CF§(param1:String, param2:Function) : void
      {
         return §_-Vi§.§_-nQ§(this.§_-g-§(param1),param2);
      }
      
      public function §_-uH§(param1:ByteArray) : void
      {
         var _loc5_:§_-GH§ = null;
         this.§_-AJ§(param1);
         var _loc2_:§_-Re§ = new §_-Re§();
         _loc2_.loadBytes(param1);
         var _loc3_:Object = {};
         var _loc4_:int = _loc2_.§_-hq§() - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = _loc2_.§_-2A§(_loc4_)).§_-NK§.substr(-1) != "/")
            {
               if(!§_-Ef§[_loc5_.§_-NK§])
               {
               }
               §_-Ef§[_loc5_.§_-NK§] = _loc3_[_loc5_.§_-NK§] = _loc5_;
            }
            _loc4_--;
         }
         this.§_-F4§(_loc3_);
      }
      
      protected function §_-F4§(param1:Object) : void
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
                  jsonObject = §_-rz§.§_-EM§((packageFiles[fileName] as §_-GH§).§_-ak§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.");
               }
               this.§_-RD§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-HB§.§_-Tm§(levelNameResults[1].toLowerCase(),§_-US§.§_-Oi§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-On§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-pg§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-1p§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-xw§(fileName);
            }
         }
      }
      
      private function §_-xw§(param1:String) : void
      {
         var _loc2_:Object = §_-9U§.§_-OJ§(this.getFileAsString(param1));
         §_-qj§.§_-eP§(_loc2_);
      }
      
      protected function §_-1p§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-Ce§.§_-1J§(_loc2_);
      }
      
      protected function §_-pg§(param1:String) : void
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
               if(§_-Ef§[_loc13_] == null)
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
            §_-dj§.§_-yd§(new §_-mB§(_loc2_,_loc4_,param1.bitmapData));
            --§_-Fz§;
         };
         ++§_-Fz§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-CF§(imagePath,onComplete);
      }
      
      protected function §_-On§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-mk§.§_-hF§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-CF§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-RD§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-dj§.§_-yd§(new spriteSheetClass(dataObject,param1.bitmapData));
            --§_-Fz§;
         };
         ++§_-Fz§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-j2§;
            this.§_-CF§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-Ir§;
            this.§_-CF§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-AJ§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         §_-Hf§ = 185;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-pR§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-pR§() * 255);
            _loc2_ -= int(this.§_-pR§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-pR§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-pR§() : Number
      {
         §_-Hf§ ^= §_-Hf§ << 21;
         §_-Hf§ ^= §_-Hf§ >>> 35;
         §_-Hf§ ^= §_-Hf§ << 4;
         if(§_-Hf§ < 0)
         {
            §_-Hf§ &= 2147483647;
         }
         return §_-Hf§ / 2147483647;
      }
   }
}
