package §+o§
{
   import §&L§.§%v§;
   import §&L§.§5!&§;
   import §-X§.§2&§;
   import §-X§.§5!F§;
   import §2l§.§#!#§;
   import §6p§.§3n§;
   import §7x§.§ 5§;
   import §7x§.§`!Z§;
   import §9I§.§!h§;
   import §9I§.§<!T§;
   import §9I§.§=!8§;
   import §[!'§.§6!'§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import §in§.§+!-§;
   import §in§.§6!P§;
   import §in§.§6!V§;
   import §in§.§@!"§;
   import §in§.§]!K§;
   
   public class §!o§ extends EventDispatcher implements §%v§
   {
       
      
      protected var §@!2§:int;
      
      protected var §?§:Object;
      
      protected var §0=§:int = 0;
      
      protected var §;!+§:§@!"§;
      
      protected var §5!,§:Vector.<XML>;
      
      protected var §3!]§:Loader;
      
      public function §!o§()
      {
         this.§?§ = {};
         this.§5!,§ = new Vector.<XML>();
         super();
         this.§;!+§ = new §@!"§();
      }
      
      public function get §4!2§() : §]!K§
      {
         return this.§;!+§;
      }
      
      public function get §8B§() : Boolean
      {
         return this.§0=§ == 0;
      }
      
      public function dispose() : void
      {
         this.§;!+§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§?§[param1] as § 5§).§37§(false);
      }
      
      public function §?7§(param1:String) : ByteArray
      {
         return (this.§?§[param1] as § 5§).content;
      }
      
      public function §8P§(param1:String, param2:Function) : void
      {
         return §!h§.§7n§(this.§?7§(param1),param2);
      }
      
      public function §5!X§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§ 5§ = null;
         if(param2)
         {
            this.§<!1§(param1);
         }
         var _loc3_:§`!Z§ = new §`!Z§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§+!C§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§#!d§(_loc5_)).§!'§.substr(-1) != "/")
            {
               if(!this.§?§[_loc6_.§!'§])
               {
               }
               this.§?§[_loc6_.§!'§] = _loc4_[_loc6_.§!'§] = _loc6_;
            }
            _loc5_--;
         }
         this.§0n§(_loc4_);
      }
      
      protected function §0n§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as § 5§).§37§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§=!8§.§ k§);
               }
               this.§?%§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §2&§.§'!^§(levelNameResults[1].toLowerCase(),§5!F§.§[!!§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§&v§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§?F§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§6!_§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§5!D§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§-!R§(fileName);
            }
         }
         if(this.§0=§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §-!R§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§0=§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§5!,§.push(_loc2_);
         if(this.§5!,§.length == 1)
         {
            this.§3!]§ = new Loader();
            this.§3!]§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§9!7§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§3!]§.loadBytes(this.§?7§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §9!7§(param1:Event) : void
      {
         this.§3!]§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§9!7§);
         var _loc2_:XML = this.§5!,§.shift();
         §5!&§.§<x§(this.§3!]§,_loc2_.Library[0]);
         if(this.§5!,§.length > 0)
         {
            this.§3!]§ = new Loader();
            this.§3!]§.contentLoaderInfo.addEventListener(Event.INIT,this.§9!7§);
            this.§3!]§.loadBytes(this.§?7§(this.§5!,§[0].Library.@swf));
         }
         this.§2F§();
      }
      
      private function §5!D§(param1:String) : void
      {
         var _loc2_:Object = §<!T§.§'!a§(this.getFileAsString(param1));
         §3n§.§+F§(_loc2_);
      }
      
      protected function §6!_§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §#!#§.§ !Z§(_loc2_);
      }
      
      protected function §?F§(param1:String) : void
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
                  if(§?§[_loc13_] == null)
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
            §;!+§.§+!b§(new §+!-§(_loc2_,_loc4_,param1.bitmapData));
            §2F§();
         };
         ++this.§0=§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§8P§(imagePath,onComplete);
      }
      
      protected function §2F§() : void
      {
         --this.§0=§;
         if(this.§0=§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §&v§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §6!'§.§[q§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§8P§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §?%§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §;!+§.§+!b§(new spriteSheetClass(dataObject,param1.bitmapData));
            §2F§();
         };
         ++this.§0=§;
         if(dataObject.image)
         {
            spriteSheetClass = §6!P§;
            this.§8P§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §6!V§;
            this.§8P§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §<!1§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§@!2§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+!E§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§+!E§() * 255);
            _loc2_ -= int(this.§+!E§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§+!E§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §+!E§() : Number
      {
         this.§@!2§ ^= this.§@!2§ << 21;
         this.§@!2§ ^= this.§@!2§ >>> 35;
         this.§@!2§ ^= this.§@!2§ << 4;
         if(this.§@!2§ < 0)
         {
            this.§@!2§ &= 2147483647;
         }
         return this.§@!2§ / 2147483647;
      }
   }
}
