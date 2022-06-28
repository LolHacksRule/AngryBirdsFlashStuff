package §+!%§
{
   import §%!6§.§!'§;
   import §%!6§.§'"§;
   import §%!6§.§7<§;
   import §'%§.ParticleManager;
   import §+!@§.§!T§;
   import §+!@§.§#!G§;
   import §0X§.§1P§;
   import §0X§.§;a§;
   import §5`§.§49§;
   import §9!7§.§?U§;
   import §<=§.§+A§;
   import §<=§.§3w§;
   import §<=§.§6@§;
   import §<=§.§7d§;
   import §<=§.§9x§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §1!E§ extends EventDispatcher implements §#!G§
   {
       
      
      protected var §&?§:int;
      
      protected var §+#§:Object;
      
      protected var §+!D§:int = 0;
      
      protected var §#§:§3w§;
      
      protected var §4! §:Vector.<XML>;
      
      protected var § l§:Loader;
      
      public function §1!E§()
      {
         this.§+#§ = {};
         this.§4! § = new Vector.<XML>();
         super();
         this.§#§ = new §3w§();
      }
      
      public function get §;Y§() : §9x§
      {
         return this.§#§;
      }
      
      public function get § E§() : Boolean
      {
         return this.§+!D§ == 0;
      }
      
      public function dispose() : void
      {
         this.§#§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§+#§[param1] as §;a§).§+n§(false);
      }
      
      public function §61§(param1:String) : ByteArray
      {
         return (this.§+#§[param1] as §;a§).content;
      }
      
      public function §!v§(param1:String, param2:Function) : void
      {
         return §7<§.§[I§(this.§61§(param1),param2);
      }
      
      public function §6!'§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§;a§ = null;
         if(param2)
         {
            this.§4j§(param1);
         }
         var _loc3_:§1P§ = new §1P§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§@V§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§-r§(_loc5_)).§?s§.substr(-1) != "/")
            {
               if(!this.§+#§[_loc6_.§?s§])
               {
               }
               this.§+#§[_loc6_.§?s§] = _loc4_[_loc6_.§?s§] = _loc6_;
            }
            _loc5_--;
         }
         this.§@8§(_loc4_);
      }
      
      protected function §@8§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §;a§).§+n§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§!'§.§!!;§);
               }
               this.§=3§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §59§.§;f§(levelNameResults[1].toLowerCase(),§^!9§.§?!F§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§#4§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§7j§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§<Q§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§<Z§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§?! §(fileName);
            }
         }
         if(this.§+!D§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §?! §(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§+!D§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§4! §.push(_loc2_);
         if(this.§4! §.length == 1)
         {
            this.§ l§ = new Loader();
            this.§ l§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%!A§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§ l§.loadBytes(this.§61§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §%!A§(param1:Event) : void
      {
         this.§ l§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!A§);
         var _loc2_:XML = this.§4! §.shift();
         §!T§.§`+§(this.§ l§,_loc2_.Library[0]);
         if(this.§4! §.length > 0)
         {
            this.§ l§ = new Loader();
            this.§ l§.contentLoaderInfo.addEventListener(Event.INIT,this.§%!A§);
            this.§ l§.loadBytes(this.§61§(this.§4! §[0].Library.@swf));
         }
         this.§+r§();
      }
      
      private function §<Z§(param1:String) : void
      {
         var _loc2_:Object = §'"§.§+!8§(this.getFileAsString(param1));
         §?U§.§;%§(_loc2_);
      }
      
      protected function §<Q§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §49§.§1j§(_loc2_);
      }
      
      protected function §7j§(param1:String) : void
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
                  if(§+#§[_loc13_] == null)
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
            §#§.§;e§(new §6@§(_loc2_,_loc4_,param1.bitmapData));
            §+r§();
         };
         ++this.§+!D§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§!v§(imagePath,onComplete);
      }
      
      protected function §+r§() : void
      {
         --this.§+!D§;
         if(this.§+!D§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §#4§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§`7§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§!v§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §=3§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §#§.§;e§(new spriteSheetClass(dataObject,param1.bitmapData));
            §+r§();
         };
         ++this.§+!D§;
         if(dataObject.image)
         {
            spriteSheetClass = §+A§;
            this.§!v§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §7d§;
            this.§!v§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §4j§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§&?§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§4F§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§4F§() * 255);
            _loc2_ -= int(this.§4F§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§4F§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §4F§() : Number
      {
         this.§&?§ ^= this.§&?§ << 21;
         this.§&?§ ^= this.§&?§ >>> 35;
         this.§&?§ ^= this.§&?§ << 4;
         if(this.§&?§ < 0)
         {
            this.§&?§ &= 2147483647;
         }
         return this.§&?§ / 2147483647;
      }
   }
}
