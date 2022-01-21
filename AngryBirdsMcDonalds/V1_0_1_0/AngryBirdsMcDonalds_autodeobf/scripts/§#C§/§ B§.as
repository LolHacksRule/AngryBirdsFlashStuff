package §#C§
{
   import §%!a§.§%!T§;
   import §&[§.§3!I§;
   import §,!i§.§&7§;
   import §,!i§.§-!Y§;
   import §,!i§.§6k§;
   import §,!i§.§<!>§;
   import §,!i§.§^F§;
   import §,0§.§-v§;
   import §1!D§.§'p§;
   import §1!D§.§[d§;
   import §1!D§.§^!Q§;
   import §]L§.§9%§;
   import §]L§.§@!O§;
   import §`!d§.§0%§;
   import §`!d§.§7!§;
   import §else §.§#!I§;
   import §else §.§3L§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § B§ extends EventDispatcher implements §@!O§
   {
       
      
      protected var §8!%§:int;
      
      protected var §2F§:Object;
      
      protected var §8!l§:int = 0;
      
      protected var §6o§:§<!>§;
      
      protected var §#!B§:Vector.<XML>;
      
      protected var §%!c§:Loader;
      
      public function § B§()
      {
         this.§2F§ = {};
         this.§#!B§ = new Vector.<XML>();
         super();
         this.§6o§ = new §<!>§();
      }
      
      public function get §-P§() : §6k§
      {
         return this.§6o§;
      }
      
      public function get §0H§() : Boolean
      {
         return this.§8!l§ == 0;
      }
      
      public function dispose() : void
      {
         this.§6o§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§2F§[param1] as §#!I§).§"!E§(false);
      }
      
      public function §;H§(param1:String) : ByteArray
      {
         return (this.§2F§[param1] as §#!I§).content;
      }
      
      public function §-<§(param1:String, param2:Function) : void
      {
         return §[d§.§7=§(this.§;H§(param1),param2);
      }
      
      public function §#r§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§#!I§ = null;
         if(param2)
         {
            this.§+G§(param1);
         }
         var _loc3_:§3L§ = new §3L§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§]!7§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§3-§(_loc5_)).§^!R§.substr(-1) != "/")
            {
               if(!this.§2F§[_loc6_.§^!R§])
               {
               }
               this.§2F§[_loc6_.§^!R§] = _loc4_[_loc6_.§^!R§] = _loc6_;
            }
            _loc5_--;
         }
         this.§@!"§(_loc4_);
      }
      
      protected function §@!"§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §#!I§).§"!E§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§'p§.§^R§);
               }
               this.§''§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §7!§.§,B§(levelNameResults[1].toLowerCase(),§0%§.§ j§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§'%§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§1!3§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§!P§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§]v§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§^f§(fileName);
            }
         }
         if(this.§8!l§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §^f§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§8!l§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§#!B§.push(_loc2_);
         if(this.§#!B§.length == 1)
         {
            this.§%!c§ = new Loader();
            this.§%!c§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§7q§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§%!c§.loadBytes(this.§;H§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §7q§(param1:Event) : void
      {
         this.§%!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7q§);
         var _loc2_:XML = this.§#!B§.shift();
         §9%§.§0<§(this.§%!c§,_loc2_.Library[0]);
         if(this.§#!B§.length > 0)
         {
            this.§%!c§ = new Loader();
            this.§%!c§.contentLoaderInfo.addEventListener(Event.INIT,this.§7q§);
            this.§%!c§.loadBytes(this.§;H§(this.§#!B§[0].Library.@swf));
         }
         this.§9I§();
      }
      
      private function §]v§(param1:String) : void
      {
         var _loc2_:Object = §^!Q§.§3m§(this.getFileAsString(param1));
         §%!T§.§'!o§(_loc2_);
      }
      
      protected function §!P§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §3!I§.§%@§(_loc2_);
      }
      
      protected function §1!3§(param1:String) : void
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
                  if(§2F§[_loc13_] == null)
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
            §6o§.§+!W§(new §^F§(_loc2_,_loc4_,param1.bitmapData));
            §9I§();
         };
         ++this.§8!l§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§-<§(imagePath,onComplete);
      }
      
      protected function §9I§() : void
      {
         --this.§8!l§;
         if(this.§8!l§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §'%§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §-v§.§#!L§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§-<§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §''§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §6o§.§+!W§(new spriteSheetClass(dataObject,param1.bitmapData));
            §9I§();
         };
         ++this.§8!l§;
         if(dataObject.image)
         {
            spriteSheetClass = §&7§;
            this.§-<§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §-!Y§;
            this.§-<§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §+G§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§8!%§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§#,§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§#,§() * 255);
            _loc2_ -= int(this.§#,§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§#,§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §#,§() : Number
      {
         this.§8!%§ ^= this.§8!%§ << 21;
         this.§8!%§ ^= this.§8!%§ >>> 35;
         this.§8!%§ ^= this.§8!%§ << 4;
         if(this.§8!%§ < 0)
         {
            this.§8!%§ &= 2147483647;
         }
         return this.§8!%§ / 2147483647;
      }
   }
}
