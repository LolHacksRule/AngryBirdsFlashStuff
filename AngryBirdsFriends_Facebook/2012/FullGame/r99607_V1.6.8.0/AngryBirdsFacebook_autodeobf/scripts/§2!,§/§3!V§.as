package §2!,§
{
   import §!!,§.§7!r§;
   import §!!,§.§7&§;
   import §!!,§.§=!"§;
   import §!!,§.§^! §;
   import §!!,§.§^!6§;
   import §"!4§.§1!m§;
   import §"!4§.§2!G§;
   import §'!>§.ParticleManager;
   import §4!r§.§0!`§;
   import §6!`§.§ "§;
   import §6!`§.§3!^§;
   import §<!<§.§2r§;
   import §<!<§.§;!C§;
   import §<!<§.§^!I§;
   import §?"<§.§#!6§;
   import §[!z§.§!"=§;
   import §[!z§.LevelManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §3!V§ extends EventDispatcher implements §2!G§
   {
       
      
      protected var §[!W§:int;
      
      protected var §9e§:Object;
      
      protected var §]!A§:int = 0;
      
      protected var §9!D§:§=!"§;
      
      protected var §6h§:Vector.<XML>;
      
      protected var §^t§:Loader;
      
      public function §3!V§()
      {
         this.§9e§ = {};
         this.§6h§ = new Vector.<XML>();
         super();
         this.§9!D§ = new §=!"§();
      }
      
      public function get §'Y§() : §7&§
      {
         return this.§9!D§;
      }
      
      public function get §-!4§() : Boolean
      {
         return this.§]!A§ == 0;
      }
      
      public function dispose() : void
      {
         this.§9!D§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§9e§[param1] as §3!^§).§!!#§(false);
      }
      
      public function §@^§(param1:String) : ByteArray
      {
         return (this.§9e§[param1] as §3!^§).content;
      }
      
      public function §`!w§(param1:String, param2:Function) : void
      {
         return §;!C§.§1!3§(this.§@^§(param1),param2);
      }
      
      public function §&!]§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§3!^§ = null;
         if(param2)
         {
            this.§""&§(param1);
         }
         var _loc3_:§ "§ = new § "§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§;M§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§2!9§(_loc5_)).§14§.substr(-1) != "/")
            {
               if(!this.§9e§[_loc6_.§14§])
               {
               }
               this.§9e§[_loc6_.§14§] = _loc4_[_loc6_.§14§] = _loc6_;
            }
            _loc5_--;
         }
         this.§[N§(_loc4_);
      }
      
      protected function §[N§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §3!^§).§!!#§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§^!I§.§50§);
               }
               this.§1a§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§>",§(levelNameResults[1].toLowerCase(),§!"=§.§&!U§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§7!y§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§9T§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§8?§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§=!@§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§@!Y§(fileName);
            }
         }
         if(this.§]!A§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §@!Y§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§]!A§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§6h§.push(_loc2_);
         if(this.§6h§.length == 1)
         {
            this.§^t§ = new Loader();
            this.§^t§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?!3§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§^t§.loadBytes(this.§@^§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §?!3§(param1:Event) : void
      {
         this.§^t§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?!3§);
         var _loc2_:XML = this.§6h§.shift();
         §1!m§.§^c§(this.§^t§,_loc2_.Library[0]);
         if(this.§6h§.length > 0)
         {
            this.§^t§ = new Loader();
            this.§^t§.contentLoaderInfo.addEventListener(Event.INIT,this.§?!3§);
            this.§^t§.loadBytes(this.§@^§(this.§6h§[0].Library.@swf));
         }
         this.§#"+§();
      }
      
      private function §=!@§(param1:String) : void
      {
         var _loc2_:Object = §2r§.§7k§(this.getFileAsString(param1));
         §0!`§.§5!g§(_loc2_);
      }
      
      protected function §8?§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §#!6§.§>!N§(_loc2_);
      }
      
      protected function §9T§(param1:String) : void
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
                  if(§9e§[_loc13_] == null)
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
            §9!D§.§6l§(new §^!6§(_loc2_,_loc4_,param1.bitmapData));
            §#"+§();
         };
         ++this.§]!A§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§`!w§(imagePath,onComplete);
      }
      
      protected function §#"+§() : void
      {
         --this.§]!A§;
         if(this.§]!A§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §7!y§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§@!A§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§`!w§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §1a§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §9!D§.§6l§(new spriteSheetClass(dataObject,param1.bitmapData));
            §#"+§();
         };
         ++this.§]!A§;
         if(dataObject.image)
         {
            spriteSheetClass = §^! §;
            this.§`!w§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §7!r§;
            this.§`!w§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §""&§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§[!W§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§?C§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§?C§() * 255);
            _loc2_ -= int(this.§?C§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§?C§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §?C§() : Number
      {
         this.§[!W§ ^= this.§[!W§ << 21;
         this.§[!W§ ^= this.§[!W§ >>> 35;
         this.§[!W§ ^= this.§[!W§ << 4;
         if(this.§[!W§ < 0)
         {
            this.§[!W§ &= 2147483647;
         }
         return this.§[!W§ / 2147483647;
      }
   }
}
