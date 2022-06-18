package §%Z§
{
   import §'O§.§0E§;
   import §'O§.§]!D§;
   import §,!§.§]=§;
   import §0[§.§!!"§;
   import §0[§.§22§;
   import §0[§.§26§;
   import §0[§.§7C§;
   import §0[§.§[5§;
   import §9S§.§!!§;
   import §9S§.§,x§;
   import §<!@§.§!P§;
   import §<!@§.§+!-§;
   import §[!$§.§>"§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import §while§.§4!!§;
   import §while§.§4!5§;
   import §while§.§5!-§;
   
   public class §1y§ extends EventDispatcher implements §,x§
   {
       
      
      protected var §6f§:int;
      
      protected var §^!F§:Object;
      
      protected var §56§:int = 0;
      
      protected var §"H§:§[5§;
      
      protected var §4!"§:Vector.<XML>;
      
      protected var §>f§:Loader;
      
      public function §1y§()
      {
         this.§^!F§ = {};
         this.§4!"§ = new Vector.<XML>();
         super();
         this.§"H§ = new §[5§();
      }
      
      public function get §2o§() : §!!"§
      {
         return this.§"H§;
      }
      
      public function get §[#§() : Boolean
      {
         return this.§56§ == 0;
      }
      
      public function dispose() : void
      {
         this.§"H§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§^!F§[param1] as §]!D§).§0N§(false);
      }
      
      public function §#!$§(param1:String) : ByteArray
      {
         return (this.§^!F§[param1] as §]!D§).content;
      }
      
      public function §^!#§(param1:String, param2:Function) : void
      {
         return §4!!§.§@!$§(this.§#!$§(param1),param2);
      }
      
      public function § true§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§]!D§ = null;
         if(param2)
         {
            this.§;9§(param1);
         }
         var _loc3_:§0E§ = new §0E§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§9A§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§3y§(_loc5_)).§%1§.substr(-1) != "/")
            {
               if(!this.§^!F§[_loc6_.§%1§])
               {
               }
               this.§^!F§[_loc6_.§%1§] = _loc4_[_loc6_.§%1§] = _loc6_;
            }
            _loc5_--;
         }
         this.§6D§(_loc4_);
      }
      
      protected function §6D§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §]!D§).§0N§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§4!5§.§'u§);
               }
               this.§8u§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §!P§.§ X§(levelNameResults[1].toLowerCase(),§+!-§.§0$§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§]^§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§+#§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§7N§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§2Q§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§@m§(fileName);
            }
         }
         if(this.§56§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §@m§(param1:String) : void
      {
         ++this.§56§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§4!"§.push(_loc2_);
         if(this.§4!"§.length == 1)
         {
            this.§>f§ = new Loader();
            this.§>f§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?;§);
            this.§>f§.loadBytes(this.§#!$§(_loc2_.Library.@swf));
         }
      }
      
      private function §?;§(param1:Event) : void
      {
         this.§>f§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?;§);
         var _loc2_:XML = this.§4!"§.shift();
         §!!§.§%!#§(this.§>f§,_loc2_.Library[0]);
         if(this.§4!"§.length > 0)
         {
            this.§>f§ = new Loader();
            this.§>f§.contentLoaderInfo.addEventListener(Event.INIT,this.§?;§);
            this.§>f§.loadBytes(this.§#!$§(this.§4!"§[0].Library.@swf));
         }
         this.§=!7§();
      }
      
      private function §2Q§(param1:String) : void
      {
         var _loc2_:Object = §5!-§.§<R§(this.getFileAsString(param1));
         §]=§.§@!"§(_loc2_);
      }
      
      protected function §7N§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §>"§.§5i§(_loc2_);
      }
      
      protected function §+#§(param1:String) : void
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
                  if(§^!F§[_loc13_] == null)
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
            §"H§.§^!C§(new §7C§(_loc2_,_loc4_,param1.bitmapData));
            §=!7§();
         };
         ++this.§56§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§^!#§(imagePath,onComplete);
      }
      
      protected function §=!7§() : void
      {
         --this.§56§;
         if(this.§56§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §]^§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§1!9§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§^!#§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §8u§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §"H§.§^!C§(new spriteSheetClass(dataObject,param1.bitmapData));
            §=!7§();
         };
         ++this.§56§;
         if(dataObject.image)
         {
            spriteSheetClass = §22§;
            this.§^!#§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §26§;
            this.§^!#§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §;9§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§6f§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§'D§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§'D§() * 255);
            _loc2_ -= int(this.§'D§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§'D§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §'D§() : Number
      {
         this.§6f§ ^= this.§6f§ << 21;
         this.§6f§ ^= this.§6f§ >>> 35;
         this.§6f§ ^= this.§6f§ << 4;
         if(this.§6f§ < 0)
         {
            this.§6f§ &= 2147483647;
         }
         return this.§6f§ / 2147483647;
      }
   }
}
