package §%§
{
   import § !L§.§"a§;
   import § !L§.§7h§;
   import §"!@§.§&;§;
   import §"!@§.§3!+§;
   import §'!K§.§+! §;
   import §'b§.§"^§;
   import §'b§.§#u§;
   import §'b§.§'M§;
   import §'b§.§3!Q§;
   import §'b§.§]!5§;
   import §+i§.§5N§;
   import §0!F§.§0c§;
   import §0!F§.§1!J§;
   import §0!F§.§7A§;
   import §^![§.§#!F§;
   import §^![§.§;8§;
   import §`!B§.§&?§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §<;§ extends EventDispatcher implements §;8§
   {
       
      
      protected var §-T§:int;
      
      protected var §4!C§:Object;
      
      protected var §[,§:int = 0;
      
      protected var §4!5§:§'M§;
      
      protected var §"!X§:Vector.<XML>;
      
      protected var §5§:Loader;
      
      public function §<;§()
      {
         this.§4!C§ = {};
         this.§"!X§ = new Vector.<XML>();
         super();
         this.§4!5§ = new §'M§();
      }
      
      public function get §`'§() : §"^§
      {
         return this.§4!5§;
      }
      
      public function get §^;§() : Boolean
      {
         return this.§[,§ == 0;
      }
      
      public function dispose() : void
      {
         this.§4!5§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§4!C§[param1] as §"a§).§<5§(false);
      }
      
      public function §'[§(param1:String) : ByteArray
      {
         return (this.§4!C§[param1] as §"a§).content;
      }
      
      public function final(param1:String, param2:Function) : void
      {
         return §1!J§.§=5§(this.§'[§(param1),param2);
      }
      
      public function §+!#§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§"a§ = null;
         if(param2)
         {
            this.§,!V§(param1);
         }
         var _loc3_:§7h§ = new §7h§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§`W§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§+!&§(_loc5_)).§+!N§.substr(-1) != "/")
            {
               if(!this.§4!C§[_loc6_.§+!N§])
               {
               }
               this.§4!C§[_loc6_.§+!N§] = _loc4_[_loc6_.§+!N§] = _loc6_;
            }
            _loc5_--;
         }
         this.§2D§(_loc4_);
      }
      
      protected function §2D§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §"a§).§<5§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§0c§.§,2§);
               }
               this.§2S§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §3!+§.§7!F§(levelNameResults[1].toLowerCase(),§&;§.§@! §(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§0![§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§&e§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§3`§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§ !,§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§3U§(fileName);
            }
         }
         if(this.§[,§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §3U§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§[,§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§"!X§.push(_loc2_);
         if(this.§"!X§.length == 1)
         {
            this.§5§ = new Loader();
            this.§5§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ Z§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§5§.loadBytes(this.§'[§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function § Z§(param1:Event) : void
      {
         this.§5§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ Z§);
         var _loc2_:XML = this.§"!X§.shift();
         §#!F§.§8!+§(this.§5§,_loc2_.Library[0]);
         if(this.§"!X§.length > 0)
         {
            this.§5§ = new Loader();
            this.§5§.contentLoaderInfo.addEventListener(Event.INIT,this.§ Z§);
            this.§5§.loadBytes(this.§'[§(this.§"!X§[0].Library.@swf));
         }
         this.§9!S§();
      }
      
      private function § !,§(param1:String) : void
      {
         var _loc2_:Object = §7A§.§7!1§(this.getFileAsString(param1));
         §5N§.§=!I§(_loc2_);
      }
      
      protected function §3`§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §&?§.§'!2§(_loc2_);
      }
      
      protected function §&e§(param1:String) : void
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
                  if(§4!C§[_loc13_] == null)
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
            §4!5§.§5M§(new §#u§(_loc2_,_loc4_,param1.bitmapData));
            §9!S§();
         };
         ++this.§[,§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.final(imagePath,onComplete);
      }
      
      protected function §9!S§() : void
      {
         --this.§[,§;
         if(this.§[,§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §0![§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §+! §.§`!E§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.final("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §2S§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §4!5§.§5M§(new spriteSheetClass(dataObject,param1.bitmapData));
            §9!S§();
         };
         ++this.§[,§;
         if(dataObject.image)
         {
            spriteSheetClass = §3!Q§;
            this.final("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §]!5§;
            this.final("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §,!V§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§-T§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+e§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+e§() * 255);
            _loc2_ -= int(this.§+e§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§+e§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §+e§() : Number
      {
         this.§-T§ ^= this.§-T§ << 21;
         this.§-T§ ^= this.§-T§ >>> 35;
         this.§-T§ ^= this.§-T§ << 4;
         if(this.§-T§ < 0)
         {
            this.§-T§ &= 2147483647;
         }
         return this.§-T§ / 2147483647;
      }
   }
}
