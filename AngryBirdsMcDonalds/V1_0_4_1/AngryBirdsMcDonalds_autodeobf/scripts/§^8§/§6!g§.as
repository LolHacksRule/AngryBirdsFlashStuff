package §^8§
{
   import §#!q§.§!!"§;
   import §#!q§.§4^§;
   import §#!q§.§6!>§;
   import §-!F§.§2[§;
   import §-!F§.§`+§;
   import §-$§.§!!h§;
   import §-$§.§1!2§;
   import §1f§.§'t§;
   import §1f§.§6!#§;
   import §1f§.§7!a§;
   import §1f§.§[!f§;
   import §1f§.dynamic;
   import §5!M§.§!k§;
   import §7! §.§3!<§;
   import §7!#§.§"!8§;
   import §7!#§.§@2§;
   import §?l§.§?x§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §6!g§ extends EventDispatcher implements §1!2§
   {
       
      
      protected var §!I§:int;
      
      protected var §1X§:Object;
      
      protected var § !n§:int = 0;
      
      protected var §!!T§:dynamic;
      
      protected var §0!N§:Vector.<XML>;
      
      protected var §@![§:Loader;
      
      public function §6!g§()
      {
         this.§1X§ = {};
         this.§0!N§ = new Vector.<XML>();
         super();
         this.§!!T§ = new dynamic();
      }
      
      public function get §>!Y§() : §'t§
      {
         return this.§!!T§;
      }
      
      public function get §!!>§() : Boolean
      {
         return this.§ !n§ == 0;
      }
      
      public function dispose() : void
      {
         this.§!!T§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1X§[param1] as §"!8§).§4!j§(false);
      }
      
      public function §[!e§(param1:String) : ByteArray
      {
         return (this.§1X§[param1] as §"!8§).content;
      }
      
      public function §-!L§(param1:String, param2:Function) : void
      {
         return §4^§.§8<§(this.§[!e§(param1),param2);
      }
      
      public function §>p§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§"!8§ = null;
         if(param2)
         {
            this.§2q§(param1);
         }
         var _loc3_:§@2§ = new §@2§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§5%§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§1!k§(_loc5_)).§;!]§.substr(-1) != "/")
            {
               if(!this.§1X§[_loc6_.§;!]§])
               {
               }
               this.§1X§[_loc6_.§;!]§] = _loc4_[_loc6_.§;!]§] = _loc6_;
            }
            _loc5_--;
         }
         this.§]!4§(_loc4_);
      }
      
      protected function §]!4§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §"!8§).§4!j§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§!!"§.§[!<§);
               }
               this.§,!Z§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §2[§.§8M§(levelNameResults[1].toLowerCase(),§`+§.§,!5§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§4!8§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§^!X§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§,!a§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§"!a§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§8!A§(fileName);
            }
         }
         if(this.§ !n§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §8!A§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§ !n§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§0!N§.push(_loc2_);
         if(this.§0!N§.length == 1)
         {
            this.§@![§ = new Loader();
            this.§@![§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^o§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§@![§.loadBytes(this.§[!e§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §^o§(param1:Event) : void
      {
         this.§@![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^o§);
         var _loc2_:XML = this.§0!N§.shift();
         §!!h§.§?!%§(this.§@![§,_loc2_.Library[0]);
         if(this.§0!N§.length > 0)
         {
            this.§@![§ = new Loader();
            this.§@![§.contentLoaderInfo.addEventListener(Event.INIT,this.§^o§);
            this.§@![§.loadBytes(this.§[!e§(this.§0!N§[0].Library.@swf));
         }
         this.§03§();
      }
      
      private function §"!a§(param1:String) : void
      {
         var _loc2_:Object = §6!>§.§6!N§(this.getFileAsString(param1));
         §?x§.§ V§(_loc2_);
      }
      
      protected function §,!a§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §3!<§.§;!O§(_loc2_);
      }
      
      protected function §^!X§(param1:String) : void
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
                  if(§1X§[_loc13_] == null)
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
            §!!T§.§3!?§(new §7!a§(_loc2_,_loc4_,param1.bitmapData));
            §03§();
         };
         ++this.§ !n§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§-!L§(imagePath,onComplete);
      }
      
      protected function §03§() : void
      {
         --this.§ !n§;
         if(this.§ !n§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §4!8§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §!k§.§^!o§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§-!L§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §,!Z§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §!!T§.§3!?§(new spriteSheetClass(dataObject,param1.bitmapData));
            §03§();
         };
         ++this.§ !n§;
         if(dataObject.image)
         {
            spriteSheetClass = §[!f§;
            this.§-!L§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §6!#§;
            this.§-!L§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §2q§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§!I§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§1!@§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§1!@§() * 255);
            _loc2_ -= int(this.§1!@§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§1!@§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §1!@§() : Number
      {
         this.§!I§ ^= this.§!I§ << 21;
         this.§!I§ ^= this.§!I§ >>> 35;
         this.§!I§ ^= this.§!I§ << 4;
         if(this.§!I§ < 0)
         {
            this.§!I§ &= 2147483647;
         }
         return this.§!I§ / 2147483647;
      }
   }
}
