package §]'§
{
   import §!!A§.§&!-§;
   import §!!A§.§2m§;
   import §!!A§.§]!X§;
   import §#""§.§&u§;
   import §#""§.§-U§;
   import §#""§.§5#§;
   import §#""§.§^'§;
   import §#""§.§^E§;
   import §%!t§.§[![§;
   import §&l§.§'"0§;
   import §&l§.§@!i§;
   import §6!&§.§0!b§;
   import §6!&§.§1!c§;
   import §9!e§.§7,§;
   import §;!<§.§^$§;
   import §`!w§.§!!W§;
   import §`!w§.§`!Z§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §%!J§ extends EventDispatcher implements §@!i§
   {
       
      
      protected var §=T§:int;
      
      protected var §]S§:Object;
      
      protected var §;!1§:int = 0;
      
      protected var §;!l§:§^'§;
      
      protected var §2!Z§:Vector.<XML>;
      
      protected var §"!§:Loader;
      
      public function §%!J§()
      {
         this.§]S§ = {};
         this.§2!Z§ = new Vector.<XML>();
         super();
         this.§;!l§ = new §^'§();
      }
      
      public function get §#C§() : §^E§
      {
         return this.§;!l§;
      }
      
      public function get §8!d§() : Boolean
      {
         return this.§;!1§ == 0;
      }
      
      public function dispose() : void
      {
         this.§;!l§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§]S§[param1] as §`!Z§).§%!'§(false);
      }
      
      public function §"!"§(param1:String) : ByteArray
      {
         return (this.§]S§[param1] as §`!Z§).content;
      }
      
      public function §15§(param1:String, param2:Function) : void
      {
         return §]!X§.§7z§(this.§"!"§(param1),param2);
      }
      
      public function §"!s§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§`!Z§ = null;
         if(param2)
         {
            this.§]!D§(param1);
         }
         var _loc3_:§!!W§ = new §!!W§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§ !m§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§9!7§(_loc5_)).§==§.substr(-1) != "/")
            {
               if(!this.§]S§[_loc6_.§==§])
               {
               }
               this.§]S§[_loc6_.§==§] = _loc4_[_loc6_.§==§] = _loc6_;
            }
            _loc5_--;
         }
         this.§6E§(_loc4_);
      }
      
      protected function §6E§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §`!Z§).§%!'§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§2m§.§]" §);
               }
               this.§>"3§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §1!c§.§9!N§(levelNameResults[1].toLowerCase(),§0!b§.§#!s§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§%S§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§0![§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§@"2§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§3"1§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§@q§(fileName);
            }
         }
         if(this.§;!1§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §@q§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§;!1§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§2!Z§.push(_loc2_);
         if(this.§2!Z§.length == 1)
         {
            this.§"!§ = new Loader();
            this.§"!§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§6"#§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§"!§.loadBytes(this.§"!"§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §6"#§(param1:Event) : void
      {
         this.§"!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6"#§);
         var _loc2_:XML = this.§2!Z§.shift();
         §'"0§.§7!U§(this.§"!§,_loc2_.Library[0]);
         if(this.§2!Z§.length > 0)
         {
            this.§"!§ = new Loader();
            this.§"!§.contentLoaderInfo.addEventListener(Event.INIT,this.§6"#§);
            this.§"!§.loadBytes(this.§"!"§(this.§2!Z§[0].Library.@swf));
         }
         this.§4!z§();
      }
      
      private function §3"1§(param1:String) : void
      {
         var _loc2_:Object = §&!-§.§7N§(this.getFileAsString(param1));
         §7,§.§#!w§(_loc2_);
      }
      
      protected function §@"2§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §^$§.§?i§(_loc2_);
      }
      
      protected function §0![§(param1:String) : void
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
                  if(§]S§[_loc13_] == null)
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
            §;!l§.§>_§(new §&u§(_loc2_,_loc4_,param1.bitmapData));
            §4!z§();
         };
         ++this.§;!1§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§15§(imagePath,onComplete);
      }
      
      protected function §4!z§() : void
      {
         --this.§;!1§;
         if(this.§;!1§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §%S§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §[![§.§="!§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§15§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §>"3§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §;!l§.§>_§(new spriteSheetClass(dataObject,param1.bitmapData));
            §4!z§();
         };
         ++this.§;!1§;
         if(dataObject.image)
         {
            spriteSheetClass = §-U§;
            this.§15§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §5#§;
            this.§15§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §]!D§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§=T§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+L§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+L§() * 255);
            _loc2_ -= int(this.§+L§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§+L§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §+L§() : Number
      {
         this.§=T§ ^= this.§=T§ << 21;
         this.§=T§ ^= this.§=T§ >>> 35;
         this.§=T§ ^= this.§=T§ << 4;
         if(this.§=T§ < 0)
         {
            this.§=T§ &= 2147483647;
         }
         return this.§=T§ / 2147483647;
      }
   }
}
