package §_-Aw§
{
   import §_-2J§.§_-3T§;
   import §_-2J§.§_-5A§;
   import §_-2J§.§_-i§;
   import §_-2J§.§_-uR§;
   import §_-IV§.§_-nb§;
   import §_-IV§.§_-o8§;
   import §_-Qx§.§_-Sf§;
   import §_-Qx§.§_-Wv§;
   import §_-Ra§.§_-fR§;
   import §_-UC§.§_-o§;
   import §_-UC§.§_-vw§;
   import §_-hq§.§_-AD§;
   import §_-mJ§.§_-4n§;
   import §_-wt§.§_-8C§;
   import §_-ya§.§_-u-§;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-BS§ implements §_-8C§
   {
      
      protected static var §_-z9§:int;
      
      protected static var §_-OM§:Object = {};
      
      protected static var §_-4a§:int = 0;
      
      protected static var §_-mE§:§_-BS§ = new §_-BS§();
       
      
      public function §_-BS§()
      {
         super();
      }
      
      public static function §_-BF§() : §_-BS§
      {
         return §_-mE§;
      }
      
      public function get §_-pi§() : Boolean
      {
         return §_-4a§ == 0;
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (§_-OM§[param1] as §_-o§).§_-QP§(false);
      }
      
      public function §_-Up§(param1:String) : ByteArray
      {
         return (§_-OM§[param1] as §_-o§).content;
      }
      
      public function §_-bo§(param1:String, param2:Function) : void
      {
         return §_-o8§.§_-yG§(this.§_-Up§(param1),param2);
      }
      
      public function §_-nS§(param1:ByteArray) : void
      {
         var _loc5_:§_-o§ = null;
         this.§_-lV§(param1);
         var _loc2_:§_-vw§ = new §_-vw§();
         _loc2_.loadBytes(param1);
         var _loc3_:Object = {};
         var _loc4_:int = _loc2_.§_-pu§() - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = _loc2_.§_-i1§(_loc4_)).§_-3K§.substr(-1) != "/")
            {
               if(!§_-OM§[_loc5_.§_-3K§])
               {
               }
               §_-OM§[_loc5_.§_-3K§] = _loc3_[_loc5_.§_-3K§] = _loc5_;
            }
            _loc4_--;
         }
         this.§_-WW§(_loc3_);
      }
      
      protected function §_-WW§(param1:Object) : void
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
                  jsonObject = §_-AD§.§_-Ae§((packageFiles[fileName] as §_-o§).§_-QP§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.");
               }
               this.§_-xC§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-Sf§.§_-DJ§(levelNameResults[1].toLowerCase(),§_-Wv§.§_-4s§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-BA§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-JP§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§set §(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-AM§(fileName);
            }
         }
      }
      
      private function §_-AM§(param1:String) : void
      {
         var _loc2_:Object = §_-nb§.§_-N§(this.getFileAsString(param1));
         §_-u-§.§_-ej§(_loc2_);
      }
      
      protected function §set §(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-fR§.§_-ws§(_loc2_);
      }
      
      protected function §_-JP§(param1:String) : void
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
               if(§_-OM§[_loc13_] == null)
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
            §_-3T§.§_-uF§(new §_-5A§(_loc2_,_loc4_,param1.bitmapData));
            --§_-4a§;
         };
         ++§_-4a§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-bo§(imagePath,onComplete);
      }
      
      protected function §_-BA§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-4n§.§_-i5§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-bo§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-xC§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-3T§.§_-uF§(new spriteSheetClass(dataObject,param1.bitmapData));
            --§_-4a§;
         };
         ++§_-4a§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-uR§;
            this.§_-bo§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-i§;
            this.§_-bo§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-lV§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         §_-z9§ = 185;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-Vy§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-Vy§() * 255);
            _loc2_ -= int(this.§_-Vy§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-Vy§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-Vy§() : Number
      {
         §_-z9§ ^= §_-z9§ << 21;
         §_-z9§ ^= §_-z9§ >>> 35;
         §_-z9§ ^= §_-z9§ << 4;
         if(§_-z9§ < 0)
         {
            §_-z9§ &= 2147483647;
         }
         return §_-z9§ / 2147483647;
      }
   }
}
