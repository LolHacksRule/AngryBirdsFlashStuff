package §;!+§
{
   import § !V§.§!5§;
   import §'!O§.§@!l§;
   import §'!O§.§[!m§;
   import §,E§.§ !§;
   import §,E§.§+!g§;
   import §,E§.§=!B§;
   import §3&§.§+;§;
   import §3&§.§7G§;
   import §8!w§.§<A§;
   import §>!0§.§%!a§;
   import §?l§.§5A§;
   import §?l§.§7!4§;
   import §?l§.§9!1§;
   import §?l§.§9!X§;
   import §?l§.§9l§;
   import §["5§.§+4§;
   import §["5§.§8!z§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §?p§ extends EventDispatcher implements §+;§
   {
       
      
      protected var §%8§:int;
      
      protected var §&G§:Object;
      
      protected var §'!V§:int = 0;
      
      protected var §]!i§:§5A§;
      
      protected var §`!B§:Vector.<XML>;
      
      protected var §5L§:Loader;
      
      public function §?p§()
      {
         this.§&G§ = {};
         this.§`!B§ = new Vector.<XML>();
         super();
         this.§]!i§ = new §5A§();
      }
      
      public function get §2!J§() : §9!X§
      {
         return this.§]!i§;
      }
      
      public function get §<!7§() : Boolean
      {
         return this.§'!V§ == 0;
      }
      
      public function dispose() : void
      {
         this.§]!i§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§&G§[param1] as §8!z§).§%6§(false);
      }
      
      public function §1!5§(param1:String) : ByteArray
      {
         return (this.§&G§[param1] as §8!z§).content;
      }
      
      public function §,^§(param1:String, param2:Function) : void
      {
         return § !§.§"7§(this.§1!5§(param1),param2);
      }
      
      public function §'"$§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§8!z§ = null;
         if(param2)
         {
            this.§4]§(param1);
         }
         var _loc3_:§+4§ = new §+4§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§[^§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§6!F§(_loc5_)).§!!'§.substr(-1) != "/")
            {
               if(!this.§&G§[_loc6_.§!!'§])
               {
               }
               this.§&G§[_loc6_.§!!'§] = _loc4_[_loc6_.§!!'§] = _loc6_;
            }
            _loc5_--;
         }
         this.§5!<§(_loc4_);
      }
      
      protected function §5!<§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §8!z§).§%6§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§+!g§.§=X§);
               }
               this.§2""§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §[!m§.§?"+§(levelNameResults[1].toLowerCase(),§@!l§.§9!<§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§[#§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§#"3§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§`]§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§!!z§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§6Z§(fileName);
            }
         }
         if(this.§'!V§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §6Z§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§'!V§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§`!B§.push(_loc2_);
         if(this.§`!B§.length == 1)
         {
            this.§5L§ = new Loader();
            this.§5L§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§&"&§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§5L§.loadBytes(this.§1!5§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §&"&§(param1:Event) : void
      {
         this.§5L§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&"&§);
         var _loc2_:XML = this.§`!B§.shift();
         §7G§.§6!C§(this.§5L§,_loc2_.Library[0]);
         if(this.§`!B§.length > 0)
         {
            this.§5L§ = new Loader();
            this.§5L§.contentLoaderInfo.addEventListener(Event.INIT,this.§&"&§);
            this.§5L§.loadBytes(this.§1!5§(this.§`!B§[0].Library.@swf));
         }
         this.§@!B§();
      }
      
      private function §!!z§(param1:String) : void
      {
         var _loc2_:Object = §=!B§.§?[§(this.getFileAsString(param1));
         §<A§.§@!'§(_loc2_);
      }
      
      protected function §`]§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §!5§.§;!u§(_loc2_);
      }
      
      protected function §#"3§(param1:String) : void
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
                  if(§&G§[_loc13_] == null)
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
            §]!i§.§@!@§(new §9!1§(_loc2_,_loc4_,param1.bitmapData));
            §@!B§();
         };
         ++this.§'!V§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§,^§(imagePath,onComplete);
      }
      
      protected function §@!B§() : void
      {
         --this.§'!V§;
         if(this.§'!V§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §[#§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §%!a§.§?!d§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§,^§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §2""§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §]!i§.§@!@§(new spriteSheetClass(dataObject,param1.bitmapData));
            §@!B§();
         };
         ++this.§'!V§;
         if(dataObject.image)
         {
            spriteSheetClass = §9l§;
            this.§,^§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §7!4§;
            this.§,^§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §4]§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§%8§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§?!e§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§?!e§() * 255);
            _loc2_ -= int(this.§?!e§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§?!e§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §?!e§() : Number
      {
         this.§%8§ ^= this.§%8§ << 21;
         this.§%8§ ^= this.§%8§ >>> 35;
         this.§%8§ ^= this.§%8§ << 4;
         if(this.§%8§ < 0)
         {
            this.§%8§ &= 2147483647;
         }
         return this.§%8§ / 2147483647;
      }
   }
}
