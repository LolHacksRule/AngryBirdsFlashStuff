package §!!@§
{
   import §#U§.§ !`§;
   import §#U§.§+!X§;
   import §3!#§.§0N§;
   import §7k§.§#>§;
   import §7k§.§3!W§;
   import §7k§.§3&§;
   import §7k§.§4!L§;
   import §7k§.§8!7§;
   import §9!2§.§@o§;
   import §9g§.§64§;
   import §9g§.§<x§;
   import §="§.§`!L§;
   import §>8§.§#%§;
   import §>8§.§?2§;
   import §`!@§.§"8§;
   import §`!@§.§6=§;
   import §`!@§.§>5§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §,A§ extends EventDispatcher implements §64§
   {
       
      
      protected var §]`§:int;
      
      protected var §>$§:Object;
      
      protected var §&4§:int = 0;
      
      protected var §%!Y§:§3&§;
      
      protected var §%!-§:Vector.<XML>;
      
      protected var §3$§:Loader;
      
      public function §,A§()
      {
         this.§>$§ = {};
         this.§%!-§ = new Vector.<XML>();
         super();
         this.§%!Y§ = new §3&§();
      }
      
      public function get §6_§() : §#>§
      {
         return this.§%!Y§;
      }
      
      public function get §=S§() : Boolean
      {
         return this.§&4§ == 0;
      }
      
      public function dispose() : void
      {
         this.§%!Y§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§>$§[param1] as § !`§).§`@§(false);
      }
      
      public function §7!C§(param1:String) : ByteArray
      {
         return (this.§>$§[param1] as § !`§).content;
      }
      
      public function §7y§(param1:String, param2:Function) : void
      {
         return §6=§.§<L§(this.§7!C§(param1),param2);
      }
      
      public function §#$§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§ !`§ = null;
         if(param2)
         {
            this.§3Z§(param1);
         }
         var _loc3_:§+!X§ = new §+!X§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§7S§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§-!,§(_loc5_)).§;!F§.substr(-1) != "/")
            {
               if(!this.§>$§[_loc6_.§;!F§])
               {
               }
               this.§>$§[_loc6_.§;!F§] = _loc4_[_loc6_.§;!F§] = _loc6_;
            }
            _loc5_--;
         }
         this.§`8§(_loc4_);
      }
      
      protected function §`8§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as § !`§).§`@§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§>5§.§#!Z§);
               }
               this.§,!Z§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §?2§.§6p§(levelNameResults[1].toLowerCase(),§#%§.§%!§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§24§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§%S§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§=U§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§5m§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§!!T§(fileName);
            }
         }
         if(this.§&4§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §!!T§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§&4§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§%!-§.push(_loc2_);
         if(this.§%!-§.length == 1)
         {
            this.§3$§ = new Loader();
            this.§3$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5!N§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§3$§.loadBytes(this.§7!C§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §5!N§(param1:Event) : void
      {
         this.§3$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5!N§);
         var _loc2_:XML = this.§%!-§.shift();
         §<x§.§2D§(this.§3$§,_loc2_.Library[0]);
         if(this.§%!-§.length > 0)
         {
            this.§3$§ = new Loader();
            this.§3$§.contentLoaderInfo.addEventListener(Event.INIT,this.§5!N§);
            this.§3$§.loadBytes(this.§7!C§(this.§%!-§[0].Library.@swf));
         }
         this.§0y§();
      }
      
      private function §5m§(param1:String) : void
      {
         var _loc2_:Object = §"8§.§^!L§(this.getFileAsString(param1));
         §`!L§.§[!>§(_loc2_);
      }
      
      protected function §=U§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §@o§.§;&§(_loc2_);
      }
      
      protected function §%S§(param1:String) : void
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
                  if(§>$§[_loc13_] == null)
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
            §%!Y§.§<Q§(new §3!W§(_loc2_,_loc4_,param1.bitmapData));
            §0y§();
         };
         ++this.§&4§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§7y§(imagePath,onComplete);
      }
      
      protected function §0y§() : void
      {
         --this.§&4§;
         if(this.§&4§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §24§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §0N§.§@"§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§7y§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §,!Z§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §%!Y§.§<Q§(new spriteSheetClass(dataObject,param1.bitmapData));
            §0y§();
         };
         ++this.§&4§;
         if(dataObject.image)
         {
            spriteSheetClass = §8!7§;
            this.§7y§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §4!L§;
            this.§7y§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §3Z§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§]`§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§5@§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§5@§() * 255);
            _loc2_ -= int(this.§5@§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§5@§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §5@§() : Number
      {
         this.§]`§ ^= this.§]`§ << 21;
         this.§]`§ ^= this.§]`§ >>> 35;
         this.§]`§ ^= this.§]`§ << 4;
         if(this.§]`§ < 0)
         {
            this.§]`§ &= 2147483647;
         }
         return this.§]`§ / 2147483647;
      }
   }
}
