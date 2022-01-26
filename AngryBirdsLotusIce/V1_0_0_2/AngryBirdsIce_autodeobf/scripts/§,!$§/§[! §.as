package §,!$§
{
   import §&V§.§9!>§;
   import §,$§.§%=§;
   import §,$§.§5^§;
   import §5C§.ParticleManager;
   import §;f§.§&#§;
   import §;f§.§^o§;
   import §?[§.§#!'§;
   import §?[§.§7f§;
   import §[!8§.§7!1§;
   import §`6§.§ try§;
   import §`6§.§,d§;
   import §`6§.§9!-§;
   import §`6§.§=n§;
   import §`6§.§`r§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import §try§.§2D§;
   import §try§.§6$§;
   import §try§.§^!2§;
   
   public class §[! § extends EventDispatcher implements §#!'§
   {
       
      
      protected var §,!2§:int;
      
      protected var §1f§:Object;
      
      protected var §&y§:int = 0;
      
      protected var §[0§:§,d§;
      
      protected var §^3§:Vector.<XML>;
      
      protected var §,p§:Loader;
      
      public function §[! §()
      {
         this.§1f§ = {};
         this.§^3§ = new Vector.<XML>();
         super();
         this.§[0§ = new §,d§();
      }
      
      public function get §^!%§() : §9!-§
      {
         return this.§[0§;
      }
      
      public function get §2!$§() : Boolean
      {
         return this.§&y§ == 0;
      }
      
      public function dispose() : void
      {
         this.§[0§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1f§[param1] as §5^§).§#!,§(false);
      }
      
      public function §?e§(param1:String) : ByteArray
      {
         return (this.§1f§[param1] as §5^§).content;
      }
      
      public function §;!?§(param1:String, param2:Function) : void
      {
         return §6$§.§try §(this.§?e§(param1),param2);
      }
      
      public function §[D§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§5^§ = null;
         if(param2)
         {
            this.§2!A§(param1);
         }
         var _loc3_:§%=§ = new §%=§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§&$§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§5!<§(_loc5_)).§[v§.substr(-1) != "/")
            {
               if(!this.§1f§[_loc6_.§[v§])
               {
               }
               this.§1f§[_loc6_.§[v§] = _loc4_[_loc6_.§[v§] = _loc6_;
            }
            _loc5_--;
         }
         this.§]S§(_loc4_);
      }
      
      protected function §]S§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §5^§).§#!,§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§^!2§.§!A§);
               }
               this.§9w§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §&#§.§3K§(levelNameResults[1].toLowerCase(),§^o§.§9k§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§5!D§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§&4§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§56§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§'J§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§5T§(fileName);
            }
         }
         if(this.§&y§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §5T§(param1:String) : void
      {
         ++this.§&y§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§^3§.push(_loc2_);
         if(this.§^3§.length == 1)
         {
            this.§,p§ = new Loader();
            this.§,p§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!7§);
            this.§,p§.loadBytes(this.§?e§(_loc2_.Library.@swf));
         }
      }
      
      private function §!7§(param1:Event) : void
      {
         this.§,p§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!7§);
         var _loc2_:XML = this.§^3§.shift();
         §7f§.§04§(this.§,p§,_loc2_.Library[0]);
         if(this.§^3§.length > 0)
         {
            this.§,p§ = new Loader();
            this.§,p§.contentLoaderInfo.addEventListener(Event.INIT,this.§!7§);
            this.§,p§.loadBytes(this.§?e§(this.§^3§[0].Library.@swf));
         }
         this.§+!?§();
      }
      
      private function §'J§(param1:String) : void
      {
         var _loc2_:Object = §2D§.§`!#§(this.getFileAsString(param1));
         §7!1§.§=q§(_loc2_);
      }
      
      protected function §56§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §9!>§.§!!&§(_loc2_);
      }
      
      protected function §&4§(param1:String) : void
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
                  if(§1f§[_loc13_] == null)
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
            §[0§.§]!5§(new §`r§(_loc2_,_loc4_,param1.bitmapData));
            §+!?§();
         };
         ++this.§&y§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§;!?§(imagePath,onComplete);
      }
      
      protected function §+!?§() : void
      {
         --this.§&y§;
         if(this.§&y§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §5!D§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§+,§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§;!?§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §9w§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §[0§.§]!5§(new spriteSheetClass(dataObject,param1.bitmapData));
            §+!?§();
         };
         ++this.§&y§;
         if(dataObject.image)
         {
            spriteSheetClass = § try§;
            this.§;!?§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §=n§;
            this.§;!?§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §2!A§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§,!2§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§2h§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§2h§() * 255);
            _loc2_ -= int(this.§2h§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§2h§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §2h§() : Number
      {
         this.§,!2§ ^= this.§,!2§ << 21;
         this.§,!2§ ^= this.§,!2§ >>> 35;
         this.§,!2§ ^= this.§,!2§ << 4;
         if(this.§,!2§ < 0)
         {
            this.§,!2§ &= 2147483647;
         }
         return this.§,!2§ / 2147483647;
      }
   }
}
