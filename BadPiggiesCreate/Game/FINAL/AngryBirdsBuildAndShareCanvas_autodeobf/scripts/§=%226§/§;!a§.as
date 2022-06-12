package §="6§
{
   import § !C§.§&4§;
   import § !C§.§>!y§;
   import §"v§.§3!w§;
   import §"v§.§9"§;
   import §%%§.§5!a§;
   import §&"5§.§4!h§;
   import §'@§.§;9§;
   import §'@§.§=![§;
   import §'@§.§]!g§;
   import §,I§.§&">§;
   import §,I§.§7!K§;
   import §,I§.§;r§;
   import §,I§.§>"9§;
   import §,I§.§`!0§;
   import §4!D§.§3!7§;
   import §4!D§.§9![§;
   import §8g§.§8s§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §;!a§ extends EventDispatcher implements §9![§
   {
       
      
      protected var §8!?§:int;
      
      protected var §1m§:Object;
      
      protected var §`"9§:int = 0;
      
      protected var §#E§:§>"9§;
      
      protected var §,!;§:Vector.<XML>;
      
      protected var §-<§:Loader;
      
      public function §;!a§()
      {
         this.§1m§ = {};
         this.§,!;§ = new Vector.<XML>();
         super();
         this.§#E§ = new §>"9§();
      }
      
      public function get §>"0§() : §7!K§
      {
         return this.§#E§;
      }
      
      public function get §2"$§() : Boolean
      {
         return this.§`"9§ == 0;
      }
      
      public function dispose() : void
      {
         this.§#E§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1m§[param1] as §>!y§).§'!G§(false);
      }
      
      public function §0f§(param1:String) : ByteArray
      {
         return (this.§1m§[param1] as §>!y§).content;
      }
      
      public function §3t§(param1:String, param2:Function) : void
      {
         return §;9§.§4W§(this.§0f§(param1),param2);
      }
      
      public function §^a§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§>!y§ = null;
         if(param2)
         {
            this.§for §(param1);
         }
         var _loc3_:§&4§ = new §&4§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§!"?§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§&!p§(_loc5_)).§8`§.substr(-1) != "/")
            {
               if(!this.§1m§[_loc6_.§8`§])
               {
               }
               this.§1m§[_loc6_.§8`§] = _loc4_[_loc6_.§8`§] = _loc6_;
            }
            _loc5_--;
         }
         this.§0!M§(_loc4_);
      }
      
      protected function §0!M§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §>!y§).§'!G§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§]!g§.§+!n§);
               }
               this.§`!%§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §3!w§.§3c§(levelNameResults[1].toLowerCase(),§9"§.§]-§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§+!'§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§[y§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§'!W§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§;-§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§`w§(fileName);
            }
         }
         if(this.§`"9§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §`w§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§`"9§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§,!;§.push(_loc2_);
         if(this.§,!;§.length == 1)
         {
            this.§-<§ = new Loader();
            this.§-<§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3r§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§-<§.loadBytes(this.§0f§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §3r§(param1:Event) : void
      {
         this.§-<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3r§);
         var _loc2_:XML = this.§,!;§.shift();
         §3!7§.§=!V§(this.§-<§,_loc2_.Library[0]);
         if(this.§,!;§.length > 0)
         {
            this.§-<§ = new Loader();
            this.§-<§.contentLoaderInfo.addEventListener(Event.INIT,this.§3r§);
            this.§-<§.loadBytes(this.§0f§(this.§,!;§[0].Library.@swf));
         }
         this.§0O§();
      }
      
      private function §;-§(param1:String) : void
      {
         var _loc2_:Object = §=![§.§<!b§(this.getFileAsString(param1));
         §5!a§.§'!5§(_loc2_);
      }
      
      protected function §'!W§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §4!h§.§!"4§(_loc2_);
      }
      
      protected function §[y§(param1:String) : void
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
                  if(§1m§[_loc13_] == null)
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
            §#E§.§5F§(new §&">§(_loc2_,_loc4_,param1.bitmapData));
            §0O§();
         };
         ++this.§`"9§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§3t§(imagePath,onComplete);
      }
      
      protected function §0O§() : void
      {
         --this.§`"9§;
         if(this.§`"9§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §+!'§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §8s§.§;!g§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§3t§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §`!%§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §#E§.§5F§(new spriteSheetClass(dataObject,param1.bitmapData));
            §0O§();
         };
         ++this.§`"9§;
         if(dataObject.image)
         {
            spriteSheetClass = §;r§;
            this.§3t§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §`!0§;
            this.§3t§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §for §(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§8!?§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>!'§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>!'§() * 255);
            _loc2_ -= int(this.§>!'§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§>!'§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §>!'§() : Number
      {
         this.§8!?§ ^= this.§8!?§ << 21;
         this.§8!?§ ^= this.§8!?§ >>> 35;
         this.§8!?§ ^= this.§8!?§ << 4;
         if(this.§8!?§ < 0)
         {
            this.§8!?§ &= 2147483647;
         }
         return this.§8!?§ / 2147483647;
      }
   }
}
