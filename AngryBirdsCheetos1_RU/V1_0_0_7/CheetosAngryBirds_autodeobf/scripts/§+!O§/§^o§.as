package §+!O§
{
   import §"k§.§4w§;
   import §'O§.§">§;
   import §'O§.§'e§;
   import §'O§.§='§;
   import §'r§.§?n§;
   import §0H§.§0!&§;
   import §0H§.§7M§;
   import §3P§.§-!3§;
   import §3P§.§3v§;
   import §4c§.§4U§;
   import §6-§.§&!F§;
   import §6-§.§&_§;
   import §6-§.§2q§;
   import §6-§.§3R§;
   import §6-§.§5!U§;
   import §=!]§.§7!#§;
   import §=!]§.§8!B§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §^o§ extends EventDispatcher implements §3v§
   {
       
      
      protected var §>!@§:int;
      
      protected var §"w§:Object;
      
      protected var §6!A§:int = 0;
      
      protected var §2?§:§2q§;
      
      protected var §6y§:Vector.<XML>;
      
      protected var §`!S§:Loader;
      
      public function §^o§()
      {
         this.§"w§ = {};
         this.§6y§ = new Vector.<XML>();
         super();
         this.§2?§ = new §2q§();
      }
      
      public function get §3!4§() : §3R§
      {
         return this.§2?§;
      }
      
      public function get §-!<§() : Boolean
      {
         return this.§6!A§ == 0;
      }
      
      public function dispose() : void
      {
         this.§2?§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§"w§[param1] as §7!#§).§?D§(false);
      }
      
      public function §58§(param1:String) : ByteArray
      {
         return (this.§"w§[param1] as §7!#§).content;
      }
      
      public function §3p§(param1:String, param2:Function) : void
      {
         return §">§.§25§(this.§58§(param1),param2);
      }
      
      public function §#P§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§7!#§ = null;
         if(param2)
         {
            this.§?v§(param1);
         }
         var _loc3_:§8!B§ = new §8!B§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§<s§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§1>§(_loc5_)).§ n§.substr(-1) != "/")
            {
               if(!this.§"w§[_loc6_.§ n§])
               {
               }
               this.§"w§[_loc6_.§ n§] = _loc4_[_loc6_.§ n§] = _loc6_;
            }
            _loc5_--;
         }
         this.§9!3§(_loc4_);
      }
      
      protected function §9!3§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §7!#§).§?D§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§='§.§-B§);
               }
               this.§1!8§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §7M§.§`!Y§(levelNameResults[1].toLowerCase(),§0!&§.§@c§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§4K§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§0t§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§'X§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§0!T§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§,!I§(fileName);
            }
         }
         if(this.§6!A§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §,!I§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§6!A§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§6y§.push(_loc2_);
         if(this.§6y§.length == 1)
         {
            this.§`!S§ = new Loader();
            this.§`!S§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!y§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§`!S§.loadBytes(this.§58§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §!y§(param1:Event) : void
      {
         this.§`!S§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!y§);
         var _loc2_:XML = this.§6y§.shift();
         §-!3§.§8!T§(this.§`!S§,_loc2_.Library[0]);
         if(this.§6y§.length > 0)
         {
            this.§`!S§ = new Loader();
            this.§`!S§.contentLoaderInfo.addEventListener(Event.INIT,this.§!y§);
            this.§`!S§.loadBytes(this.§58§(this.§6y§[0].Library.@swf));
         }
         this.§-`§();
      }
      
      private function §0!T§(param1:String) : void
      {
         var _loc2_:Object = §'e§.§7Z§(this.getFileAsString(param1));
         §?n§.§!I§(_loc2_);
      }
      
      protected function §'X§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §4w§.§^!F§(_loc2_);
      }
      
      protected function §0t§(param1:String) : void
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
                  if(§"w§[_loc13_] == null)
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
            §2?§.§^a§(new §5!U§(_loc2_,_loc4_,param1.bitmapData));
            §-`§();
         };
         ++this.§6!A§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§3p§(imagePath,onComplete);
      }
      
      protected function §-`§() : void
      {
         --this.§6!A§;
         if(this.§6!A§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §4K§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §4U§.§^!D§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§3p§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §1!8§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §2?§.§^a§(new spriteSheetClass(dataObject,param1.bitmapData));
            §-`§();
         };
         ++this.§6!A§;
         if(dataObject.image)
         {
            spriteSheetClass = §&_§;
            this.§3p§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §&!F§;
            this.§3p§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §?v§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§>!@§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§!![§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§!![§() * 255);
            _loc2_ -= int(this.§!![§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§!![§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §!![§() : Number
      {
         this.§>!@§ ^= this.§>!@§ << 21;
         this.§>!@§ ^= this.§>!@§ >>> 35;
         this.§>!@§ ^= this.§>!@§ << 4;
         if(this.§>!@§ < 0)
         {
            this.§>!@§ &= 2147483647;
         }
         return this.§>!@§ / 2147483647;
      }
   }
}
