package §_-6j§
{
   import §_-0§.§_-MB§;
   import §_-Eq§.JSON;
   import §_-PS§.§_-Xz§;
   import §_-PS§.§_-sq§;
   import §_-XI§.§_-BJ§;
   import §_-XI§.§_-Nj§;
   import §_-bs§.§_-3j§;
   import §_-di§.§_-1-§;
   import §_-di§.§_-Cl§;
   import §_-di§.§_-Fo§;
   import §_-di§.§_-XF§;
   import §_-gl§.§_-8j§;
   import §_-rQ§.§_-Q2§;
   import §_-we§.§_-Se§;
   import §_-we§.§_-Sy§;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-P4§ implements §_-8j§
   {
      
      protected static var §_-JZ§:int;
      
      protected static var §_-3s§:Object = {};
      
      protected static var §_-dd§:int = 0;
      
      protected static var §_-G4§:§_-P4§ = new §_-P4§();
       
      
      public function §_-P4§()
      {
         super();
      }
      
      public static function §_-Tn§() : §_-P4§
      {
         return §_-G4§;
      }
      
      public function get §_-2g§() : Boolean
      {
         return §_-dd§ == 0;
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (§_-3s§[param1] as §_-Se§).§_-RQ§(false);
      }
      
      public function §_-q7§(param1:String) : ByteArray
      {
         return (§_-3s§[param1] as §_-Se§).content;
      }
      
      public function §_-FV§(param1:String, param2:Function) : void
      {
         return §_-BJ§.§_-jK§(this.§_-q7§(param1),param2);
      }
      
      public function §_-KI§(param1:ByteArray) : void
      {
         var _loc5_:§_-Se§ = null;
         this.§_-Bs§(param1);
         var _loc2_:§_-Sy§ = new §_-Sy§();
         _loc2_.loadBytes(param1);
         var _loc3_:Object = {};
         var _loc4_:int = _loc2_.§_-Lb§() - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = _loc2_.§_-Ip§(_loc4_)).§_-MM§.substr(-1) != "/")
            {
               if(!§_-3s§[_loc5_.§_-MM§])
               {
               }
               §_-3s§[_loc5_.§_-MM§] = _loc3_[_loc5_.§_-MM§] = _loc5_;
            }
            _loc4_--;
         }
         this.§_-o6§(_loc3_);
      }
      
      protected function §_-o6§(param1:Object) : void
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
                  jsonObject = §_-Eq§.JSON.§_-SR§((packageFiles[fileName] as §_-Se§).§_-RQ§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.");
               }
               this.§_-AT§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-Xz§.§_-JM§(levelNameResults[1].toLowerCase(),§_-sq§.§_-tp§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-jD§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-Wi§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-i9§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-eQ§(fileName);
            }
         }
      }
      
      private function §_-eQ§(param1:String) : void
      {
         var _loc2_:Object = §_-Nj§.§_-f3§(this.getFileAsString(param1));
         §_-3j§.§_-lv§(_loc2_);
      }
      
      protected function §_-i9§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-Q2§.§_-mw§(_loc2_);
      }
      
      protected function §_-Wi§(param1:String) : void
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
               if(§_-3s§[_loc13_] == null)
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
            §_-XF§.§_-Vx§(new §_-1-§(_loc2_,_loc4_,param1.bitmapData));
            --§_-dd§;
         };
         ++§_-dd§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-FV§(imagePath,onComplete);
      }
      
      protected function §_-jD§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-MB§.§_-d§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-FV§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-AT§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-XF§.§_-Vx§(new spriteSheetClass(dataObject,param1.bitmapData));
            --§_-dd§;
         };
         ++§_-dd§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-Cl§;
            this.§_-FV§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-Fo§;
            this.§_-FV§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-Bs§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         §_-JZ§ = 185;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-Na§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-Na§() * 255);
            _loc2_ -= int(this.§_-Na§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-Na§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-Na§() : Number
      {
         §_-JZ§ ^= §_-JZ§ << 21;
         §_-JZ§ ^= §_-JZ§ >>> 35;
         §_-JZ§ ^= §_-JZ§ << 4;
         if(§_-JZ§ < 0)
         {
            §_-JZ§ &= 2147483647;
         }
         return §_-JZ§ / 2147483647;
      }
   }
}
