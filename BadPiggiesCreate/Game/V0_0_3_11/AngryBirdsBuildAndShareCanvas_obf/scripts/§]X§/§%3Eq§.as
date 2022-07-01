package §]X§
{
   import §!-§.§%!#§;
   import §#!+§.§[E§;
   import §#!+§.§^!§;
   import §+%§.§+"%§;
   import §+%§.§5!F§;
   import §2i§.§-"+§;
   import §2i§.§6,§;
   import §2i§.§7x§;
   import §4%§.§5P§;
   import §4%§.§9X§;
   import §4%§.§=#§;
   import §4%§.§>!2§;
   import §4%§.§@f§;
   import §=!#§.§-!W§;
   import §=!#§.§]f§;
   import §[_§.§%!X§;
   import §[n§.§`c§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §>q§ extends EventDispatcher implements §^!§
   {
       
      
      protected var § !X§:int;
      
      protected var §0;§:Object;
      
      protected var §"!`§:int = 0;
      
      protected var §[;§:§>!2§;
      
      protected var §^L§:Vector.<XML>;
      
      protected var §[!b§:Loader;
      
      public function §>q§()
      {
         this.§0;§ = {};
         this.§^L§ = new Vector.<XML>();
         super();
         this.§[;§ = new §>!2§();
      }
      
      public function get §7"!§() : §5P§
      {
         return this.§[;§;
      }
      
      public function get §`$§() : Boolean
      {
         return this.§"!`§ == 0;
      }
      
      public function dispose() : void
      {
         this.§[;§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§0;§[param1] as §-!W§).§="1§(false);
      }
      
      public function §!>§(param1:String) : ByteArray
      {
         return (this.§0;§[param1] as §-!W§).content;
      }
      
      public function §4!O§(param1:String, param2:Function) : void
      {
         return §-"+§.§4Q§(this.§!>§(param1),param2);
      }
      
      public function §"i§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§-!W§ = null;
         if(param2)
         {
            this.§@8§(param1);
         }
         var _loc3_:§]f§ = new §]f§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§^u§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§9!Y§(_loc5_)).§<i§.substr(-1) != "/")
            {
               if(!this.§0;§[_loc6_.§<i§])
               {
               }
               this.§0;§[_loc6_.§<i§] = _loc4_[_loc6_.§<i§] = _loc6_;
            }
            _loc5_--;
         }
         this.§2!N§(_loc4_);
      }
      
      protected function §2!N§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §-!W§).§="1§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§6,§.§ e§);
               }
               this.§0T§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §+"%§.§9!a§(levelNameResults[1].toLowerCase(),§5!F§.§42§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§1""§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§`!,§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§ 3§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§,!z§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§[!u§(fileName);
            }
         }
         if(this.§"!`§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §[!u§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§"!`§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§^L§.push(_loc2_);
         if(this.§^L§.length == 1)
         {
            this.§[!b§ = new Loader();
            this.§[!b§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ get§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§[!b§.loadBytes(this.§!>§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function § get§(param1:Event) : void
      {
         this.§[!b§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ get§);
         var _loc2_:XML = this.§^L§.shift();
         §[E§.§ u§(this.§[!b§,_loc2_.Library[0]);
         if(this.§^L§.length > 0)
         {
            this.§[!b§ = new Loader();
            this.§[!b§.contentLoaderInfo.addEventListener(Event.INIT,this.§ get§);
            this.§[!b§.loadBytes(this.§!>§(this.§^L§[0].Library.@swf));
         }
         this.§?"$§();
      }
      
      private function §,!z§(param1:String) : void
      {
         var _loc2_:Object = §7x§.§#!#§(this.getFileAsString(param1));
         §%!#§.§]t§(_loc2_);
      }
      
      protected function § 3§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §%!X§.§,!Y§(_loc2_);
      }
      
      protected function §`!,§(param1:String) : void
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
                  if(§0;§[_loc13_] == null)
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
            §[;§.§<!"§(new §9X§(_loc2_,_loc4_,param1.bitmapData));
            §?"$§();
         };
         ++this.§"!`§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§4!O§(imagePath,onComplete);
      }
      
      protected function §?"$§() : void
      {
         --this.§"!`§;
         if(this.§"!`§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §1""§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §`c§.§@!T§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§4!O§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §0T§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §[;§.§<!"§(new spriteSheetClass(dataObject,param1.bitmapData));
            §?"$§();
         };
         ++this.§"!`§;
         if(dataObject.image)
         {
            spriteSheetClass = §=#§;
            this.§4!O§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §@f§;
            this.§4!O§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §@8§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§ !X§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§7"3§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§7"3§() * 255);
            _loc2_ -= int(this.§7"3§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§7"3§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §7"3§() : Number
      {
         this.§ !X§ ^= this.§ !X§ << 21;
         this.§ !X§ ^= this.§ !X§ >>> 35;
         this.§ !X§ ^= this.§ !X§ << 4;
         if(this.§ !X§ < 0)
         {
            this.§ !X§ &= 2147483647;
         }
         return this.§ !X§ / 2147483647;
      }
   }
}
