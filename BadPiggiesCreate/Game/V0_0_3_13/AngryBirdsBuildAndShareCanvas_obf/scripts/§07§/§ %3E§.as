package §07§
{
   import §!l§.§<!"§;
   import §!l§.§?!a§;
   import §,!!§.§0!h§;
   import §,!!§.§0v§;
   import §,!!§.§3!#§;
   import §0!w§.§2"8§;
   import §0s§.§8!z§;
   import §0s§.§];§;
   import §6g§.§7k§;
   import §6g§.§@"#§;
   import §>0§.§8" §;
   import §@R§.§!!P§;
   import §@R§.§1!A§;
   import §@R§.§13§;
   import §@R§.§6`§;
   import §@R§.§`!?§;
   import §`"2§.§6L§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § >§ extends EventDispatcher implements §?!a§
   {
       
      
      protected var §for §:int;
      
      protected var §?!y§:Object;
      
      protected var §@-§:int = 0;
      
      protected var §'!p§:§13§;
      
      protected var §[!@§:Vector.<XML>;
      
      protected var §+!v§:Loader;
      
      public function § >§()
      {
         this.§?!y§ = {};
         this.§[!@§ = new Vector.<XML>();
         super();
         this.§'!p§ = new §13§();
      }
      
      public function get §;&§() : §6`§
      {
         return this.§'!p§;
      }
      
      public function get §8!"§() : Boolean
      {
         return this.§@-§ == 0;
      }
      
      public function dispose() : void
      {
         this.§'!p§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§?!y§[param1] as §7k§).§`2§(false);
      }
      
      public function §%c§(param1:String) : ByteArray
      {
         return (this.§?!y§[param1] as §7k§).content;
      }
      
      public function § !v§(param1:String, param2:Function) : void
      {
         return §3!#§.§^!o§(this.§%c§(param1),param2);
      }
      
      public function §^!7§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§7k§ = null;
         if(param2)
         {
            this.§-G§(param1);
         }
         var _loc3_:§@"#§ = new §@"#§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§[m§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§]!y§(_loc5_)).§"!n§.substr(-1) != "/")
            {
               if(!this.§?!y§[_loc6_.§"!n§])
               {
               }
               this.§?!y§[_loc6_.§"!n§] = _loc4_[_loc6_.§"!n§] = _loc6_;
            }
            _loc5_--;
         }
         this.§`!%§(_loc4_);
      }
      
      protected function §`!%§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §7k§).§`2§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§0v§.§0!j§);
               }
               this.§^"<§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §8!z§.§'!N§(levelNameResults[1].toLowerCase(),§];§.§8k§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§]x§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§1@§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§'K§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§6!O§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§ !H§(fileName);
            }
         }
         if(this.§@-§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function § !H§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§@-§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§[!@§.push(_loc2_);
         if(this.§[!@§.length == 1)
         {
            this.§+!v§ = new Loader();
            this.§+!v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?!,§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§+!v§.loadBytes(this.§%c§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §?!,§(param1:Event) : void
      {
         this.§+!v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?!,§);
         var _loc2_:XML = this.§[!@§.shift();
         §<!"§.§ !A§(this.§+!v§,_loc2_.Library[0]);
         if(this.§[!@§.length > 0)
         {
            this.§+!v§ = new Loader();
            this.§+!v§.contentLoaderInfo.addEventListener(Event.INIT,this.§?!,§);
            this.§+!v§.loadBytes(this.§%c§(this.§[!@§[0].Library.@swf));
         }
         this.§6!N§();
      }
      
      private function §6!O§(param1:String) : void
      {
         var _loc2_:Object = §0!h§.§8J§(this.getFileAsString(param1));
         §2"8§.§,v§(_loc2_);
      }
      
      protected function §'K§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §6L§.§+!-§(_loc2_);
      }
      
      protected function §1@§(param1:String) : void
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
                  if(§?!y§[_loc13_] == null)
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
            §'!p§.§<!C§(new §!!P§(_loc2_,_loc4_,param1.bitmapData));
            §6!N§();
         };
         ++this.§@-§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§ !v§(imagePath,onComplete);
      }
      
      protected function §6!N§() : void
      {
         --this.§@-§;
         if(this.§@-§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §]x§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §8" §.§0!>§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§ !v§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §^"<§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §'!p§.§<!C§(new spriteSheetClass(dataObject,param1.bitmapData));
            §6!N§();
         };
         ++this.§@-§;
         if(dataObject.image)
         {
            spriteSheetClass = §1!A§;
            this.§ !v§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §`!?§;
            this.§ !v§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §-G§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§for § = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§5n§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§5n§() * 255);
            _loc2_ -= int(this.§5n§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§5n§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §5n§() : Number
      {
         this.§for § ^= this.§for § << 21;
         this.§for § ^= this.§for § >>> 35;
         this.§for § ^= this.§for § << 4;
         if(this.§for § < 0)
         {
            this.§for § &= 2147483647;
         }
         return this.§for § / 2147483647;
      }
   }
}
