package §5V§
{
   import § !'§.§"6§;
   import § !'§.§+!7§;
   import § !'§.§2#§;
   import § !'§.§>!B§;
   import § !'§.§]z§;
   import §!I§.ParticleManager;
   import §-!C§.§#!G§;
   import §-!C§.§3!H§;
   import §3!2§.§5!G§;
   import §3!2§.§[;§;
   import §4!'§.§!@§;
   import §4!'§.§2!;§;
   import §4!'§.§>o§;
   import §4!3§.§'!@§;
   import §6u§.§&K§;
   import each.§24§;
   import each.§]>§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §=5§ extends EventDispatcher implements §5!G§
   {
       
      
      protected var §;o§:int;
      
      protected var §@l§:Object;
      
      protected var §!o§:int = 0;
      
      protected var §2r§:§2#§;
      
      protected var §,n§:Vector.<XML>;
      
      protected var §<T§:Loader;
      
      public function §=5§()
      {
         this.§@l§ = {};
         this.§,n§ = new Vector.<XML>();
         super();
         this.§2r§ = new §2#§();
      }
      
      public function get §+§() : §"6§
      {
         return this.§2r§;
      }
      
      public function get §!8§() : Boolean
      {
         return this.§!o§ == 0;
      }
      
      public function dispose() : void
      {
         this.§2r§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§@l§[param1] as §]>§).§<>§(false);
      }
      
      public function §@!H§(param1:String) : ByteArray
      {
         return (this.§@l§[param1] as §]>§).content;
      }
      
      public function §@=§(param1:String, param2:Function) : void
      {
         return §!@§.§;&§(this.§@!H§(param1),param2);
      }
      
      public function §9!"§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§]>§ = null;
         if(param2)
         {
            this.§?!3§(param1);
         }
         var _loc3_:§24§ = new §24§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§9X§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§8Q§(_loc5_)).§case §.substr(-1) != "/")
            {
               if(!this.§@l§[_loc6_.§case §])
               {
               }
               this.§@l§[_loc6_.§case §] = _loc4_[_loc6_.§case §] = _loc6_;
            }
            _loc5_--;
         }
         this.§-d§(_loc4_);
      }
      
      protected function §-d§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §]>§).§<>§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§2!;§.§8,§);
               }
               this.§[U§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §#!G§.§[!<§(levelNameResults[1].toLowerCase(),§3!H§.§"+§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§?C§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§ s§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.static(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§`!&§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§`!9§(fileName);
            }
         }
         if(this.§!o§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §`!9§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§!o§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§,n§.push(_loc2_);
         if(this.§,n§.length == 1)
         {
            this.§<T§ = new Loader();
            this.§<T§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§9G§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§<T§.loadBytes(this.§@!H§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §9G§(param1:Event) : void
      {
         this.§<T§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§9G§);
         var _loc2_:XML = this.§,n§.shift();
         §[;§.§!#§(this.§<T§,_loc2_.Library[0]);
         if(this.§,n§.length > 0)
         {
            this.§<T§ = new Loader();
            this.§<T§.contentLoaderInfo.addEventListener(Event.INIT,this.§9G§);
            this.§<T§.loadBytes(this.§@!H§(this.§,n§[0].Library.@swf));
         }
         this.§!!5§();
      }
      
      private function §`!&§(param1:String) : void
      {
         var _loc2_:Object = §>o§.§<@§(this.getFileAsString(param1));
         §'!@§.§+g§(_loc2_);
      }
      
      protected function static(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §&K§.§%u§(_loc2_);
      }
      
      protected function § s§(param1:String) : void
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
                  if(§@l§[_loc13_] == null)
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
            §2r§.§!3§(new §>!B§(_loc2_,_loc4_,param1.bitmapData));
            §!!5§();
         };
         ++this.§!o§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§@=§(imagePath,onComplete);
      }
      
      protected function §!!5§() : void
      {
         --this.§!o§;
         if(this.§!o§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §?C§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§&!E§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§@=§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §[U§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §2r§.§!3§(new spriteSheetClass(dataObject,param1.bitmapData));
            §!!5§();
         };
         ++this.§!o§;
         if(dataObject.image)
         {
            spriteSheetClass = §]z§;
            this.§@=§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §+!7§;
            this.§@=§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §?!3§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§;o§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§-A§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§-A§() * 255);
            _loc2_ -= int(this.§-A§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§-A§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §-A§() : Number
      {
         this.§;o§ ^= this.§;o§ << 21;
         this.§;o§ ^= this.§;o§ >>> 35;
         this.§;o§ ^= this.§;o§ << 4;
         if(this.§;o§ < 0)
         {
            this.§;o§ &= 2147483647;
         }
         return this.§;o§ / 2147483647;
      }
   }
}
